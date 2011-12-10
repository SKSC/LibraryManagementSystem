object Form2: TForm2
  Left = 437
  Top = 47
  Width = 362
  Height = 221
  Caption = 'Form2'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  SnapBuffer = 20
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 65
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #29992#25143'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 65
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #23494#30721
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 88
    Top = 16
    Width = 249
    Height = 21
    ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 56
    Width = 249
    Height = 21
    ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 32
    Top = 104
    Width = 75
    Height = 25
    Caption = #30830#23450
    Default = True
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 240
    Top = 104
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 136
    Top = 104
    Width = 75
    Height = 25
    Caption = #37325#32622
    TabOrder = 4
    OnClick = Button3Click
  end
  object ADOQuery1: TADOQuery
    CacheSize = 4
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySQL' +
      ';Mode=Read'
    Parameters = <>
    Prepared = True
    Left = 48
    Top = 136
  end
end
