/* --------------------------------------------
 * 创建日期: 2008-07-10
 * 程序作者:
 * 版本信息: 1.0.0.0
 * 程序功能: 电子帐户取款
 * --------------------------------------------*/
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "cpack.h"
#include "errdef.h"
#include "pubdef.h"
#include "pubdb.h"
#include "pubfunc.h"
#include "dbfunc.h"
#include "busqc.h"
#include "acctrans.h"

int F846334(TRUSERID *handle,int iRequest,ST_PACK *rPack,int *pRetCode,char *szMsg)
{
	int ret=0;
	CAccTrans& ats=CAccTrans::GetInst();
	des2src(ats.trans.opercode,rPack->semp);
	ats.trans.transcode=TC_EACCDRAW;
	ret=ats.InitTrans();
	if(ret)
		return ret;			
	TRANS& trans=ats.trans;

	ST_CPACK aPack;
	ST_PACK *outPack = &(aPack.pack);
	ResetNormalCPack(&aPack,0,1);
	SetCol(handle,0);

	des2src(trans.eaccno,rPack->sbank_acc);
	if(!strlen(trans.eaccno))
		return E_INPUTNULL_ACCNO;
	//去帐户信息
	T_t_netacc eaccount;	
	memset(&eaccount,0,sizeof(eaccount));
	ret=DB_t_netacc_read_by_accno(trans.eaccno,&eaccount);
	if(ret)
	{
		writelog(LOG_ERR,"accno[%s]",trans.eaccno);
		if(DB_NOTFOUND==ret)
			return E_NOTEXIST_EACCNO;
		else 
			return E_DB_ACCOUNT_R;
	}
	if(eaccount.status[0]!=STATUS_NORMAL)
	{
		return E_EACCNO_LOGOUT;
	}	
	char seedkey[33]="";
	char inpwd_crypt[65]="";
	char inpwd_plain[65]="";
	char dbpwd_plain[65]="";
	des2src(inpwd_crypt,rPack->snote2);
	if(!strlen(inpwd_crypt))
		return E_PWD_NULL;
	ret=GetSysParaVal(GLOBLE_SYSPARA_STATIC_KEY,seedkey);
	if(ret)
		return ret;
	ret=decrypt_elec_card_pwd(0,seedkey,inpwd_crypt,inpwd_plain);
	if(ret)
		return	E_EACCPWD;
	ret=decrypt_elec_card_pwd(0,seedkey,eaccount.accpwd,dbpwd_plain);
	if(ret)
		return E_PWD_DECRYPT;
	if(strcmp(inpwd_plain,dbpwd_plain)!=0)
		return E_EACCPWD;
	if(eaccount.stoppayflag[0]=='1')
		return E_EACC_STOPPAY;
	ats.trans.inputamt=rPack->damt0;
	ats.trans.unusedamt = trans.inputamt;	
	if(amtcmp(ats.trans.inputamt,0)==0)
		return E_INPUT_AMT_NULL;
	if(amtcmp(ats.trans.inputamt,eaccount.balance)>0)
		return E_BALANCE_SHORTAGE;
	//	创建账号
	ats.trans.custid=eaccount.custid;
	ats.trans.fundtype=0;
	ret=ats.doTrans();
	if(ret)
		return ret;	
	SetCol(handle,F_LVOL0,F_LVOL8,F_SDATE3,F_SEMP,F_LWITHDRAW_FLAG,F_LSERIAL1,F_VSMESS,0);	
	des2src(outPack->sdate3,ats.trans.accdate);
	des2src(outPack->semp,trans.opercode);
	outPack->lwithdraw_flag=trans.termid;
	outPack->lserial1=trans.termseqno;
	sprintf(outPack->vsmess,"%s %s 帐户余额:%.2f元",eaccount.accname,ats.remark.c_str(),ats.trans.draccaftbal);
	des2src(trans.remark,outPack->vsmess);
	PutRow(handle,outPack,pRetCode,szMsg);
	return 0;
}
