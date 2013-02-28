unit UAReNewOper;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UqhSimpleQueryTemp, WVCmdReq, WorkViews, Grids, DBGrids, StdCtrls,RM_Class,
  ImageCtrls, ExtCtrls, UICtrls, WVCtrls, Mask, WVDBBinders, Db, WVCmdProc,
  KCWVProcBinds, WVCmdTypeInfo, RzDBGrid, Buttons, UIncrementComboBox,CardDll,
  RzStatus;

type
  TfaqhReNewOper = class(TfaqhSimpleQueryTemp)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    WVEdit3: TWVEdit;
    WVEdit5: TWVEdit;
    edtAppSerialNo: TWVEdit;
    Label1: TLabel;
    edtCardNo: TWVEdit;
    cbbDept: TWVComboBox;
    cbbIDType: TWVComboBox;
    btnLoss: TBitBtn;
    WVReNewOper: TWorkView;
    WVRRenewOper: TWVRequest;
    btnReadCard: TBitBtn;
    RzStatusPane2: TRzStatusPane;
    chkPrint: TCheckBox;
    procedure btnQueryClick(Sender: TObject);
    procedure btnLossClick(Sender: TObject);
    procedure btnReadCardClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
  private

    { Private declarations }
  public
    procedure Init; override;
    { Public declarations }
  end;

var
  faqhReNewOper: TfaqhReNewOper;

implementation

uses KsFrameworks, KSFrameWorkUtils, KSComCmdDefs, KSCustomers, Contnrs,
     KSClientConsts,KSDataDictionary,DataUsageUtils,SmartCardCommon;
     
{$R *.DFM}

procedure TfaqhReNewOper.Init;
begin
  inherited;
  if ks_comminit(PChar(scIP),scPORT,scFUNCNO)<>0 then
    Context.GetDialogSystem.ShowMessage('初始化连接后台失败，请重新打开该界面！');
end;

procedure TfaqhReNewOper.btnQueryClick(Sender: TObject);
begin
  inherited;
  btnLoss.Enabled := True;
end;

procedure TfaqhReNewOper.btnLossClick(Sender: TObject);
var
  sDate,sTime:string;
  appSerialNo:string;
  phyId:string;
  //cardNo:Integer;
  bDptNum,bPayNum,money:Integer;
  cm: TCM;
  st:Integer;

  rTradeDate:string;
  rTradeTime:string;
  rSerialNo:string;
  rMoney:Integer;
  //rOperSerialNo:Integer;
  tp:TTRANSPACK;

  rptReport:TRMReport;
  custName:string;
  phoneNo:string;
  serialNo:string;
  cardType:string;
  //fMoney:string;
  rCardNo:string;
