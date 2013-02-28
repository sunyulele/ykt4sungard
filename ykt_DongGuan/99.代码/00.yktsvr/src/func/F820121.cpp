/* ----------------------------------------------------------
 * 程序名称：F820121.sqc
 * 创建日期：2004-8-3
 * 程序作者：黄勋章 
 * 版本信息：1.0.0.0
 * 程序功能：设备物理信息增加
 * ----------------------------------------------------------
 
 * 修改日期: 2004-09-08
 * 修改人员: 张汉杰
 * 修改描述: 修改规范
 * 版本信息: 1.0.0.1
 * 备注信息
 * ----------------------------------------------------------*/

#include "busqc.h"
#include <string.h>
#include <stdio.h>
#include "pubfunc.h"
#include "errdef.h"
#include "pubdb.h"
#include "dbfunc.h"
#include "dbfunc_foo.h"
#include "dictionary.h"

// 函数名: F820121.sqc
// 编程  : 黄勋章 2004-8-2 09：44
// 描述  : 设备物理信息增加
// 返回  : int 0 表示成功处理，其他作为处理失败
// 参数  : TRUSERID *handle 本请求数据的通讯请求端标识
// 参数  : ST_PACK *rPack 业务处理请求数据
// 参数  : int *iRetCode 处理结果的返回代码，0表示成功，其他就是处理失败，在本业务处理函数调用之前，已经被初始化为0
// 参数  : char *szMsg 处理结果的返回信息，在本业务处理函数调用之前，已经被初始化为空""

int F820121(TRUSERID *handle,int iRequest,ST_PACK *in_pack,int *pRetCode,char *szMsg)
{
#if 0
	T_t_phydevice aphydev;
	double dUniqNo=0;
	int ret=0;
	
	memset(&aphydev,0,sizeof(aphydev));
	
	//从cpack中取得相应字符串
	Strncpy_t(aphydev.dname,in_pack->sphone,sizeof(aphydev.dname));
	Strncpy_t(aphydev.dtype,in_pack->spager,sizeof(aphydev.dtype));
	Strncpy_t(aphydev.factory,in_pack->scert_no,sizeof(aphydev.factory));
	Strncpy_t(aphydev.comments,(char*)in_pack->usset1,sizeof(aphydev.comments));
	//设备标志从系统键值表中取得
	ret=getNewUniqNo(KEYTYPE_PHYDEVICE,&dUniqNo);
	if(ret)
	{
		*pRetCode=E_DB_SYSKEY_R;
		goto L_RETU;
	}
	aphydev.phytype =D2I(dUniqNo);
	ret=DB_t_phydevice_add(&aphydev); 
	if(ret)
	{
		*pRetCode=E_DB_PHYDEVICE_I;
		goto L_RETU;		
	}
#endif
	return 0;
	L_RETU:
		return -1;
}
