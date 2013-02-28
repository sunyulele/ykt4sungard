inherited faqhBusiRunStatRptNew: TfaqhBusiRunStatRptNew
  Width = 745
  Height = 489
  inherited upnlBottom: TUIPanel
    Top = 452
    Width = 745
    TabOrder = 3
    inherited tlb1: TRzToolbar
      ToolbarControls = (
        btn100
        btnPageWidth
        rzspcr1
        btnFirst
        btnprevious
        btnNext
        btnLast
        rzspcr2
        btnExpXls
        btnPagePrint
        btnSetup
        rzspcr3
        btnDesign)
    end
    inherited btnQuery: TBitBtn
      Left = 648
    end
  end
  inherited UIPnlQueryCount: TUIPanel
    Width = 745
    inherited Image1: TImage
      Width = 745
    end
    inherited LabRecordCount: TLabel
      Width = 169
      Visible = False
    end
  end
  inherited UIPanel2: TUIPanel
    Top = 48
    Width = 745
    Height = 404
    TabOrder = 2
    inherited Grid: TRzDBGrid
      Left = 372
      Top = 19
      Width = 373
      Height = 385
      Columns = <
        item
          Expanded = False
          FieldName = 'vsvarstr0'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '商户名'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'snote'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '摘要'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'sserial0'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '交易次数'
          Width = 60
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'sserial1'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '收入'
          Width = 80
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'sserial2'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '支出'
          Width = 80
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'sserial3'
          PickList.Strings = ()
          Title.Alignment = taCenter
          Title.Caption = '结算金额'
          Width = 80
          Visible = True
        end>
    end
    inherited rmprvwP: TRMPreview
      Left = 372
      Top = 19
      Width = 373
      Height = 385
      TabOrder = 3
    end
    inherited RzSizePanel1: TRzSizePanel
      Top = 19
      Width = 372
      Height = 385
      TabOrder = 1
      inherited tvTree: TRzTreeView
        Left = 72
        Top = 248
        Width = 113
        Height = 49
        Align = alNone
        Visible = False
        OnClick = tvtreeClick
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 365
        Height = 84
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object Label9: TLabel
          Left = 9
          Top = 10
          Width = 60
          Height = 12
          Caption = '中心商户号'
        end
        object Label11: TLabel
          Left = 182
          Top = 10
          Width = 60
          Height = 12
          Caption = '省商户编号'
        end
        object Label12: TLabel
          Left = 21
          Top = 34
          Width = 48
          Height = 12
          Caption = '商户名称'
        end
        object Label13: TLabel
          Left = 194
          Top = 34
          Width = 48
          Height = 12
          Caption = '英文名称'
        end
        object WVEdit3: TWVEdit
          Left = 72
          Top = 6
          Width = 105
          Height = 20
          Color = clInfoBk
          ReadOnly = False
          TabOrder = 0
          Text = '<查询.中心商户号>'
          WorkView = WorkView4
          FieldName = '查询.中心商户号'
        end
        object WVEdit1: TWVEdit
          Left = 246
          Top = 6
          Width = 107
          Height = 20
          Color = clInfoBk
          ReadOnly = False
          TabOrder = 1
          Text = '<查询.省商户编号>'
          WorkView = WorkView4
          FieldName = '查询.省商户编号'
        end
        object WVEdit2: TWVEdit
          Left = 72
          Top = 30
          Width = 105
          Height = 20
          Color = clInfoBk
          ReadOnly = False
          TabOrder = 2
          Text = '<查询.商户名>'
          WorkView = WorkView4
          FieldName = '查询.商户名'
        end
        object WVEdit6: TWVEdit
          Left = 246
          Top = 30
          Width = 107
          Height = 20
          Color = clInfoBk
          ReadOnly = False
          TabOrder = 3
          Text = '<查询.商户英文名称>'
          WorkView = WorkView4
          FieldName = '查询.商户英文名称'
        end
        object btnBusiQ: TBitBtn
          Left = 274
          Top = 54
          Width = 79
          Height = 25
          Hint = '分配'
          Caption = '商户查询'
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = '宋体'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnBusiQClick
        end
      end
      object lvBusi: TRzListView
        Left = 0
        Top = 84
        Width = 365
        Height = 301
        Align = alClient
        Columns = <
          item
            Caption = '商户编号'
            Width = 70
          end
          item
            Caption = '商户名称'
            Width = 120
          end
          item
            Caption = '中心商户号'
            Width = 100
          end
          item
            Caption = '省商户编号'
            Width = 100
          end
          item
            Caption = '商户类型'
            Width = 100
          end
          item
            Caption = '行业类型'
            Width = 5
          end>
        FlatScrollBars = True
        GridLines = True
        RowSelect = True
        TabOrder = 2
        ViewStyle = vsReport
        OnClick = lvBusiClick
      end
    end
    object pnl1: TPanel
      Left = 0
      Top = 0
      Width = 745
      Height = 19
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Color = 15458000
      Font.Charset = GB2312_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = '宋体'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 18
    Width = 745
    Height = 30
    Align = alTop
    Color = 16184303
    TabOrder = 1
    object lbl1: TLabel
      Left = 16
      Top = 8
      Width = 48
      Height = 12
      Caption = '开始日期'
    end
    object Label1: TLabel
      Left = 176
      Top = 8
      Width = 48
      Height = 12
      Caption = '结束日期'
    end
    object lbl2: TLabel
      Left = 544
      Top = 8
      Width = 24
      Height = 12
      Caption = '标志'
    end
    object Label2: TLabel
      Left = 352
      Top = 9
      Width = 36
      Height = 12
      Caption = '卡类型'
    end
    object edtBeginDate: TWVEdit
      Left = 73
      Top = 4
      Width = 96
      Height = 20
      Color = clWhite
      ReadOnly = False
      TabOrder = 0
      Text = '<开始日期>'
      WorkView = WorkView
      FieldName = '开始日期'
    end
    object edtEndDate: TWVEdit
      Left = 233
      Top = 4
      Width = 96
      Height = 20
      Color = clWhite
      ReadOnly = False
      TabOrder = 1
      Text = '<结束日期>'
      WorkView = WorkView
      FieldName = '结束日期'
    end
    object cbbType: TWVComboBox
      Left = 392
      Top = 4
      Width = 129
      Height = 20
      Style = csDropDownList
      Color = clWhite
      DropDownCount = 20
      ItemHeight = 12
      TabOrder = 2
      WorkView = WorkView
      FieldName = '卡类型'
      DataPresentType = 'IDOBJECTS'
      SeperatedStr = '-'
      AutoDropDown = False
      ItemsDataEntry = '*-1'
    end
    object WVComboBox1: TWVComboBox
      Left = 576
      Top = 4
      Width = 89
      Height = 20
      Style = csDropDownList
      Color = clWhite
      DropDownCount = 20
      ItemHeight = 12
      TabOrder = 3
      WorkView = WorkView
      FieldName = '标志'
      DataPresentType = 'IDOBJECTS'
      SeperatedStr = '-'
      AutoDropDown = False
      ItemsDataEntry = '*240'
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
        Name = '商户号'
        Caption = '商户号'
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
        Name = '返回码'
        Caption = '返回码'
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
        Name = '返回信息'
        Caption = '返回信息'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        DataField = 'vsmess'
      end
      item
        Name = '开始日期'
        Caption = '开始日期'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.DefaultValid = False
        Checker.AcceptAlphabet = False
        Checker.AcceptOther = False
        Checker.AcceptHigh = False
        Checker.LowerCase = False
        Checker.UpperCase = False
      end
      item
        Name = '结束日期'
        Caption = '结束日期'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.DefaultValid = False
        Checker.AcceptAlphabet = False
        Checker.AcceptOther = False
        Checker.AcceptHigh = False
        Checker.LowerCase = False
        Checker.UpperCase = False
      end
      item
        Name = '标志'
        Caption = '标志'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
      end
      item
        Name = '卡类型'
        Caption = '卡类型'
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
        MonitorValueChangedFields = '|操作员号|密码|商户账号|金额|'
      end>
    Left = 92
    Top = 255
  end
  inherited MainRequest: TWVRequest
    ID = '商户营业情况表'
    Bindings = <
      item
        ParamName = '查询结果集'
        FieldName = '查询结果集'
        Direction = bdParam2Field
      end
      item
        ParamName = '商户号'
        FieldName = '商户号'
      end
      item
        ParamName = '返回码'
        FieldName = '返回码'
        Direction = bdParam2Field
      end
      item
        ParamName = '返回信息'
        FieldName = '返回信息'
        Direction = bdParam2Field
      end
      item
        ParamName = '开始日期'
        FieldName = '开始日期'
      end
      item
        ParamName = '结束日期'
        FieldName = '结束日期'
      end
      item
        ParamName = '卡类型'
        FieldName = '卡类型'
      end
      item
        ParamName = '标志'
        FieldName = '标志'
      end>
    Left = 128
    Top = 256
  end
  inherited WVDBBinder: TWVDBBinder
    FieldName = '查询结果集'
    Left = 168
    Top = 256
  end
  inherited DataSource: TDataSource
    Left = 208
    Top = 256
  end
  inherited ImageList1: TImageList
    Left = 322
    Top = 45
  end
  inherited rptReport: TRMReport
    Left = 424
    Top = 50
    ReportData = {}
  end
  inherited rmDS: TRMDBDataSet
    DataSet = ztbl1
    Left = 464
    Top = 50
  end
  inherited rmdsgnrD: TRMDesigner
    Left = 504
    Top = 50
  end
  inherited SaveDialog: TSaveDialog
    Left = 360
    Top = 50
  end
  object ztbl1: TZTable
    Connection = dmReportImp.conSLite
    SortedFields = 'LINENO'
    TableName = 'T_RPTSHOPACC'
    IndexFieldNames = 'LINENO Asc'
    Left = 544
    Top = 52
  end
  object QueryRequest: TWVRequest
    WorkView = WorkView4
    ID = '商户信息维护Q'
    Bindings = <
      item
        ParamName = '返回码'
        FieldName = '返回码'
        Direction = bdParam2Field
      end
      item
        ParamName = '返回信息'
        FieldName = '返回信息'
        Direction = bdParam2Field
      end
      item
        ParamName = '查询结果集'
        FieldName = '查询结果集'
        Direction = bdParam2Field
      end
      item
        ParamName = '操作标志'
        FieldName = '操作标志'
      end
      item
        ParamName = '商户编号'
        FieldName = '查询.商户编号'
      end
      item
        ParamName = '中心商户号'
        FieldName = '查询.中心商户号'
      end
      item
        ParamName = '商户状态'
        FieldName = '查询.商户状态'
      end
      item
        ParamName = '省商户编号'
        FieldName = '查询.省商户编号'
      end
      item
        ParamName = '商户名'
        FieldName = '查询.商户名'
      end
      item
        ParamName = '商户英文名称'
        FieldName = '查询.商户英文名称'
      end
      item
        ParamName = '商户简称'
        FieldName = '查询.商户简称'
      end
      item
        ParamName = '商户类型'
        FieldName = '查询.商户类型'
      end
      item
        ParamName = '行业类型'
        FieldName = '查询.行业类型'
      end>
    Left = 128
    Top = 296
  end
  object WorkView4: TWorkView
    WorkFields = <
      item
        Name = '返回码'
        Caption = '返回码'
        FieldType = wftUndefined
        DataType = kdtInteger
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        DataField = '@Return'
      end
      item
        Name = '返回信息'
        Caption = '返回信息'
        FieldType = wftUndefined
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        DataField = 'vsmess'
      end
      item
        Name = '查询结果集'
        FieldType = wftUndefined
        DataType = kdtObject
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GroupIndex = 1
      end
      item
        Name = '操作类别.增加'
        Caption = '操作类别.增加'
        FieldType = wftUndefined
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        DefaultValue = '1'
      end
      item
        Name = '操作类别.删除'
        Caption = '操作类别.删除'
        FieldType = wftUndefined
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        DefaultValue = '2'
      end
      item
        Name = '操作类别.修改'
        Caption = '操作类别.修改'
        FieldType = wftUndefined
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        DefaultValue = '3'
      end
      item
        Name = '操作标志'
        Caption = '操作标志'
        FieldType = wftUndefined
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
        Name = '查询.商户编号'
        Caption = '查询.商户编号'
        FieldType = wftUndefined
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
        Name = '查询.中心商户号'
        Caption = '查询.中心商户号'
        FieldType = wftUndefined
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
        Name = '查询.商户状态'
        Caption = '查询.商户状态'
        FieldType = wftUndefined
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
        Name = '查询.省商户编号'
        Caption = '查询.省商户编号'
        FieldType = wftUndefined
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
        Name = '查询.商户名'
        Caption = '查询.商户名'
        FieldType = wftUndefined
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
        Name = '查询.商户英文名称'
        Caption = '查询.商户英文名称'
        FieldType = wftUndefined
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
        Name = '查询.商户简称'
        Caption = '查询.商户简称'
        FieldType = wftUndefined
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
        Name = '查询.商户类型'
        Caption = '查询.商户类型'
        FieldType = wftUndefined
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
        Name = '查询.行业类型'
        Caption = '查询.行业类型'
        FieldType = wftUndefined
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end>
    WorkProcesses = <>
    FieldsMonitors = <
      item
        MonitorValueChangedFields = 
          '|查询.操作标志|查询.商户编号|查询.中心商户号|查询.省商户编号|查' +
          '询.商户名|查询.商户英文名称|查询.商户简称|查询.商户类型|查询.行' +
          '业类型|查询.联系人|查询.电话|查询.手机|查询.电子信箱|查询.传真|' +
          '查询.营业地址|查询.邮政编码|查询.结算费率|查询.开户银行|查询.银' +
          '行账号|查询.银行帐户名|查询.联行号|查询.开户日期|查询.销户日期|' +
          '查询.销户状态|查询.商户状态|'
      end
      item
        MonitorValueChangedFields = 
          '|商户编号|中心商户号|省商户编号|商户名|商户英文名称|商户简称|商' +
          '户类型|行业类型|联系人|电话|手机|电子信箱|传真|营业地址|邮政编码' +
          '|结算费率|开户银行|银行账号|银行帐户名|联行号|开户日期|销户日期|' +
          '销户状态|'
      end>
    Left = 96
    Top = 296
  end
end
