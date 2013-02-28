unit USeriPara;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UInputTemp, WVCmdReq, WorkViews, StdCtrls, ImageCtrls, ExtCtrls, UICtrls,
  WVCtrls,Db, Mask, RzEdit, RzCmboBx, RzStatus, RzPanel, Buttons, CardDll,LogFile;

type
  TfaMachinePara = class(TfaInputTemp)
    UIPnlQueryCount: TUIPanel;
    LabRecordCount: TLabel;
    WVLabel1: TWVLabel;
    rgcom: TRadioGroup;
    grpCardInfo: TGroupBox;
    edtPhyID: TRzEdit;
    edtCardNo: TRzEdit;
    edtShowNo: TRzEdit;
    lblOper: TLabel;
    edtVerNo: TRzEdit;
    edtBalack: TRzEdit;
    edtMoney: TRzEdit;
    edtTreadeNum: TRzEdit;
    edtPayCnt: TRzEdit;
    cbbBit: TRzComboBox;
    stat1: TRzStatusBar;
    rzstspn1: TRzStatusPane;
    rzstspn2: TRzStatusPane;
    RzStatusPane1: TRzStatusPane;
    RzStatusPane2: TRzStatusPane;
    RzStatusPane16: TRzStatusPane;
    RzStatusPane17: TRzStatusPane;
    RzStatusPane18: TRzStatusPane;
    RzStatusPane20: TRzStatusPane;
    RzStatusPane23: TRzStatusPane;
    grpOper: TGroupBox;
    btnOpen: TBitBtn;
    btnClose: TBitBtn;
    btnReadCard: TBitBtn;
    WVLabel2: TWVLabel;
    lblVer: TWVLabel;
    cbbpasmSeat: TComboBox;
    WVLabel3: TWVLabel;
    btnSetPasm: TBitBtn;
    edtName: TRzEdit;
    RzStatusPane5: TRzStatusPane;
    procedure btnOKClick(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure SaveToINI;
    procedure OPenFormINI;
    procedure CloseFormINI;
    procedure btnReadCardClick(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure btnKeyClick(Sender: TObject);
    procedure btnSetPasmClick(Sender: TObject);
  private
   { Private declarations }
   procedure initCardInfoPosi;
  public
    procedure Init; override;
    { Public declarations }
  end;

var
  faMachinePara: TfaMachinePara;

implementation
uses KSFrameWorks, INIFiles,KSClientConsts,KSDataDictionary,
  UCMqhCardImp,SmartCardCommon;

{$R *.DFM}

procedure TfaMachinePara.btnOKClick(Sender: TObject);
begin
  SaveToINI;
end;

procedure TfaMachinePara.Init;
var
  my: tinifile;
  tempBit: integer;
  tempCom: integer;
  sPath:string;
  cm:TCM;
  reVer,reBuildDate,desc:string;
  st:Integer;
begin
  inherited;
  ksLicence;
  tempBit:=0;
  tempCom:=0;
  lblVer.Caption := '';
  cm := nil;
  try
    try
      cm := TCM.Create;
      cm.getVersion(reVer,reBuildDate,desc);
      lblVer.Caption := reVer+'-'+rebuildDate;//+'('+desc+')';
    except
      lblVer.Caption := '读动态库版本失败';
    end;
  finally
    cm.Destroy;
  end;
  stat1.Font.Color := clBlue;
  initCardInfoPosi;
  btnOpen.Caption := '&O 打开串口';
  btnOpen.Width := 120;
  btnClose.Caption := '&C 关闭串口';
  btnClose.Width := 120;
  btnReadCard.Caption := '&R 读取卡信息';
  btnReadCard.Width := 120;
  sPath := ExtractFilePath(Application.ExeName);
  if fileexists(spath+'..\configs\setPara.ini') = false then
  begin
    context.GetDialogSystem.ShowWarning('读取配置文件错误');
  end
  else
  begin
    try
      my := tinifile.Create(spath+'..\configs\setPara.ini');
      tempBit := my.ReadInteger('CardPara', 'bit', -1);
      tempCom := my.ReadInteger('CardPara', 'com', -1);
      my.Free;
    except
      context.GetDialogSystem.ShowWarning('读串口设置配置信息发生错误');
    end;
  end;
  cbbBit.Text := IntToStr(tempBit);
  try
    if tempCom=USB_PORT then
      rgcom.ItemIndex := 4
    else
      rgcom.ItemIndex := tempCom-1;
  except
  end;
  sleep(50);
  cbbpasmSeat.ItemIndex := pasmseat-1;
  //加载mfone卡密钥
  //ShowMessage(smartCardPwd);
  st := setMainWorkKey(smartCardPwd);
  if st<>0 then
    WriteLog('写mfone卡密钥失败-'+inttostr(st));
  {
  if not SmartCardPortStatus then
    Exit;
  ks_setcpupara4sam(cbbpasmSeat.ItemIndex+1);
  ks_samcpureset;
  }
end;

procedure TfaMachinePara.btnOpenClick(Sender: TObject);
begin
  rzstspn1.Caption := '';
  if SmartCardPortStatus then
  begin
    rzstspn1.Caption :='串口已经打开！';
    Exit;
  end;
  SaveToINI;
  OPenFormINI;
end;

procedure TfaMachinePara.btnCloseClick(Sender: TObject);
begin
  rzstspn1.Caption := '';
  if not SmartCardPortStatus then
  begin
    rzstspn1.Caption :='没有需要关闭的串口！';
    Exit;
  end;
  CloseFormINI;
end;

procedure TfaMachinePara.SaveToINI;
var
  my: tinifile;
  tempBit: integer;
  tempCom: integer;
  spath : string;
begin
  tempBit:=0;
  tempCom:=0;
  try
    tempBit := StrToInt(cbbBit.Text);
    if rgcom.ItemIndex=4 then
      tempCom := USB_PORT
    else
      tempCom := rgcom.ItemIndex+1;
  except
  end;
  sPath := ExtractFilePath(Application.ExeName);
  if fileexists(spath+'..\configs\setPara.ini') = false then
  begin
    context.GetDialogSystem.ShowWarning('读取配置文件错误');
  end
  else
  begin
    try
      my := tinifile.Create(spath+'..\configs\setPara.ini');
      my.WriteInteger('CardPara', 'bit', tempBit);
      my.WriteInteger('CardPara', 'com', tempCom);
      my.Free;
    except
      context.GetDialogSystem.ShowWarning('写配置文件错误,请将配置文件设置为可写状态！');
    end;
  end;

end;

procedure TfaMachinePara.OPenFormINI;
var
  my: tinifile;
  BaudRate: longint;
  tempCom: integer;
  tempRe: smallint;
  cm: TCM;
  spath:string;
  //pasmCard:TPUBPSAMCARD;
  //st:Integer;
begin
  sPath := ExtractFilePath(Application.ExeName);
  BaudRate:=0;
  tempCom:=0;
  //tempRe:=0;
  cm := nil;
  try
    cm := TCM.Create;
    if fileexists(spath+'..\configs\setPara.ini') = false then
    begin
      context.GetDialogSystem.ShowError('读取配置文件错误！');
    end
    else
    begin
      try
        my := tinifile.Create(spath+'..\configs\setPara.ini');
        BaudRate := my.ReadInteger('CardPara', 'bit', -1);
        tempCom := my.ReadInteger('CardPara', 'com', -1);
        my.Free;
      except
        context.GetDialogSystem.ShowWarning('读串口设置初始化信息发生错误');
      end;
    end;

    //先关闭串口，然后再打开
    try
      tempRe := cm.openDevice(tempCom, BaudRate);
    except
      Context.GetDialogSystem.ShowMessage('打开串口失败-'+geterrmsg);
      Exit;
    end;
    if tempRe = 0 then
    begin
      rzstspn1.Caption := '打开串口成功!';
      SmartCardPortStatus := True;
      cm.beep;
      {
      //打开串口成功，设置psam卡座
      ks_setcpupara4sam(cbbpasmSeat.ItemIndex+1);
      st := ks_samcpureset;
      if st<>0 then
      begin
        context.GetDialogSystem.ShowWarning('PSAM设置失败-'+geterrmsg);
      end
      else
      begin
        st := readPsamTermNo(psamTermId);
      end;
      }
    end
    else
    begin
      rzstspn1.Caption :='打开串口失败，请检查读写器是否打开以及选择正确的串口和波特率-'+inttostr(tempRe);
    end;
  finally
    cm.Destroy;
  end;
end;

procedure TfaMachinePara.CloseFormINI;
var
  tempRe: smallint;
  cm: TCM;
begin
  cm:=nil;
  try
    cm := TCM.Create;
    tempRe := cm.closeDevice;
    if tempRe = 0 then
    begin
      //cm.beep;
      rzstspn1.Caption := '串口已经关闭!';
      SmartCardPortStatus := False;
    end
    else
    begin
      rzstspn1.Caption := '关闭串口失败!';
    end;
  finally
    cm.Destroy;
  end;
end;

procedure TfaMachinePara.btnReadCardClick(Sender: TObject);
var
  cm: TCM;
  st:Integer;
  blackSign:Integer;
  //sex:string;
  phyId:string;
  sSt:string;
  //rePhyid : array[0..16] of Char;
begin
  initCardInfoPosi;
  rzstspn1.Caption := '';
  if preReadCard=False then
    Exit;
  
  sSt := readCardOneInfo(APP_TYPE);
  if sSt='0' then
  begin
    context.GetDialogSystem.ShowMessage('该卡没有初始化，请先初始化！');
    exit;
  end;
  blackSign := 0;
  cm := nil;
  try
    cm := TCM.Create;
    st := cm.card(phyId);
    if st<>0 then
    begin
      context.GetDialogSystem.ShowMessage('寻卡失败-'+geterrmsg);
      exit;
    end;
    //先清除所有的读取权限
    cm.clearallfieldreadmode;
    //设置要读取内容的权限
    //setOperReadMode(cm);
    cm.setfieldreadmode(CF_APPSERIALNO);
    cm.setfieldreadmode(CF_CITYCODE);
    cm.setfieldreadmode(SHOW_CARDNO);
    cm.setfieldreadmode(CUST_NAME);
    cm.setfieldreadmode(BLACK_VER);
    cm.setfieldreadmode(BLACK_CARD_SIGN);
    cm.setfieldreadmode(CARD_BALANCE);
    cm.setfieldreadmode(DPT_CARD_CNT);
    cm.setfieldreadmode(PAY_CARD_CNT);
    //cm.card(phyId);
    st := cm.readCard(phyId);
    if st<>0 then
    begin
      Context.GetDialogSystem.ShowMessage('读取卡信息失败-'+geterrmsg);
      Exit;
    end;
    edtPhyID.Text := cm.getCardSeriNo;
    {
    sex := cm.getCustSex;
    if Trim(sex)='1' then
      sex := '男'
    else if Trim(sex)='2' then
      sex := '女'
    else
      sex := '';
    }
    //交易卡号
    edtCardNo.Text := cm.getAppSerialNo;
    //显示卡号
    edtShowNo.Text :=  cm.getShowCardNo;//Trim(Copy(PCM.ShowCardNo,1,10));
    //姓名
    edtName.Text := cm.getCustName;
    //版本号
    edtVerNo.Text := cm.getBlackVer;

    //截至日期
    //edtEndDate.Text := cm.getDeadLineDate;
    //收费类别
    //edtFeeType.Text := GetIdObjectName(-43,cm.getCardLimitType);
    //卡类别
    //edtCardType.Text := GetIdObjectName(-5,cm.getCardType);
    //客户类别
    //edtCustType.Text := GetIdObjectName(-34,Trim(cm.getCustType));
    //客户号
    //edtCustId.Text := cm.getCustNo;
    //证件类型
    //edtCertType.Text := GetIdObjectName(87,Trim(cm.getCertType));
    //证件号码
    //edtIDCard.Text := cm.getCertNo;
    //部门
    //edtDept.Text := GetIdObjectName(-22,Trim(cm.getDeptNo));
    //姓别
    //edtSex.Text := sex;
    //学工号
    //edtStuempNo.Text := cm.getStuempNo;
    //启用日期
    //edtStartDate.Text := cm.getStartUseDate;
    //ShowMessage(cm.getCardPwd);
    //卡密码,没有设置读模式，不能读取，
    //edtPwd.Text := '123456';//cm.getCardPwd;
    //是否黑卡
    //ShowMessage(cm.getBlackCardSign);
    try
      blackSign := StrToInt(cm.getBlackCardSign);
    except
    end;
    if blackSign=NORMAL_CARD then
    begin
      edtBalack.Text := '正常';
      edtBalack.Font.Color := clBlack;
      edtVerNo.Font.Color := clBlack;
    end
    else
    begin
      edtBalack.Font.Color := clRed;
      edtVerNo.Font.Color := clRed;
      if blackSign=LOCK_CARD then
        edtBalack.Text := '锁定'
      else if blackSign=LOSE_CARD then
        edtBalack.Text := '挂失'
      else  if blackSign=FREEZE_CARD then
        edtBalack.Text := '冻结'
      else  if blackSign=DESTORY then
        edtBalack.Text := '销户'
      else if blackSign=DEAL_CARD then
        edtBalack.Text := '过期'
      else if blackSign=FEE_LOCK_CARD then
        edtBalack.Text := '后付费锁卡'
      else
        edtBalack.Text := cm.getBlackCardSign;//IntToStr(blackSign);
    end;
    
    //批次号-----------密码
    //edtPatchNo.Text := cm.getPatchNo;
    try
      edtMoney.Text := format('%f', [strtofloat(cm.getCardBalance) / 100.0]);
    except

    end;
    edtTreadeNum.Text := cm.getDptCardCnt;
    edtPayCnt.Text := cm.getPayCardCnt;
    {
    //edtPatchCnt.Text := cm.getSsdCardCnt;
    edtTradeDate.Text := cm.getTransDate;
    //读取单次消费限额和日消费限额
    if maxPer=1 then
    begin
      try
        edtMaxPerCount.Text := FloatToStr(StrToFloat(cm.getMaxPerCount)/100);
        edtmaxPerDay.Text := FloatToStr(StrToFloat(cm.getMaxPerDay)/100);
      except

      end;
    end
    else
    begin
      edtMaxPerCount.Text := '无';
      edtmaxPerDay.Text := '无';
    end;
    }
  finally
    cm.Destroy;
  end;
end;

procedure TfaMachinePara.btnCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfaMachinePara.initCardInfoPosi;
var
  i:Integer;
begin
  for i := 0 to grpCardInfo.ControlCount-1 do
  begin
    if grpCardInfo.Controls[i] is TRzEdit then
      TRzEdit(grpCardInfo.Controls[i]).Text := '';
  end;
end;

procedure TfaMachinePara.btnKeyClick(Sender: TObject);
{
var
  st:Integer;
  vkey :string;
  reErrMsg:array[0..255] of Char;
  reSt : PChar;
  }
begin
  {
  if not preReadCard then
    Exit;
  st := ks_checkloadkeys;
  if st=1 then
  begin
    Context.GetDialogSystem.ShowMessage('密钥卡已经读取！');
    Exit;
  end
  else
  begin
    try
      frmKey := TfrmKey.Create(nil);
      frmKey.ShowModal;
      vKey := frmKey.getPwd;
    finally
      frmKey.Free;
    end;
    st := ks_loadcardkeys(PChar(vKey));
    if st <>0 then
    begin
      reSt := ks_geterrmsg(PChar(@reErrMsg));
      Context.GetDialogSystem.ShowMessage(reSt);
      //Context.GetDialogSystem.ShowMessage('装载密钥失败，请先放置密钥卡--'+inttostr(st));
      Exit;
    end;
    rzstspn1.Caption := '密钥卡读取成功';
    KNG_beep;
  end;
  }
end;

procedure TfaMachinePara.btnSetPasmClick(Sender: TObject);
var
  st:Integer;
  my:TIniFile;
  tmpData:TDataSet;
  errMsg:string;
begin
  if not SmartCardPortStatus then
  begin
    Context.GetDialogSystem.ShowMessage('请先打开串口！');
    Exit;
  end;
  ks_setcpupara4sam(cbbpasmSeat.ItemIndex+1);
  st := ks_samcpureset;
  if st<>0 then
  begin
    Context.GetDialogSystem.ShowMessage('PSAM卡设置失败-'+inttostr(st));
    Exit;
  end
  else
  begin
    readPsamTermNo(psamTermId);

    WorkView.FieldByName('操作标志').Data.SetString('R');
    WorkView.FieldByName('设备终端号').Data.SetString(psamTermId);
    try
      MainRequest.SendCommand;
      if WorkView.FieldByName('返回码').Data.AsString='0' then
      begin
        tmpData := TDataSet(WorkView.FieldByName('查询结果集').Data.AsObject);
      end;
      POSID := tmpData.fieldbyname('scert_no').AsString;
      BusiID := tmpData.fieldbyname('lvol1').AsString;
      LogFile.WriteLog(POSID+'--'+busiId,lcKSClientStart);
    except
      on e:Exception do
      begin
        POSID := '';
        BusiID := '';
        errMsg := 'sgykt--read posid and busiid error'+e.Message;
        LogFile.WriteLog(errMsg,lcKSClientStart);
      end;
    end;
  end;
  KNG_beep;
  try
    my := tinifile.Create(sAppPath+'..\configs\setPara.ini');
    my.WriteInteger('psamseat', 'psamseat', cbbpasmSeat.ItemIndex+1);
    my.Free;
  except
    context.GetDialogSystem.ShowWarning('写配置文件错误,请将配置文件设置为可写状态！');
  end;
  LogFile.WriteLog(psamTermId,lcKSClientStart);

  rzstspn1.Caption := 'PSAM卡座设置成功';
end;

initialization
  TUIStdClassFactory.Create('读写器授权', TfaMachinePara);

end.
