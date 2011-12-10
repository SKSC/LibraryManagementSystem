object Form6: TForm6
  Left = 263
  Top = 64
  Width = 955
  Height = 625
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 264
    Top = 0
    Width = 305
    Height = 57
    Alignment = taCenter
    AutoSize = False
    Caption = #25105#30340#22270#20070#39302
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -43
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 241
    Height = 49
    BevelOuter = bvNone
    TabOrder = 0
    object Label2: TLabel
      Left = 57
      Top = 8
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 104
      Top = 8
      Width = 73
      Height = 13
      AutoSize = False
      Caption = #65306#27426#36814#24744
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 72
    Width = 129
    Height = 343
    BevelOuter = bvLowered
    TabOrder = 1
    object Button1: TButton
      Left = 0
      Top = 16
      Width = 129
      Height = 25
      Caption = #25171#21360#39044#32422
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 0
      Top = 64
      Width = 129
      Height = 25
      Caption = #25171#21360#36807#26399
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 0
      Top = 112
      Width = 129
      Height = 25
      Caption = #20010#20154#20449#24687
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 0
      Top = 160
      Width = 129
      Height = 25
      Caption = #20462#25913#22270#20070#20449#24687
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button6: TButton
      Left = 0
      Top = 200
      Width = 129
      Height = 25
      Caption = #20462#25913#29992#25143#20449#24687
      TabOrder = 4
      OnClick = Button6Click
    end
    object Button9: TButton
      Left = 0
      Top = 240
      Width = 129
      Height = 25
      Caption = #23398#29983#20511#20070
      TabOrder = 5
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 0
      Top = 280
      Width = 129
      Height = 25
      Caption = #23398#29983#36824#20070
      TabOrder = 6
      OnClick = Button10Click
    end
    object Button15: TButton
      Left = 0
      Top = 160
      Width = 129
      Height = 25
      Caption = #28155#21152#21024#38500#29992#25143
      TabOrder = 7
      OnClick = Button15Click
    end
  end
  object Panel3: TPanel
    Left = 128
    Top = 72
    Width = 721
    Height = 145
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    TabOrder = 2
    object Label4: TLabel
      Left = 16
      Top = 8
      Width = 67
      Height = 13
      BiDiMode = bdRightToLeftNoAlign
      Caption = 'CustomerID'#65306
      ParentBiDiMode = False
    end
    object Label5: TLabel
      Left = 112
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Label5'
    end
    object Label6: TLabel
      Left = 16
      Top = 40
      Width = 69
      Height = 13
      Caption = 'BarCodeNO'#65306
    end
    object Label7: TLabel
      Left = 16
      Top = 72
      Width = 80
      Height = 13
      Caption = 'CustomerType'#65306
    end
    object Label8: TLabel
      Left = 96
      Top = 40
      Width = 32
      Height = 13
      Caption = 'Label8'
    end
    object Label9: TLabel
      Left = 224
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Name'#65306
    end
    object Label10: TLabel
      Left = 280
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Label10'
    end
    object Label11: TLabel
      Left = 392
      Top = 8
      Width = 47
      Height = 13
      Caption = 'Gender'#65306
    end
    object Label12: TLabel
      Left = 456
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Label12'
    end
    object Label13: TLabel
      Left = 104
      Top = 72
      Width = 38
      Height = 13
      Caption = 'Label13'
    end
    object Label14: TLabel
      Left = 224
      Top = 40
      Width = 53
      Height = 13
      Caption = 'Situation'#65306
    end
    object Label15: TLabel
      Left = 288
      Top = 40
      Width = 38
      Height = 13
      Caption = 'Label15'
    end
    object Label16: TLabel
      Left = 224
      Top = 72
      Width = 53
      Height = 13
      Caption = 'StartDay'#65306
    end
    object Label17: TLabel
      Left = 288
      Top = 72
      Width = 38
      Height = 13
      Caption = 'Label17'
    end
    object Label18: TLabel
      Left = 416
      Top = 72
      Width = 50
      Height = 13
      Caption = 'EndDay'#65306
    end
    object Label19: TLabel
      Left = 480
      Top = 72
      Width = 38
      Height = 13
      Caption = 'Label19'
    end
    object Button5: TButton
      Left = 536
      Top = 112
      Width = 75
      Height = 25
      Caption = #20462#25913#23494#30721
      TabOrder = 0
      OnClick = Button5Click
    end
  end
  object Panel4: TPanel
    Left = 128
    Top = 73
    Width = 793
    Height = 216
    TabOrder = 3
    object ComboBox1: TComboBox
      Left = 24
      Top = 184
      Width = 145
      Height = 21
      Style = csDropDownList
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      ItemHeight = 13
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'View All'
        'CustomerID'
        'BookName'
        'BookNO'
        'IndexNO'
        'DateAvailable'
        'Location')
    end
    object Edit1: TEdit
      Left = 184
      Top = 184
      Width = 393
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 1
      Text = 'Edit1'
    end
    object Button7: TButton
      Left = 584
      Top = 184
      Width = 75
      Height = 25
      Caption = #26816#32034
      Default = True
      TabOrder = 2
      OnClick = Button7Click
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 8
      Width = 769
      Height = 145
      DataSource = DataSource1
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CustomerID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BookName'
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IndexNO'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BookNO'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateLentOut'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateShouldReturned'
          Width = 90
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Location'
          Width = 125
          Visible = True
        end>
    end
    object ComboBox2: TComboBox
      Left = 24
      Top = 184
      Width = 145
      Height = 21
      Style = csDropDownList
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      ItemHeight = 13
      TabOrder = 4
      OnChange = ComboBox2Change
      Items.Strings = (
        'View All'
        'CustomerID'
        'BookName'
        'BookNO'
        'IndexNO'
        'DateLentOut'
        'DateShouldReturned'
        'Location')
    end
    object Button8: TButton
      Left = 584
      Top = 184
      Width = 75
      Height = 25
      Caption = #26816#32034
      Default = True
      TabOrder = 5
      OnClick = Button8Click
    end
    object DBGrid2: TDBGrid
      Left = 8
      Top = 8
      Width = 681
      Height = 169
      DataSource = DataSource1
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CustomerID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BookName'
          Width = 210
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IndexNO'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BookNO'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DateAvailable'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Location'
          Width = 125
          Visible = True
        end>
    end
    object ComboBox3: TComboBox
      Left = 184
      Top = 184
      Width = 145
      Height = 21
      Style = csDropDownList
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      ItemHeight = 13
      TabOrder = 7
      OnChange = ComboBox3Change
      Items.Strings = (
        'StoreRoom1'
        'StoreRoom7'
        'StoreRoom8'
        'Room324'
        'Room114,Building4'
        'Room214,Building4'
        'InstitueOfScience')
    end
  end
  object Panel5: TPanel
    Left = 136
    Top = 360
    Width = 369
    Height = 89
    TabOrder = 4
    object Label20: TLabel
      Left = 16
      Top = 8
      Width = 94
      Height = 13
      Caption = 'Enter The BookNO:'
    end
    object Edit2: TEdit
      Left = 120
      Top = 8
      Width = 193
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 0
      Text = 'Edit2'
    end
    object Button11: TButton
      Left = 264
      Top = 40
      Width = 75
      Height = 25
      Caption = #30830#23450
      Default = True
      TabOrder = 1
      OnClick = Button11Click
    end
  end
  object Panel6: TPanel
    Left = 128
    Top = 72
    Width = 465
    Height = 289
    TabOrder = 5
    object Label21: TLabel
      Left = 16
      Top = 16
      Width = 108
      Height = 13
      Caption = 'Enter The CustomerID:'
    end
    object Panel7: TPanel
      Left = 8
      Top = 40
      Width = 449
      Height = 225
      TabOrder = 0
      object Label22: TLabel
        Left = 16
        Top = 16
        Width = 58
        Height = 13
        Caption = 'CustomerID:'
      end
      object Label23: TLabel
        Left = 16
        Top = 48
        Width = 75
        Height = 13
        Caption = 'CustomerName:'
      end
      object Label24: TLabel
        Left = 16
        Top = 80
        Width = 38
        Height = 13
        Caption = 'Gender:'
      end
      object Label25: TLabel
        Left = 16
        Top = 104
        Width = 60
        Height = 13
        Caption = 'BarCodeNO:'
      end
      object Label26: TLabel
        Left = 16
        Top = 136
        Width = 44
        Height = 13
        Caption = 'Situation:'
      end
      object Button13: TButton
        Left = 16
        Top = 168
        Width = 75
        Height = 25
        Caption = #30830#23450
        Default = True
        TabOrder = 0
        OnClick = Button13Click
      end
      object Edit4: TEdit
        Left = 88
        Top = 8
        Width = 121
        Height = 21
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        TabOrder = 1
        Text = 'Edit4'
        OnChange = Edit4Change
      end
      object Edit5: TEdit
        Left = 104
        Top = 40
        Width = 121
        Height = 21
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        TabOrder = 2
        Text = 'Edit5'
        OnChange = Edit5Change
      end
      object Edit6: TEdit
        Left = 96
        Top = 104
        Width = 121
        Height = 21
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        TabOrder = 3
        Text = 'Edit6'
        OnChange = Edit6Change
      end
      object RadioButton3: TRadioButton
        Left = 88
        Top = 136
        Width = 89
        Height = 17
        Caption = 'Available'
        TabOrder = 4
        OnClick = RadioButton3Click
      end
      object RadioButton4: TRadioButton
        Left = 200
        Top = 136
        Width = 97
        Height = 17
        Caption = 'Unavailable'
        Checked = True
        TabOrder = 5
        TabStop = True
        OnClick = RadioButton4Click
      end
      object Button14: TButton
        Left = 272
        Top = 168
        Width = 75
        Height = 25
        Caption = #21462#28040
        TabOrder = 6
        OnClick = Button14Click
      end
      object Panel8: TPanel
        Left = 64
        Top = 64
        Width = 289
        Height = 33
        BevelOuter = bvNone
        TabOrder = 7
        object RadioButton1: TRadioButton
          Left = 8
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Male'
          TabOrder = 0
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 144
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Female'
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = RadioButton2Click
        end
      end
    end
    object Edit3: TEdit
      Left = 136
      Top = 8
      Width = 217
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 1
      Text = 'Edit3'
    end
    object Button12: TButton
      Left = 368
      Top = 8
      Width = 75
      Height = 25
      Caption = #30830#23450
      Default = True
      TabOrder = 2
      OnClick = Button12Click
    end
  end
  object Panel9: TPanel
    Left = 128
    Top = 72
    Width = 481
    Height = 473
    TabOrder = 6
    object Panel10: TPanel
      Left = 24
      Top = 40
      Width = 417
      Height = 57
      TabOrder = 0
      object Label27: TLabel
        Left = 16
        Top = 24
        Width = 58
        Height = 13
        Caption = 'CustomerID:'
      end
      object Edit7: TEdit
        Left = 80
        Top = 16
        Width = 225
        Height = 21
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        TabOrder = 0
        Text = 'Edit7'
      end
      object Button16: TButton
        Left = 320
        Top = 16
        Width = 75
        Height = 25
        Caption = #30830#23450
        TabOrder = 1
        OnClick = Button16Click
      end
    end
    object Button17: TButton
      Left = 24
      Top = 8
      Width = 75
      Height = 25
      Caption = #28155#21152
      TabOrder = 1
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = #21024#38500
      TabOrder = 2
      OnClick = Button18Click
    end
    object Panel11: TPanel
      Left = 8
      Top = 40
      Width = 465
      Height = 241
      TabOrder = 3
      object Label28: TLabel
        Left = 16
        Top = 16
        Width = 58
        Height = 13
        Caption = 'CustomerID:'
      end
      object Label29: TLabel
        Left = 16
        Top = 48
        Width = 72
        Height = 13
        Caption = 'CustomerName'
      end
      object Label30: TLabel
        Left = 16
        Top = 88
        Width = 38
        Height = 13
        Caption = 'Gender:'
      end
      object Label31: TLabel
        Left = 16
        Top = 120
        Width = 60
        Height = 13
        Caption = 'BarCodeNO:'
      end
      object Label32: TLabel
        Left = 16
        Top = 160
        Width = 71
        Height = 13
        Caption = 'CustomerType:'
      end
      object Edit8: TEdit
        Left = 104
        Top = 8
        Width = 121
        Height = 21
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        TabOrder = 0
        Text = 'Edit8'
      end
      object Edit9: TEdit
        Left = 104
        Top = 40
        Width = 121
        Height = 21
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        TabOrder = 1
        Text = 'Edit9'
      end
      object Edit10: TEdit
        Left = 104
        Top = 112
        Width = 121
        Height = 21
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        TabOrder = 2
        Text = 'Edit10'
      end
      object Button19: TButton
        Left = 16
        Top = 208
        Width = 75
        Height = 25
        Caption = #28155#21152
        TabOrder = 3
        OnClick = Button19Click
      end
      object Button20: TButton
        Left = 112
        Top = 208
        Width = 75
        Height = 25
        Caption = #21462#28040
        TabOrder = 4
        OnClick = Button20Click
      end
      object Panel12: TPanel
        Left = 80
        Top = 72
        Width = 249
        Height = 33
        BevelOuter = bvNone
        TabOrder = 5
        object RadioButton5: TRadioButton
          Left = 16
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Male'
          TabOrder = 0
          OnClick = RadioButton5Click
        end
        object RadioButton6: TRadioButton
          Left = 128
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Female'
          TabOrder = 1
          OnClick = RadioButton6Click
        end
      end
      object Panel13: TPanel
        Left = 96
        Top = 144
        Width = 353
        Height = 33
        BevelOuter = bvNone
        TabOrder = 6
        object RadioButton7: TRadioButton
          Left = 8
          Top = 8
          Width = 89
          Height = 17
          Caption = 'Teacher'
          TabOrder = 0
          OnClick = RadioButton7Click
        end
        object RadioButton8: TRadioButton
          Left = 136
          Top = 8
          Width = 81
          Height = 17
          Caption = 'Student'
          TabOrder = 1
          OnClick = RadioButton8Click
        end
        object RadioButton9: TRadioButton
          Left = 248
          Top = 8
          Width = 113
          Height = 17
          Caption = 'Super'
          TabOrder = 2
          OnClick = RadioButton9Click
        end
      end
    end
    object DBGrid3: TDBGrid
      Left = 8
      Top = 288
      Width = 417
      Height = 113
      DataSource = DataSource1
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CustomerID'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustomerName'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Gender'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CustomerType'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BarCodeNO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Situation'
          Visible = True
        end>
    end
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySQL'
    Parameters = <>
    Left = 72
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 32
  end
  object ADOQuery2: TADOQuery
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySQL'
    Parameters = <>
    Left = 8
  end
end