begin
  if preReadCard=False then
    Exit;
  if psamTermId='' then
  begin
    Context.GetDialogSystem.ShowMessage('请设置PSAM卡座,然后再进行操作！');
    Exit;
  end;
  
  if Application.MessageBox('你确定要补办该卡吗？',PChar(Application.Title),MB_ICONQUESTION+mb_yesno)=idno then
    Exit;
  cm := nil;
  rptReport := nil;
  try
    cm := TCM.Create;
    st := cm.card(phyId);
    if st<>0 then
    begin
      context.GetDialogSystem.ShowMessage('寻卡失败，请先放置好卡！');
      exit;
    end;
    cm.clearallfieldreadmode;
    cm.setfieldreadmode(DPT_CARD_CNT);
    cm.setfieldreadmode(CARD_BALANCE);
    cm.setfieldreadmode(PAY_CARD_CNT);
    cm.setfieldreadmode(CF_APPSERIALNO);
    //cm.setfieldreadmode(CARD_NO);

    if cm.readCard(phyId)<>0 then
    begin
      Context.GetDialogSystem.ShowMessage('读卡信息失败-'+geterrmsg);
      Exit;
    end;
    try
      appSerialNo := cm.getAppSerialNo;
      //cardNo := StrToInt(cm.getCardNo);
      bDptNum := StrToInt(cm.getDptCardCnt);
      bPayNum := StrToInt(cm.getPayCardCnt);
      money := StrToInt(cm.getCardBalance);
    except
      //cardNo := 0;
      bDptNum := 0;
      bPayNum := 0;
      money := 0;
    end;
    sDate := FormatDateTime('yyyymmdd',Date);
    sTime := FormatDateTime('hhmmss',Now);
    WVReNewOper.FieldByName('交易日期').Data.SetString(sDate);
    WVReNewOper.FieldByName('交易时间').Data.SetString(sTime);
    WVReNewOper.FieldByName('sam终端号').Data.SetString(psamTermId);
    WVReNewOper.FieldByName('应用序列号').Data.SetString(appSerialNo);
    WVReNewOper.FieldByName('卡号').Data.SetInteger(Grid.DataSource.DataSet.fieldbyname('scard0').AsInteger);
    WVReNewOper.FieldByName('物理卡号').Data.SetString(phyId);
    WVReNewOper.FieldByName('充值次数').Data.SetInteger(bDptNum);
    WVReNewOper.FieldByName('消费次数').Data.SetInteger(bPayNum);
    WVReNewOper.FieldByName('卡余额').Data.SetInteger(money);
    try
      WVRReNewOper.SendCommand;
    except
      on e:Exception do
      begin
        Context.GetDialogSystem.ShowMessage(e.Message);
        Exit;
      end;
    end;
    rMoney := WVReNewOper.FieldByName('出卡值').Data.AsInteger;
    rTradeDate := WVReNewOper.FieldByName('主机日期').Data.AsString;
    rtradetime := WVReNewOper.FieldByName('主机时间').Data.AsString;
    rSerialNo := WVReNewOper.FieldByName('终端号').Data.AsString;
    serialNo := WVReNewOper.FieldByName('流水号').Data.AsString;
    //写卡信息，更新有效期和状态
    cm.clearallfieldwritemode;
    cm.setBlackCardSign(IntToStr(NORMAL_CARD));
    //ShowMessage(IntToStr(DESTORY));
    cm.setDeadLineDate(rTradeDate);
    st := cm.writeData(phyId);
    if st<>0 then
    begin
      Context.GetDialogSystem.ShowMessage('写卡状态失败<'+getErrMsg+'>,错误码:'+inttostr(st));
      Exit;
    end;

    ZeroMemory(@tp,SizeOf(tp));
    //终端交易序列号
    tp.TermSeqno := StrToInt(serialNo);
    //终端编号
    StrCopy(@tp.Termno,PChar(rSerialNo));
    //交易卡号
    tp.CardNo := 0;//rCardNo;
    //物理编号
    StrCopy(@tp.CardPhyID,PChar(phyId));
    //交易日期
    StrCopy(@tp.TransDate,PChar(rTradeDate));
    //交易时间
    StrCopy(@tp.TransTime,PChar(rtradeTime));
    //交易前金额
    tp.BefBalance := money;
    //交易后金额
    tp.AftBalance := rMoney;
    //交易前充值次数
    tp.DptCardCnt := bDptNum;
    //交易前消费次数
    tp.PayCardCnt := bPayNum;
    //交易前补助次数
    //tp.SubsidyNo := subsidyNo;
    //修改设置金额方式
    if setCardBal(tp,cm,phyId)<>0 then
      Exit;
    cm.beep;
    RzStatusPane2.Caption:=WVReNewOper.FieldByName('返回信息').Data.AsString;
    
    if chkPrint.Checked then
    begin
      try
        serialNo := WVReNewOper.fieldbyname('流水号').Data.AsString;
        cardType := WVReNewOper.fieldbyname('卡类型').Data.AsString;
        phoneNo := WVReNewOper.fieldbyname('手机').Data.AsString;
        custName := WVReNewOper.fieldbyname('姓名').Data.AsString;
        rCardNo  := WVReNewOper.fieldbyname('卡号').Data.AsString;
        rptReport := TRMReport.Create(Self);
        rptReport.LoadFromFile(sPreAppPath+'report\RtnTicket\printTemp.rmf');
        rptReport.Dictionary.Variables.AsString['phoneNo'] := phoneNo;
        rptReport.Dictionary.Variables.AsString['custName'] := custName;
        rptReport.Dictionary.Variables.AsString['titleType'] := '换卡操作';
        rptReport.Dictionary.Variables.AsString['serialNo'] := serialNo;
        rptReport.Dictionary.Variables.AsString['netId'] := scNetNo;
        rptReport.Dictionary.Variables.AsString['netName'] := scNetName;
        rptReport.Dictionary.Variables.AsString['termId'] := psamTermId;
        rptReport.Dictionary.Variables.AsString['operId'] := scOperNo;
        rptReport.Dictionary.Variables.AsString['cardNo'] := rCardNo;
        rptReport.Dictionary.Variables.AsString['cardType'] := cardType;
        rptReport.Dictionary.Variables.AsString['param1'] := '卡内余额：';
        rptReport.Dictionary.Variables.AsString['pValue1'] := format('%f', [rmoney / 100.0])+' 元';
        rptReport.Dictionary.Variables.AsString['param2'] := '换卡时间：';
        rptReport.Dictionary.Variables.AsString['pValue2'] := FormatDateTime('yyyy-MM-dd hh:MM:ss',Now);
        rptReport.Dictionary.Variables.AsString['param3'] := '';
        rptReport.Dictionary.Variables.AsString['pValue3'] := '';
        rptReport.ShowPrintDialog := False;
        rptReport.SaveToFile(sPreAppPath+'report\RtnTicket\renewoper.rmp');
        if showrpt=1 then
          rptReport.ShowReport
        else
          rptReport.PrintReport;
      except
        Context.GetDialogSystem.ShowMessage('你没有安装打印机，不能打印！');
      end;
    end;

  finally
    rptReport.Free;
    cm.Free;
  end;
  btnQuery.Click;
end;

procedure TfaqhReNewOper.btnReadCardClick(Sender: TObject);
var
  cardNo:string;
begin
  edtAppSerialNo.Text:='';
  try
    cardNo := readCardOneInfo(CF_APPSERIALNO);
  except
    Exit;
  end;
  if (cardNo='') or (cardNo='0') then
  begin
    Context.GetDialogSystem.ShowMessage('读卡查询失败，应用序列号为零或不存在!');
    Exit;
  end;
  edtAppSerialNo.Text:=cardNo;
  btnQuery.Click();
end;

procedure TfaqhReNewOper.btnPrintClick(Sender: TObject);
begin
  rePrintOrder(sPreAppPath+'report\RtnTicket\renewoper.rmp');
end;

initialization
  TUIStdClassFactory.Create('补办操作',TfaqhReNewOper);

end.