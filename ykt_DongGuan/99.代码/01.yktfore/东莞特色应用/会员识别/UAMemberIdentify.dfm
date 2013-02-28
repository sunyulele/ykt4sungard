inherited faqMemberIdentify: TfaqMemberIdentify
  Width = 633
  Height = 374
  inherited UIPanel1: TUIPanel
    Top = 347
    Width = 633
    Height = 27
    object rzstspnInfo: TRzStatusPane [0]
      Left = 0
      Top = 4
      Width = 633
      Height = 23
      FrameStyle = fsStatus
      Align = alBottom
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -14
      Font.Name = '宋体'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited btnQuery: TBitBtn
      Left = 457
      Top = 1000
      Caption = '查询'
      Visible = False
    end
    inherited btnPrint: TBitBtn
      Left = 543
      Top = 1000
      Caption = '重新打印'
      Visible = False
      Glyph.Data = {00000000}
    end
  end
  inherited UIPnlQueryCount: TUIPanel
    Width = 633
    inherited Image1: TImage
      Width = 633
    end
    inherited LabRecordCount: TLabel
      Visible = False
    end
  end
  inherited UIPanel2: TUIPanel
    Width = 633
    Height = 329
    inherited Grid: TRzDBGrid
      Left = 208
      Top = 1000
      Width = 233
      Height = 113
      Align = alNone
      Visible = False
      Columns = <
        item
          Expanded = False
          FieldName = 'lvol0'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '客户号'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sroom_no2'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '发卡部门'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'snote'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '姓名'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sroom_no'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '证件类型'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'spager'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '证件号码'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sphone'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '电话'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sphone2'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '手机'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'scard0'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '卡号'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sphone3'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '应用序列号'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'scust_auth'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '卡物理编号'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lvol1'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '卡类别'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'lvol3'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '卡物理类型'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sorder0'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '卡片版本'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sdate1'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '制卡日期'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'snote2'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '发行批次号'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sdate0'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '发卡日期'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'sdate3'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '到期日期'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'damt0'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '卡成本费'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'damt1'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '卡账户余额'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'damt2'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '卡实际余额'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'damt3'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '充值总金额'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'damt4'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '消费总金额'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lvol4'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '充值次数'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lvol5'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '消费次数'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lvol6'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '充值总笔数'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lvol7'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '消费总笔数'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lvol8'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '最后交易终端号'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'scust_auth2'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '最后交易日期'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'stime0'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '最后交易时间'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sstatus0'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '充值写卡失败标志'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'lvol9'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '挂失标志'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'semp_pwd'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '挂失日期'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'semp_pwd2'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '挂失生效日期'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sstock_code'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '删除日期'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'smarket_code'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '删除标志'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sname'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '更新时间'
          Visible = False
        end>
    end
    object RzGroupBox1: TRzGroupBox
      Left = 144
      Top = 72
      Width = 433
      Height = 169
      Caption = '会员识别信息'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '宋体'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object lbl2: TLabel
        Left = 8
        Top = 24
        Width = 80
        Height = 16
        AutoSize = False
        Caption = '原流水号：'
      end
      object lbl3: TLabel
        Left = 8
        Top = 56
        Width = 80
        Height = 16
        AutoSize = False
        Caption = '平台流水：'
      end
      object lbl4: TLabel
        Left = 8
        Top = 88
        Width = 80
        Height = 16
        AutoSize = False
        Caption = '会员信息：'
      end
      object lblOldSerial: TLabel
        Left = 88
        Top = 24
        Width = 337
        Height = 16
        AutoSize = False
        Caption = '手机号码：'
      end
      object lblTradeSerial: TLabel
        Left = 88
        Top = 56
        Width = 337
        Height = 16
        AutoSize = False
        Caption = '手机号码：'
      end
      object lblInfo: TLabel
        Left = 88
        Top = 88
        Width = 337
        Height = 64
        AutoSize = False
        Caption = 
          '手机号码：手机号码：手机号码：手机号码：手机号码：手机号码：手机' +
          '号码：手机号码：手机号码：手机号码：手机号码：手机号码：手机号码' +
          '：手机号码：手机号码：手机号码：手机号码：手机号码：手机号码：手' +
          '机号码：手机号码：手机号码：手机号码：手机号码：手机号码：手机号' +
          '码：手机号码：手机号码：手机号码：手机号码：手机号码：手机号码：' +
          '手机号码：手机号码：手机号码：手机号码：'
        WordWrap = True
      end
    end
    object btnQueryFee: TBitBtn
      Left = 472
      Top = 248
      Width = 103
      Height = 29
      Hint = '会员识别'
      Caption = '会员识别(&Q)'
      Font.Charset = GB2312_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = '宋体'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnQueryFeeClick
    end
  end
  inherited WorkView: TWorkView
    WorkFields = <
      item
        Name = '查询结果集'
        Caption = '查询结果集'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtObject
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
      end
      item
        Name = '客户号'
        Caption = '客户号'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtInteger
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.DefaultValid = False
        Checker.AcceptAlphabet = False
        Checker.AcceptOther = False
        Checker.AcceptHigh = False
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '姓名'
        Caption = '姓名'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '证件类型'
        Caption = '证件类型'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '证件号码'
        Caption = '证件号码'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '发卡部门'
        Caption = '发卡部门'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '电话'
        Caption = '电话'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '手机'
        Caption = '手机'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.DefaultValid = False
        Checker.AcceptAlphabet = False
        Checker.AcceptOther = False
        Checker.AcceptHigh = False
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '卡号'
        Caption = '卡号'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.DefaultValid = False
        Checker.AcceptAlphabet = False
        Checker.AcceptOther = False
        Checker.AcceptHigh = False
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '卡物理编号'
        Caption = '卡物理编号'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '卡类型'
        Caption = '卡类型'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtInteger
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '制卡日期'
        Caption = '制卡日期'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '卡序列号'
        Caption = '卡序列号'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '卡状态'
        Caption = '卡状态'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtInteger
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
      end
      item
        Name = '查询类别'
        Caption = '查询类别'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
      end>
    FieldsMonitors = <
      item
        MonitorValueChangedFields = 
          '|客户号|姓名|证件类型|证件号码|发卡部门|电话|手机|卡号|卡物理编' +
          '号|卡类型|制卡日期|发行批次号|'
      end>
    InvalidColor = clWhite
    Left = 4
    Top = 65535
  end
  inherited MainRequest: TWVRequest
    ID = '账户信息查询'
    Bindings = <
      item
        ParamName = '查询结果集'
        FieldName = '查询结果集'
        Direction = bdParam2Field
      end
      item
        ParamName = '客户号'
        FieldName = '客户号'
      end
      item
        ParamName = '姓名'
        FieldName = '姓名'
      end
      item
        ParamName = '证件类型'
        FieldName = '证件类型'
      end
      item
        ParamName = '证件号码'
        FieldName = '证件号码'
      end
      item
        ParamName = '发卡部门'
        FieldName = '发卡部门'
      end
      item
        ParamName = '电话'
        FieldName = '电话'
      end
      item
        ParamName = '手机'
        FieldName = '手机'
      end
      item
        ParamName = '卡号'
        FieldName = '卡号'
      end
      item
        ParamName = '卡物理编号'
        FieldName = '卡物理编号'
      end
      item
        ParamName = '卡类型'
        FieldName = '卡类型'
      end
      item
        ParamName = '制卡日期'
        FieldName = '制卡日期'
      end
      item
        ParamName = '卡序列号'
        FieldName = '卡序列号'
      end
      item
        ParamName = '卡状态'
        FieldName = '卡状态'
        DefaultValue = 0
      end
      item
        ParamName = '查询类别'
        FieldName = '查询类别'
      end>
    Left = 40
    Top = 0
  end
  inherited WVDBBinder: TWVDBBinder
    FieldName = '查询结果集'
    Bindings = <
      item
        FieldName = 'sroom_no2'
        DataPresentType = 'idobjects'
        DataPresentParam = '210'
      end
      item
        FieldName = 'sroom_no'
        DataPresentType = 'idobjects'
        DataPresentParam = '201'
      end
      item
        FieldName = 'lvol1'
        DataPresentType = 'idobjects'
        DataPresentParam = '-1'
      end
      item
        FieldName = 'lvol3'
        DataPresentType = 'idobjects'
        DataPresentParam = '-4'
      end
      item
        FieldName = 'lvol9'
        DataPresentType = 'idobjects'
        DataPresentParam = '225'
      end>
    Left = 72
    Top = 0
  end
  inherited DataSource: TDataSource
    Left = 104
    Top = 0
  end
  object idhtp1: TIdHTTP
    MaxLineAction = maException
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 144
  end
end
