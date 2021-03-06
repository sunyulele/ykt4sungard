inherited faqhdevImpManage: TfaqhdevImpManage
  Width = 807
  Height = 477
  Caption = '设备导入管理'
  inherited pcPages: TRzPageControl
    Width = 807
    Height = 477
    FixedDimension = 19
    inherited tsQuery: TRzTabSheet
      inherited UIPanel1: TUIPanel
        Top = 409
        Width = 803
        Height = 45
        TabOrder = 3
        object Label10: TLabel [0]
          Left = 102
          Top = 9
          Width = 36
          Height = 12
          Caption = '批次号'
        end
        inherited btnAdd: TBitBtn [1]
          Left = 718
          Caption = '审核(&C)'
          Enabled = False
          TabOrder = 5
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000FFFFFFFFFFFF
            FFFFFFCBD9CF509050408040306830305030203820202820B7C6B7FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF70A08090E8B080E8A080E0A040
            905050B070509060304030B05040A04030A03020872C1DD3CDCBFFFFFFFFFFFF
            FFFFFF80B080C0E8D090F0B080B080C0D8C040905050A870406040FF9890C058
            50F05840E05030902810FFFFFFFFFFFFFFFFFFCBD5CF80B89070B070F0F0F0FF
            F8FF70A070407840D08870E09080F0B8B0C05850E05840A03820DBECF37AADBD
            598FA66080904068705050505050506060603B774AA66859C06860F0F8F0FFF8
            FFC05850B04830F0F0F06297B250B0D080D8F080B8C0000000B0B0B0B0B8B090
            98905058506F6F6F606060505850606060B04830CFBDB7FFFFFF5090B050D8FF
            90E8FF302830201820E0E0E0D0D0D0B0B0B0909890605860D0D0D0B0B0B09098
            90505850878787FFFFFF5090B050D0FF90E8F0404840403840C0C0C0E0E0E0D0
            D0D0B0B0B0706870E0E0E0D0D0D0B0B0B0909890605860FFFFFF5098B050D0FF
            90E8F0607070505850505050606060504850D0D0D0707070C0C0C0E0E0E0D0D0
            D0B0B0B0706870FFFFFF6098B050D0FF90E8F080B8C0606060807880A098A080
            8880404840404840505050606060504850D0D0D0777777FFFFFF6098B050D0FF
            90E0F0A0E0F060A0B0507880808080707880405060605860807880A098A08088
            80404840A4A4A4FFFFFF60A0C050D0FF90E0F0A0E8F070D8F020B8F000A8F000
            A0E0306890B7BAB77C847C808080778077ABAFABEFF0EFFFFFFF60A0C040D0F0
            90E0F0A0E8F070D8F020B8F000A8F000A0E0307090FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF904820FFFFFF70A8C050D8FFA0F0FFB0F0FFA0F0FF90E8FF70D8F040
            C0F0408090FFFFFFF6E3D8904820FFFFFFF9ECE5D06830FFFFFF80B0C0A0E0F0
            C0F8FFC0F8FFC0F8FFC0F8FFC0F8FFA0E0F06090A0FFFFFFA048209048209048
            20D06830F9ECE5FFFFFFD5EAED97C4D970A8C070A0B070A0B07098B070A0B081
            B3BAC0DCE3FFFFFFF6E3D8904820FFFFFFFFFFFFFFFFFFFFFFFF}
        end
        inherited btnChange: TBitBtn [2]
          Left = 462
          Enabled = False
          TabOrder = 2
        end
        inherited btnQuery: TBitBtn [3]
          Left = 376
        end
        inherited btnDelete: TBitBtn
          Left = 547
          Enabled = False
          TabOrder = 3
        end
        inherited btnViewDetail: TBitBtn
          Left = 6
        end
        inherited ckAutoSetNewParams: TRzCheckBox
          Left = 88
          Top = 32
          Width = 161
          TabOrder = 7
          Visible = False
        end
        object pbstat: TProgressBar
          Left = 0
          Top = 35
          Width = 803
          Height = 10
          Align = alBottom
          Min = 0
          Max = 100
          ParentShowHint = False
          Smooth = True
          ShowHint = False
          TabOrder = 8
        end
        object btnPatchDel: TBitBtn
          Left = 632
          Top = 3
          Width = 79
          Height = 25
          Hint = '删除当前选中的条目'
          Anchors = [akTop, akRight]
          Caption = '批量删除'
          Enabled = False
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -14
          Font.Name = '宋体'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = btnPatchDelClick
        end
        object edtDelPatchNo: TWVEdit
          Left = 143
          Top = 5
          Width = 98
          Height = 20
          Color = clInfoBk
          ReadOnly = False
          TabOrder = 6
          Text = '<批次号>'
          WorkView = WorkView1
          FieldName = '批次号'
        end
      end
      inherited UIPnlQueryCount: TUIPanel
        Width = 803
      end
      inherited Grid: TRzDBGrid
        Top = 97
        Width = 803
        Height = 312
        TabOrder = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'scust_limit'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '批次号'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lvol4'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '导入顺序号'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'scert_no'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '设备名称'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sphone3'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '设备物理编号'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lbank_acc_type'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '设备类型'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sserial1'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '设备机型'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lvol7'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '设备用途'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lserial0'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '所属子系统'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lvol0'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '上级设备编号'
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sbranch_code0'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '所在区域'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'saddr'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '卡片结构'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lvol8'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '服务器端口号'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lvol2'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '服务器端口总数'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Lvol6'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '是否支持科目收费'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'lvol1'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '设备机号'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sstation0'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = 'IP地址'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lvol5'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '通讯方式'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lvol3'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '通讯端口号'
            Width = 60
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vsvarstr0'
            PickList.Strings = ()
            Title.Alignment = taCenter
            Title.Caption = '错误信息'
            Width = 80
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 18
        Width = 803
        Height = 79
        Align = alTop
        ParentColor = True
        TabOrder = 1
        object Label3: TLabel
          Left = 38
          Top = 58
          Width = 36
          Height = 12
          Caption = '批次号'
        end
        object Label4: TLabel
          Left = 26
          Top = 10
          Width = 48
          Height = 12
          Caption = '设备名称'
        end
        object Label5: TLabel
          Left = 218
          Top = 10
          Width = 72
          Height = 12
          Caption = '设备物理编号'
        end
        object Label6: TLabel
          Left = 474
          Top = 10
          Width = 48
          Height = 12
          Caption = '设备类型'
        end
        object Label7: TLabel
          Left = 26
          Top = 34
          Width = 48
          Height = 12
          Caption = '设备机型'
        end
        object Label8: TLabel
          Left = 242
          Top = 34
          Width = 48
          Height = 12
          Caption = '设备用途'
        end
        object Label9: TLabel
          Left = 462
          Top = 34
          Width = 60
          Height = 12
          Caption = '所属子系统'
        end
        object Label11: TLabel
          Left = 242
          Top = 58
          Width = 48
          Height = 12
          Caption = '所在区域'
        end
        object Label12: TLabel
          Left = 474
          Top = 58
          Width = 48
          Height = 12
          Caption = '卡片结构'
        end
        object Label17: TLabel
          Left = 290
          Top = 234
          Width = 6
          Height = 12
        end
        object WVEdit3: TWVEdit
          Left = 84
          Top = 54
          Width = 129
          Height = 20
          Color = clWhite
          ReadOnly = False
          TabOrder = 8
          Text = '<查询.批次号>'
          WorkView = WorkView
          FieldName = '查询.批次号'
        end
        object WVEdit4: TWVEdit
          Left = 84
          Top = 6
          Width = 129
          Height = 20
          Color = clInfoBk
          ReadOnly = False
          TabOrder = 0
          Text = '<查询.设备名称>'
          WorkView = WorkView
          FieldName = '查询.设备名称'
        end
        object WVEdit5: TWVEdit
          Left = 300
          Top = 6
          Width = 142
          Height = 20
          Color = clInfoBk
          MaxLength = 8
          ReadOnly = False
          TabOrder = 1
          Text = '<查询.设备物理编号>'
          WorkView = WorkView
          FieldName = '查询.设备物理编号'
        end
        object cbbQEquPhyType: TWVComboBox
          Left = 532
          Top = 7
          Width = 128
          Height = 18
          Style = csOwnerDrawFixed
          Color = clInfoBk
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = '宋体'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 2
          WorkView = WorkView
          FieldName = '查询.设备类型'
          DataPresentType = 'IDOBJECTS'
          AutoDropDown = False
          ItemsDataEntry = '*-35'
        end
        object cbbQMachineType: TWVComboBox
          Left = 84
          Top = 31
          Width = 129
          Height = 18
          Style = csOwnerDrawFixed
          Color = clInfoBk
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = '宋体'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 3
          WorkView = WorkView
          FieldName = '查询.设备机型'
          DataPresentType = 'IDOBJECTS'
          AutoDropDown = False
          ItemsDataEntry = '*47'
        end
        object cbbQUseType: TWVComboBox
          Left = 300
          Top = 31
          Width = 143
          Height = 18
          Style = csOwnerDrawFixed
          Color = clInfoBk
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = '宋体'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 4
          WorkView = WorkView
          FieldName = '查询.设备用途'
          DataPresentType = 'IDOBJECTS'
          AutoDropDown = False
          ItemsDataEntry = '*81'
        end
        object cbbQChildSys: TWVComboBox
          Left = 532
          Top = 31
          Width = 128
          Height = 18
          Style = csOwnerDrawFixed
          Color = clInfoBk
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = '宋体'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 5
          WorkView = WorkView
          FieldName = '查询.所属子系统'
          DataPresentType = 'IDOBJECTS'
          AutoDropDown = False
          ItemsDataEntry = '*-32'
        end
        object WVComboBox2: TWVComboBox
          Left = 300
          Top = 53
          Width = 143
          Height = 20
          Style = csDropDownList
          Color = clInfoBk
          ItemHeight = 12
          TabOrder = 6
          WorkView = WorkView
          FieldName = '查询.所在区域'
          DataPresentType = 'IDOBJECTS'
          AutoDropDown = False
          ItemsDataEntry = '*-28'
        end
        object WVComboBox4: TWVComboBox
          Left = 532
          Top = 53
          Width = 129
          Height = 18
          Style = csOwnerDrawFixed
          Color = clInfoBk
          Font.Charset = GB2312_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = '宋体'
          Font.Style = []
          ItemHeight = 12
          ParentFont = False
          TabOrder = 7
          WorkView = WorkView
          FieldName = '查询.卡片结构'
          DataPresentType = 'IDOBJECTS'
          AutoDropDown = False
          ItemsDataEntry = '*48'
        end
      end
    end
    inherited tsEdit: TRzTabSheet
      object Label20: TLabel [0]
        Left = 330
        Top = 44
        Width = 60
        Height = 12
        Caption = '导入顺序号'
      end
      object Label21: TLabel [1]
        Left = 51
        Top = 44
        Width = 60
        Height = 12
        Caption = '导入批次号'
      end
      object Label23: TLabel [2]
        Left = 57
        Top = 76
        Width = 54
        Height = 12
        Caption = '设备名称*'
      end
      object Label24: TLabel [3]
        Left = 39
        Top = 140
        Width = 72
        Height = 12
        Caption = '设备物理编号'
      end
      object Label25: TLabel [4]
        Left = 336
        Top = 76
        Width = 54
        Height = 12
        Caption = '设备类型*'
      end
      object Label26: TLabel [5]
        Left = 336
        Top = 108
        Width = 54
        Height = 12
        Caption = '设备机型*'
      end
      object Label27: TLabel [6]
        Left = 57
        Top = 108
        Width = 54
        Height = 12
        Caption = '设备用途*'
      end
      object Label28: TLabel [7]
        Left = 324
        Top = 172
        Width = 66
        Height = 12
        Caption = '所属子系统*'
      end
      object Label29: TLabel [8]
        Left = 33
        Top = 172
        Width = 78
        Height = 12
        Caption = '上级设备编号*'
      end
      object Label30: TLabel [9]
        Left = 336
        Top = 140
        Width = 54
        Height = 12
        Caption = '所在区域*'
      end
      object Label31: TLabel [10]
        Left = 342
        Top = 204
        Width = 48
        Height = 12
        Caption = '卡片结构'
      end
      object Label32: TLabel [11]
        Left = 39
        Top = 204
        Width = 72
        Height = 12
        Caption = '服务器端口号'
      end
      object Label33: TLabel [12]
        Left = 27
        Top = 268
        Width = 84
        Height = 12
        Caption = '服务器端口总数'
      end
      object Label35: TLabel [13]
        Left = 342
        Top = 236
        Width = 48
        Height = 12
        Caption = '设备机号'
      end
      object Label36: TLabel [14]
        Left = 540
        Top = 124
        Width = 6
        Height = 12
      end
      object Label37: TLabel [15]
        Left = 342
        Top = 268
        Width = 48
        Height = 12
        Caption = '通讯方式'
      end
      object Label1: TLabel [16]
        Left = 75
        Top = 236
        Width = 36
        Height = 12
        Caption = 'IP地址'
      end
      object Label2: TLabel [17]
        Left = 51
        Top = 300
        Width = 60
        Height = 12
        Caption = '通讯端口号'
      end
      inherited UIPanel2: TUIPanel
        Top = 418
        Width = 803
        TabOrder = 17
        inherited btnOK: TBitBtn
          Left = 631
          TabOrder = 1
        end
        inherited btnCancel: TBitBtn
          Left = 719
          TabOrder = 2
        end
        inherited DBNavigator: TRzDBNavigator
          Hints.Strings = ()
          TabOrder = 0
        end
      end
      object edtPatchNo: TWVEdit
        Left = 118
        Top = 40
        Width = 188
        Height = 20
        Color = clInfoBk
        ReadOnly = False
        TabOrder = 0
        Text = '<批次号>'
        WorkView = WorkView
        FieldName = '批次号'
        SynchronizeWhenExit = True
      end
      object edtEquName: TWVEdit
        Left = 118
        Top = 72
        Width = 188
        Height = 20
        Color = clInfoBk
        ReadOnly = False
        TabOrder = 2
        Text = '<设备名称>'
        WorkView = WorkView
        FieldName = '设备名称'
        SynchronizeWhenExit = True
      end
      object WVEdit24: TWVEdit
        Left = 118
        Top = 136
        Width = 188
        Height = 20
        Color = clInfoBk
        ReadOnly = False
        TabOrder = 6
        Text = '<设备物理编号>'
        WorkView = WorkView
        FieldName = '设备物理编号'
        SynchronizeWhenExit = True
      end
      object edtUEqu: TWVEdit
        Left = 118
        Top = 168
        Width = 188
        Height = 20
        Color = clInfoBk
        MaxLength = 22
        ReadOnly = False
        TabOrder = 8
        Text = '<上级设备编号>'
        WorkView = WorkView
        FieldName = '上级设备编号'
        SynchronizeWhenExit = True
      end
      object edtSerPortNo: TWVEdit
        Left = 118
        Top = 199
        Width = 188
        Height = 20
        Color = clWhite
        MaxLength = 22
        ReadOnly = False
        TabOrder = 10
        Text = '<服务器端口号>'
        WorkView = WorkView
        FieldName = '服务器端口号'
        SynchronizeWhenExit = True
      end
      object edtIP: TWVEdit
        Left = 118
        Top = 232
        Width = 188
        Height = 20
        Color = clInfoBk
        ReadOnly = False
        TabOrder = 13
        Text = '<IP地址>'
        WorkView = WorkView
        FieldName = 'IP地址'
        SynchronizeWhenExit = True
      end
      object cbbEquPhyType: TWVComboBox
        Left = 398
        Top = 73
        Width = 188
        Height = 18
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ItemHeight = 12
        ParentFont = False
        TabOrder = 3
        Text = '<设备类型>'
        WorkView = WorkView
        FieldName = '设备类型'
        DataPresentType = 'IDOBJECTS'
        AutoDropDown = False
        ItemsDataEntry = '-35'
      end
      object cbbMachineType: TWVComboBox
        Left = 398
        Top = 104
        Width = 188
        Height = 18
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ItemHeight = 12
        ParentFont = False
        TabOrder = 4
        Text = '<设备机型>'
        WorkView = WorkView
        FieldName = '设备机型'
        DataPresentType = 'IDOBJECTS'
        AutoDropDown = False
        ItemsDataEntry = '47'
      end
      object cbbUseType: TWVComboBox
        Left = 118
        Top = 105
        Width = 188
        Height = 18
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ItemHeight = 12
        ParentFont = False
        TabOrder = 5
        Text = '<设备用途>'
        WorkView = WorkView
        FieldName = '设备用途'
        DataPresentType = 'IDOBJECTS'
        AutoDropDown = False
        ItemsDataEntry = '81'
      end
      object cbbArea: TWVComboBox
        Left = 398
        Top = 136
        Width = 188
        Height = 20
        Style = csDropDownList
        Color = clInfoBk
        ItemHeight = 0
        TabOrder = 7
        Text = '<所在区域>'
        WorkView = WorkView
        FieldName = '所在区域'
        DataPresentType = 'IDOBJECTS'
        AutoDropDown = False
        ItemsDataEntry = '-28'
      end
      object cbbChildSys: TWVComboBox
        Left = 398
        Top = 169
        Width = 188
        Height = 18
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ItemHeight = 12
        ParentFont = False
        TabOrder = 9
        Text = '<所属子系统>'
        WorkView = WorkView
        FieldName = '所属子系统'
        DataPresentType = 'IDOBJECTS'
        AutoDropDown = False
        ItemsDataEntry = '-32'
      end
      object WVComboBox8: TWVComboBox
        Left = 398
        Top = 200
        Width = 188
        Height = 18
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ItemHeight = 12
        ParentFont = False
        TabOrder = 11
        Text = '<卡片结构>'
        WorkView = WorkView
        FieldName = '卡片结构'
        DataPresentType = 'IDOBJECTS'
        AutoDropDown = False
        ItemsDataEntry = '*48'
      end
      object cbbComm: TWVComboBox
        Left = 398
        Top = 265
        Width = 188
        Height = 18
        Style = csOwnerDrawFixed
        Color = clInfoBk
        Font.Charset = GB2312_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '宋体'
        Font.Style = []
        ItemHeight = 12
        ParentFont = False
        TabOrder = 15
        Text = '<通讯方式>'
        WorkView = WorkView
        FieldName = '通讯方式'
        DataPresentType = 'IDOBJECTS'
        AutoDropDown = False
        ItemsDataEntry = '*50'
      end
      object edtMachineNo: TWVEdit
        Left = 398
        Top = 231
        Width = 188
        Height = 20
        Color = clWhite
        MaxLength = 22
        ReadOnly = False
        TabOrder = 12
        Text = '<设备机号>'
        WorkView = WorkView
        FieldName = '设备机号'
        SynchronizeWhenExit = True
      end
      object edtSerPortNum: TWVEdit
        Left = 118
        Top = 263
        Width = 188
        Height = 20
        Color = clWhite
        MaxLength = 22
        ReadOnly = False
        TabOrder = 14
        Text = '<服务器端口总数>'
        WorkView = WorkView
        FieldName = '服务器端口总数'
        SynchronizeWhenExit = True
      end
      object edtCommPortNo: TWVEdit
        Left = 118
        Top = 295
        Width = 188
        Height = 20
        Color = clWhite
        MaxLength = 22
        ReadOnly = False
        TabOrder = 16
        Text = '<通讯端口号>'
        WorkView = WorkView
        FieldName = '通讯端口号'
        SynchronizeWhenExit = True
      end
      object edtNo: TWVEdit
        Left = 398
        Top = 40
        Width = 188
        Height = 20
        Color = clInfoBk
        MaxLength = 22
        ReadOnly = False
        TabOrder = 1
        Text = '<导入顺序号>'
        WorkView = WorkView
        FieldName = '导入顺序号'
        SynchronizeWhenExit = True
      end
    end
  end
  inherited DataSource: TDataSource
    Left = 76
    Top = 407
  end
  inherited WorkView: TWorkView
    WorkFields = <
      item
        Name = '查询结果集'
        FieldType = wftUndefined
        Features.Strings = ()
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
        Features.Strings = ()
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
        Features.Strings = ()
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
        Features.Strings = ()
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
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 9
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '查询.设备名称'
        Caption = '查询.设备名称'
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
        Name = '查询.设备物理编号'
        Caption = '查询.设备物理编号'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 8
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '查询.设备类型'
        Caption = '查询.设备类型'
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
        Name = '查询.设备机型'
        Caption = '查询.设备机型'
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
        Name = '查询.设备用途'
        Caption = '查询.设备用途'
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
        Name = '查询.所属子系统'
        Caption = '查询.所属子系统'
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
        Name = '查询.所在区域'
        Caption = '查询.所在区域'
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
        Name = '查询.批次号'
        Caption = '查询.批次号'
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
        Name = '查询.卡片结构'
        Caption = '查询.卡片结构'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 9
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
      end
      item
        Name = '导入顺序号'
        Caption = '导入顺序号'
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
        GroupIndex = 1
        DataField = 'lvol4'
      end
      item
        Name = '批次号'
        Caption = '批次号'
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
        GroupIndex = 1
        DataField = 'scust_limit'
      end
      item
        Name = '设备名称'
        Caption = '设备名称'
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
        GroupIndex = 1
        DataField = 'scert_no'
      end
      item
        Name = '设备物理编号'
        Caption = '设备物理编号'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtString
        OwnObject = False
        Visible = False
        Constrained = True
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = True
        Checker.UpperCase = False
        GetPrevChar = '*'
        GroupIndex = 1
        DataField = 'sphone3'
      end
      item
        Name = '设备类型'
        Caption = '设备类型'
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
        GroupIndex = 1
        DataField = 'lbank_acc_type'
      end
      item
        Name = '设备机型'
        Caption = '设备机型'
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
        GroupIndex = 1
        DataField = 'sserial1'
      end
      item
        Name = '设备用途'
        Caption = '设备用途'
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
        GroupIndex = 1
        DataField = 'Lvol7'
      end
      item
        Name = '所属子系统'
        Caption = '所属子系统'
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
        GroupIndex = 1
        DataField = 'lserial0'
      end
      item
        Name = '上级设备编号'
        Caption = '上级设备编号'
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
        GroupIndex = 1
        DataField = 'Lvol0'
      end
      item
        Name = '所在区域'
        Caption = '所在区域'
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
        GroupIndex = 1
        DataField = 'sbranch_code0'
      end
      item
        Name = '卡片结构'
        Caption = '卡片结构'
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
        GroupIndex = 1
        DataField = 'saddr'
      end
      item
        Name = '服务器端口号'
        Caption = '服务器端口号'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtInteger
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
        GetPrevChar = '*'
        GroupIndex = 1
        DataField = 'lvol8'
      end
      item
        Name = '服务器端口总数'
        Caption = '服务器端口总数'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtInteger
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
        GetPrevChar = '*'
        GroupIndex = 1
        DataField = 'Lvol2'
      end
      item
        Name = '是否支持科目收费'
        Caption = '是否支持科目收费'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtInteger
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
        GetPrevChar = '*'
        GroupIndex = 1
        DataField = 'Lvol6'
      end
      item
        Name = '设备机号'
        Caption = '设备机号'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtInteger
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
        GetPrevChar = '*'
        GroupIndex = 1
        DataField = 'lvol1'
      end
      item
        Name = 'IP地址'
        Caption = 'IP地址'
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
        GroupIndex = 1
        DataField = 'sstation0'
      end
      item
        Name = '通讯方式'
        Caption = '通讯方式'
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
        GroupIndex = 1
        DataField = 'lvol5'
      end
      item
        Name = '通讯端口号'
        Caption = '通讯端口号'
        FieldType = wftUndefined
        Features.Strings = ()
        DataType = kdtInteger
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
        GetPrevChar = '*'
        GroupIndex = 1
        DataField = 'lvol3'
      end>
    FieldsMonitors = <
      item
        MonitorValueChangedFields = 
          '|查询.操作标志|查询.导入顺序号|查询.批次号|查询.设备名称|查询.设' +
          '备物理编号|查询.设备类型|查询.设备机型|查询.设备用途|查询.所属子' +
          '系统|查询.上级设备编号|查询.所在区域|查询.卡片结构|查询.服务器端' +
          '口号|查询.服务器端口总数|查询.是否支持科目收费|查询.设备机号|查' +
          '询.|查询.通讯方式|查询.通讯端口号|'
        OnValueChanged = WorkViewFieldsMonitors0ValueChanged
      end
      item
        MonitorValueChangedFields = 
          '|导入顺序号|批次号|顺序号|设备名称|设备物纜设备类型|设备机型|设' +
          '备用途|所属子系统|上级设眧所在区域|卡片结构|服务器端口号|服务器' +
          '端口总数|是否支持科目收费|设备机号||通讯方式|'
        OnValueChanged = WorkViewFieldsMonitors1ValueChanged
      end>
    Left = 8
    Top = 376
  end
  inherited QueryRequest: TWVRequest
    ID = '设备信息查询'
    Bindings = <
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
        ParamName = '批次号'
        FieldName = '查询.批次号'
      end
      item
        ParamName = '设备名称'
        FieldName = '查询.设备名称'
      end
      item
        ParamName = '设备物理编号'
        FieldName = '查询.设备物理编号'
      end
      item
        ParamName = '设备类型'
        FieldName = '查询.设备类型'
      end
      item
        ParamName = '设备机型'
        FieldName = '查询.设备机型'
      end
      item
        ParamName = '设备用途'
        FieldName = '查询.设备用途'
      end
      item
        ParamName = '所属子系统'
        FieldName = '查询.所属子系统'
      end
      item
        ParamName = '所在区域'
        FieldName = '查询.所在区域'
      end
      item
        ParamName = '卡片结构'
        FieldName = '查询.卡片结构'
      end>
    Left = 136
    Top = 376
  end
  inherited QueryBinder: TWVDBBinder
    FieldName = '查询结果集'
    Bindings = <
      item
        FieldName = 'Lvol7'
        DataPresentType = 'Idobjects'
        DataPresentParam = '81'
      end
      item
        FieldName = 'sbranch_code0'
        DataPresentType = 'Idobjects'
        DataPresentParam = '-28'
      end
      item
        FieldName = 'lserial0'
        DataPresentType = 'Idobjects'
        DataPresentParam = '-32'
      end
      item
        FieldName = 'Lvol6'
        DataPresentType = 'Idobjects'
        DataPresentParam = '64'
      end
      item
        FieldName = 'saddr'
        DataPresentType = 'Idobjects'
        DataPresentParam = '48'
      end
      item
        FieldName = 'lvol5'
        DataPresentType = 'Idobjects'
        DataPresentParam = '50'
      end
      item
        FieldName = 'lbank_acc_type'
        DataPresentType = 'IDOBJECTS'
        DataPresentParam = '-35'
      end
      item
        FieldName = 'sserial1'
        DataPresentType = 'IDOBJECTS'
        DataPresentParam = '47'
      end>
    Left = 44
    Top = 407
  end
  inherited AddRequest: TWVRequest
    ID = '设备导入管理'
    Bindings = <
      item
        ParamName = '导入顺序号'
        FieldName = '导入顺序号'
      end
      item
        ParamName = '批次号'
        FieldName = '批次号'
      end
      item
        ParamName = '顺序号'
        FieldName = '顺序号'
      end
      item
        ParamName = '设备名称'
        FieldName = '设备名称'
      end
      item
        ParamName = '设备物�'
        FieldName = '设备物�'
      end
      item
        ParamName = '设备类型'
        FieldName = '设备类型'
      end
      item
        ParamName = '设备机型'
        FieldName = '设备机型'
      end
      item
        ParamName = '设备用途'
        FieldName = '设备用途'
      end
      item
        ParamName = '所属子系统'
        FieldName = '所属子系统'
      end
      item
        ParamName = '上级设�'
        FieldName = '上级设�'
      end
      item
        ParamName = '所在区域'
        FieldName = '所在区域'
      end
      item
        ParamName = '卡片结构'
        FieldName = '卡片结构'
      end
      item
        ParamName = '服务器端口号'
        FieldName = '服务器端口号'
      end
      item
        ParamName = '服务器端口总数'
        FieldName = '服务器端口总数'
      end
      item
        ParamName = '是否支持科目收费'
        FieldName = '是否支持科目收费'
      end
      item
        ParamName = '设备机号'
        FieldName = '设备机号'
      end
      item
        ParamName = '通讯方式'
        FieldName = '通讯方式'
      end
      item
        ParamName = '通讯端口号'
        FieldName = '通讯端口号.增加'
      end>
    Left = 40
    Top = 376
  end
  inherited DeleteRequest: TWVRequest
    ID = '设备导入管理'
    Bindings = <
      item
        ParamName = '导入顺序号'
        FieldName = '导入顺序号'
      end
      item
        ParamName = '批次号'
        FieldName = '批次号'
      end
      item
        ParamName = '设备名称'
        FieldName = '设备名称'
      end
      item
        ParamName = '设备物理编号'
        FieldName = '设备物理编号'
      end
      item
        ParamName = '设备类型'
        FieldName = '设备类型'
      end
      item
        ParamName = '设备机型'
        FieldName = '设备机型'
      end
      item
        ParamName = '设备用途'
        FieldName = '设备用途'
      end
      item
        ParamName = '所属子系统'
        FieldName = '所属子系统'
      end
      item
        ParamName = '上级设备编号'
        FieldName = '上级设备编号'
      end
      item
        ParamName = '所在区域'
        FieldName = '所在区域'
      end
      item
        ParamName = '卡片结构'
        FieldName = '卡片结构'
      end
      item
        ParamName = '服务器端口号'
        FieldName = '服务器端口号'
      end
      item
        ParamName = '服务器端口总数'
        FieldName = '服务器端口总数'
      end
      item
        ParamName = '是否支持科目收费'
        FieldName = '是否支持科目收费'
      end
      item
        ParamName = '设备机号'
        FieldName = '设备机号'
      end
      item
        ParamName = 'IP地址'
        FieldName = 'IP地址'
      end
      item
        ParamName = '通讯方式'
        FieldName = '通讯方式'
      end
      item
        ParamName = '通讯端口号'
        FieldName = '通讯端口号'
      end
      item
        ParamName = '操作标志'
        FieldName = '操作标志'
      end>
    Left = 72
    Top = 376
  end
  inherited ChangeRequest: TWVRequest
    ID = '设备导入管理'
    Bindings = <
      item
        ParamName = '导入顺序号'
        FieldName = '导入顺序号'
      end
      item
        ParamName = '批次号'
        FieldName = '批次号'
      end
      item
        ParamName = '设备名称'
        FieldName = '设备名称'
      end
      item
        ParamName = '设备物理编号'
        FieldName = '设备物理编号'
      end
      item
        ParamName = '设备类型'
        FieldName = '设备类型'
      end
      item
        ParamName = '设备机型'
        FieldName = '设备机型'
      end
      item
        ParamName = '设备用途'
        FieldName = '设备用途'
      end
      item
        ParamName = '所属子系统'
        FieldName = '所属子系统'
      end
      item
        ParamName = '上级设备编号'
        FieldName = '上级设备编号'
      end
      item
        ParamName = '所在区域'
        FieldName = '所在区域'
      end
      item
        ParamName = '卡片结构'
        FieldName = '卡片结构'
      end
      item
        ParamName = '服务器端口号'
        FieldName = '服务器端口号'
      end
      item
        ParamName = '服务器端口总数'
        FieldName = '服务器端口总数'
      end
      item
        ParamName = '是否支持科目收费'
        FieldName = '是否支持科目收费'
      end
      item
        ParamName = '设备机号'
        FieldName = '设备机号'
      end
      item
        ParamName = 'IP地址'
        FieldName = 'IP地址'
      end
      item
        ParamName = '通讯方式'
        FieldName = '通讯方式'
      end
      item
        ParamName = '通讯端口号'
        FieldName = '通讯端口号'
      end
      item
        ParamName = '操作标志'
        FieldName = '操作标志'
      end>
    Left = 104
    Top = 376
  end
  inherited WVDataSource: TWVDataSource
    Left = 140
    Top = 407
  end
  inherited alDatasetActions: TActionList
    Left = 108
    Top = 404
  end
  object WVImpCheck: TWorkView
    WorkFields = <
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
        Name = '导入批次号'
        Caption = '导入批次号'
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
        GroupIndex = 1
        DataField = 'scust_limit'
      end
      item
        Name = '导入顺序号'
        Caption = '导入顺序号'
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
        GroupIndex = 1
        DataField = 'Lvol1'
      end
      item
        Name = '操作标志'
        Caption = '操作标志'
        FieldType = wftUndefined
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
      end>
    WorkProcesses = <>
    FieldsMonitors = <
      item
        MonitorValueChangedFields = 
          '|查询.操作标志|查询.导入批次号|查询.导入顺序号|查询.记录号|查询.' +
          '设备编号|查询.设备物理编号|查询.设备名称|查询.商户编号|查询.商户' +
          '名称|查询.开始时间|查询.结束时间|查询.启用日期|查询.停用日期|查' +
          '询.备注|'
      end
      item
        MonitorValueChangedFields = 
          '|导入批次号|导入顺序号|记录号|设备编号|设备物理编号|设备名称|商' +
          '户编号|商户名称|开始时间|结束时间|启用日期|停用日期|'
      end>
    Left = 8
    Top = 336
  end
  object WVRImpCheck: TWVRequest
    WorkView = WVImpCheck
    ID = '设备导入审核'
    Bindings = <
      item
        ParamName = '导入批次号'
        FieldName = '导入批次号'
      end
      item
        ParamName = '导入顺序号'
        FieldName = '导入顺序号'
      end
      item
        ParamName = '操作标志'
        FieldName = '操作标志'
      end>
    AfterExec = CheckReturnData
    Left = 40
    Top = 336
  end
  object WorkView1: TWorkView
    WorkFields = <
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
        GroupIndex = 1
      end
      item
        Name = '批次号'
        Caption = '批次号'
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
        GroupIndex = 1
        DataField = 'scust_limit'
      end
      item
        Name = '操作标志'
        Caption = '操作标志'
        FieldType = wftUndefined
        DataType = kdtString
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
      end
      item
        Name = '批量标志'
        Caption = '批量标志'
        FieldType = wftUndefined
        DataType = kdtInteger
        OwnObject = False
        Visible = False
        Checker.MinLength = 0
        Checker.MaxLength = 0
        Checker.LowerCase = False
        Checker.UpperCase = False
      end
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
      end>
    WorkProcesses = <>
    FieldsMonitors = <
      item
        MonitorValueChangedFields = 
          '|查询.操作标志|查询.导入批次号|查询.导入顺序号|查询.记录号|查询.' +
          '设备编号|查询.设备物理编号|查询.设备名称|查询.商户编号|查询.商户' +
          '名称|查询.开始时间|查询.结束时间|查询.启用日期|查询.停用日期|查' +
          '询.备注|'
      end
      item
        MonitorValueChangedFields = 
          '|导入批次号|导入顺序号|记录号|设备编号|设备物理编号|设备名称|商' +
          '户编号|商户名称|开始时间|结束时间|启用日期|停用日期|'
      end>
    Left = 144
    Top = 328
  end
  object WVRequest1: TWVRequest
    WorkView = WorkView1
    ID = '设备批量删除'
    Bindings = <
      item
        ParamName = '批次号'
        FieldName = '批次号'
      end
      item
        ParamName = '操作标志'
        FieldName = '操作标志'
      end
      item
        ParamName = '批量标志'
        FieldName = '批量标志'
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
      end>
    AfterExec = CheckReturnData
    Left = 176
    Top = 328
  end
end
