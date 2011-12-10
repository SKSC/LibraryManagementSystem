object Form8: TForm8
  Left = 280
  Top = 94
  Width = 870
  Height = 500
  Caption = 'Form8'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 584
    Top = 5
    Width = 273
    Height = 52
    Alignment = taCenter
    AutoSize = False
    Caption = #20070#31821#20462#25913
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
    Width = 217
    Height = 25
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 104
      Top = 0
      Width = 97
      Height = 25
      Caption = #20462#25913#22270#20070' '
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = -8
      Top = 0
      Width = 97
      Height = 25
      Caption = #28155#21152#22270#20070
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 80
    Width = 729
    Height = 313
    Caption = 'Panel2'
    TabOrder = 1
    object PageControl1: TPageControl
      Left = 8
      Top = 24
      Width = 705
      Height = 281
      ActivePage = TabSheet2
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = #25353'ISBN'#20462#25913
        object Label2: TLabel
          Left = 16
          Top = 8
          Width = 78
          Height = 13
          Caption = 'Enter The ISBN:'
        end
        object Panel3: TPanel
          Left = -8
          Top = 32
          Width = 705
          Height = 217
          TabOrder = 0
          object Label3: TLabel
            Left = 40
            Top = 8
            Width = 56
            Height = 13
            Caption = 'BookName:'
          end
          object Label4: TLabel
            Left = 336
            Top = 8
            Width = 28
            Height = 13
            Caption = 'ISBN:'
          end
          object Label5: TLabel
            Left = 40
            Top = 40
            Width = 34
            Height = 13
            Caption = 'Author:'
          end
          object Label6: TLabel
            Left = 336
            Top = 40
            Width = 29
            Height = 13
            Caption = 'Press:'
          end
          object Label7: TLabel
            Left = 336
            Top = 80
            Width = 72
            Height = 13
            Caption = 'DatePublished:'
          end
          object Label8: TLabel
            Left = 40
            Top = 80
            Width = 46
            Height = 13
            Caption = 'Available:'
          end
          object Label9: TLabel
            Left = 40
            Top = 104
            Width = 27
            Height = 13
            Caption = 'Total:'
          end
          object Label10: TLabel
            Left = 48
            Top = 136
            Width = 45
            Height = 13
            Caption = 'IndexNO:'
          end
          object Label11: TLabel
            Left = 336
            Top = 104
            Width = 59
            Height = 13
            Caption = 'MainTheme:'
          end
          object Label33: TLabel
            Left = 104
            Top = 80
            Width = 38
            Height = 13
            Caption = 'Label33'
          end
          object Label34: TLabel
            Left = 104
            Top = 104
            Width = 38
            Height = 13
            Caption = 'Label34'
          end
          object Edit2: TEdit
            Left = 104
            Top = 8
            Width = 185
            Height = 21
            ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
            TabOrder = 0
            Text = 'Edit2'
          end
          object Edit3: TEdit
            Left = 376
            Top = 8
            Width = 185
            Height = 21
            ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
            TabOrder = 1
            Text = 'Edit3'
          end
          object Edit4: TEdit
            Left = 104
            Top = 40
            Width = 185
            Height = 21
            ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
            TabOrder = 2
            Text = 'Edit4'
          end
          object Edit5: TEdit
            Left = 376
            Top = 40
            Width = 185
            Height = 21
            ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
            TabOrder = 3
            Text = 'Edit5'
          end
          object Edit6: TEdit
            Left = 416
            Top = 72
            Width = 121
            Height = 21
            ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
            TabOrder = 4
            Text = 'Edit6'
          end
          object Edit9: TEdit
            Left = 104
            Top = 136
            Width = 121
            Height = 21
            ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
            TabOrder = 5
            Text = 'Edit9'
          end
          object Memo1: TMemo
            Left = 408
            Top = 96
            Width = 185
            Height = 89
            ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
            Lines.Strings = (
              'Memo1')
            ScrollBars = ssVertical
            TabOrder = 6
          end
          object Button5: TButton
            Left = 56
            Top = 184
            Width = 75
            Height = 25
            Caption = #30830#23450
            TabOrder = 7
            OnClick = Button5Click
          end
          object Button6: TButton
            Left = 144
            Top = 184
            Width = 75
            Height = 25
            Caption = #21462#28040
            TabOrder = 8
            OnClick = Button6Click
          end
        end
        object Edit1: TEdit
          Left = 104
          Top = 0
          Width = 145
          Height = 21
          ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
          TabOrder = 1
          Text = 'Edit1'
        end
        object Button4: TButton
          Left = 256
          Top = 0
          Width = 97
          Height = 25
          Caption = #30830#23450
          TabOrder = 2
          OnClick = Button4Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = #25353'BookNO'#20462#25913
        ImageIndex = 1
        object Label12: TLabel
          Left = 16
          Top = 16
          Width = 94
          Height = 13
          Caption = 'Enter The BookNO:'
        end
        object Edit10: TEdit
          Left = 120
          Top = 8
          Width = 201
          Height = 21
          ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
          TabOrder = 0
          Text = 'Edit10'
        end
        object Button7: TButton
          Left = 328
          Top = 8
          Width = 89
          Height = 25
          Caption = #30830#23450
          TabOrder = 1
          OnClick = Button7Click
        end
        object Panel4: TPanel
          Left = 8
          Top = 40
          Width = 681
          Height = 209
          TabOrder = 2
          object Label13: TLabel
            Left = 24
            Top = 8
            Width = 56
            Height = 13
            Caption = 'BookName:'
          end
          object Label14: TLabel
            Left = 24
            Top = 40
            Width = 44
            Height = 13
            Caption = 'BookNO:'
          end
          object Label15: TLabel
            Left = 256
            Top = 40
            Width = 44
            Height = 13
            Caption = 'Situation:'
          end
          object Label16: TLabel
            Left = 256
            Top = 8
            Width = 45
            Height = 13
            Caption = 'IndexNO:'
          end
          object Label17: TLabel
            Left = 24
            Top = 80
            Width = 44
            Height = 13
            Caption = 'Location:'
          end
          object Label18: TLabel
            Left = 336
            Top = 8
            Width = 38
            Height = 13
            Caption = 'Label18'
          end
          object Label19: TLabel
            Left = 104
            Top = 8
            Width = 38
            Height = 13
            Caption = 'Label19'
          end
          object Edit11: TEdit
            Left = 88
            Top = 40
            Width = 121
            Height = 21
            ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
            TabOrder = 0
            Text = 'Edit11'
          end
          object ComboBox2: TComboBox
            Left = 88
            Top = 80
            Width = 145
            Height = 21
            ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
            ItemHeight = 13
            TabOrder = 1
            Text = 'ComboBox2'
            Items.Strings = (
              'StoreRoom1'
              'StoreRoom4'
              'StoreRoom7'
              'StoreRoom8'
              'Room324'
              'Room114,Building4'
              'Room214,Building4'
              'InstitueOfScience')
          end
          object Button8: TButton
            Left = 424
            Top = 160
            Width = 75
            Height = 25
            Caption = #21462#28040
            TabOrder = 2
            OnClick = Button8Click
          end
          object Button9: TButton
            Left = 312
            Top = 160
            Width = 75
            Height = 25
            Caption = #30830#23450
            TabOrder = 3
            OnClick = Button9Click
          end
          object RadioButton1: TRadioButton
            Left = 328
            Top = 40
            Width = 113
            Height = 17
            Caption = 'Available'
            TabOrder = 4
            OnClick = RadioButton1Click
          end
          object RadioButton2: TRadioButton
            Left = 472
            Top = 40
            Width = 113
            Height = 17
            Caption = 'Unavailable'
            TabOrder = 5
            OnClick = RadioButton2Click
          end
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 8
    Top = 80
    Width = 729
    Height = 297
    TabOrder = 2
    object Label20: TLabel
      Left = 24
      Top = 16
      Width = 132
      Height = 13
      Caption = #35831#36755#20837#20070#31821#30340#35814#32454#20449#24687#65306
    end
    object Label21: TLabel
      Left = 24
      Top = 40
      Width = 37
      Height = 13
      Caption = 'ISBN'#65306
    end
    object Label22: TLabel
      Left = 24
      Top = 80
      Width = 56
      Height = 13
      Caption = 'BookName:'
    end
    object Label23: TLabel
      Left = 24
      Top = 120
      Width = 34
      Height = 13
      Caption = 'Author:'
    end
    object Label24: TLabel
      Left = 24
      Top = 160
      Width = 29
      Height = 13
      Caption = 'Press:'
    end
    object Label25: TLabel
      Left = 424
      Top = 40
      Width = 59
      Height = 13
      Caption = 'MainTheme:'
    end
    object Label26: TLabel
      Left = 424
      Top = 152
      Width = 71
      Height = 13
      Caption = 'Datepublished:'
    end
    object Label32: TLabel
      Left = 24
      Top = 200
      Width = 45
      Height = 13
      Caption = 'IndexNO:'
    end
    object Memo2: TMemo
      Left = 520
      Top = 32
      Width = 185
      Height = 89
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      Lines.Strings = (
        'Memo2')
      TabOrder = 0
    end
    object Button2: TButton
      Left = 192
      Top = 240
      Width = 89
      Height = 25
      Caption = #19979#19968#27493
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button10: TButton
      Left = 296
      Top = 240
      Width = 75
      Height = 25
      Caption = #37325#32622
      TabOrder = 2
      OnClick = Button10Click
    end
    object Edit12: TEdit
      Left = 88
      Top = 40
      Width = 121
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 3
      Text = 'Edit12'
    end
    object Edit13: TEdit
      Left = 88
      Top = 80
      Width = 121
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 4
      Text = 'Edit13'
    end
    object Edit14: TEdit
      Left = 88
      Top = 112
      Width = 121
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 5
      Text = 'Edit14'
    end
    object Edit15: TEdit
      Left = 88
      Top = 152
      Width = 121
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 6
      Text = 'Edit15'
    end
    object Edit16: TEdit
      Left = 520
      Top = 144
      Width = 121
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 7
      Text = 'Edit16'
    end
    object Button12: TButton
      Left = 64
      Top = 240
      Width = 105
      Height = 25
      Caption = #19979#27493
      TabOrder = 8
      OnClick = Button12Click
    end
    object Button16: TButton
      Left = 616
      Top = 240
      Width = 75
      Height = 25
      Caption = #36864#20986
      TabOrder = 9
      OnClick = Button16Click
    end
    object Edit18: TEdit
      Left = 88
      Top = 192
      Width = 121
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 10
      Text = 'Edit18'
    end
  end
  object Panel6: TPanel
    Left = 8
    Top = 80
    Width = 521
    Height = 361
    TabOrder = 3
    object Label27: TLabel
      Left = 16
      Top = 16
      Width = 28
      Height = 13
      Caption = 'ISBN:'
    end
    object Label28: TLabel
      Left = 64
      Top = 16
      Width = 34
      Height = 13
      Caption = 'label28'
    end
    object Label29: TLabel
      Left = 16
      Top = 48
      Width = 44
      Height = 13
      Caption = 'BookNO:'
    end
    object Label30: TLabel
      Left = 16
      Top = 80
      Width = 44
      Height = 13
      Caption = 'Situation:'
    end
    object Label31: TLabel
      Left = 16
      Top = 112
      Width = 44
      Height = 13
      Caption = 'Location:'
    end
    object Edit17: TEdit
      Left = 72
      Top = 40
      Width = 177
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 0
      Text = 'Edit17'
    end
    object RadioButton3: TRadioButton
      Left = 72
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Available'
      TabOrder = 1
      OnClick = RadioButton3Click
    end
    object RadioButton4: TRadioButton
      Left = 232
      Top = 80
      Width = 113
      Height = 17
      Caption = 'Unavailable'
      TabOrder = 2
      OnClick = RadioButton4Click
    end
    object ComboBox1: TComboBox
      Left = 80
      Top = 104
      Width = 145
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      ItemHeight = 13
      TabOrder = 3
      Text = 'ComboBox1'
      Items.Strings = (
        'StoreRoom1'
        'StoreRoom4'
        'StoreRoom7'
        'StoreRoom8'
        'Room324'
        'Room114,Building4'
        'Room214,Building4'
        'InstitueOfScience')
    end
    object Button13: TButton
      Left = 32
      Top = 160
      Width = 75
      Height = 25
      Caption = #19978#19968#27493
      TabOrder = 4
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 152
      Top = 160
      Width = 75
      Height = 25
      Caption = #28155#21152
      TabOrder = 5
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 288
      Top = 160
      Width = 75
      Height = 25
      Caption = #23436#25104
      TabOrder = 6
      OnClick = Button15Click
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 200
      Width = 489
      Height = 120
      DataSource = DataSource1
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySQL'
    Parameters = <>
    Left = 315
    Top = 19
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery2
    Left = 271
    Top = 19
  end
  object ADOQuery2: TADOQuery
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySQL'
    Parameters = <>
    Left = 360
    Top = 7
  end
end
