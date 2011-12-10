object Form4: TForm4
  Left = 450
  Top = 201
  AutoScroll = False
  Caption = 'Form4'
  ClientHeight = 222
  ClientWidth = 405
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
    Left = 24
    Top = 16
    Width = 105
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #36755#20837#26087#23494#30721
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 105
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #36755#20837#26032#23494#30721
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 105
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = #30830#35748#26032#23494#30721
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 344
    Top = 8
    Width = 32
    Height = 13
    Caption = 'Label4'
    Visible = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 16
    Width = 201
    Height = 21
    ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
    PasswordChar = '*'
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 136
    Top = 56
    Width = 201
    Height = 21
    ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
    PasswordChar = '*'
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 136
    Top = 96
    Width = 201
    Height = 21
    ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
    PasswordChar = '*'
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 32
    Top = 144
    Width = 75
    Height = 25
    Caption = #30830#23450
    Default = True
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 144
    Top = 144
    Width = 75
    Height = 25
    Caption = #37325#32622
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 144
    Width = 75
    Height = 25
    Caption = #21462#28040
    TabOrder = 5
    OnClick = Button3Click
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySQL' +
      ';Mode=ReadWrite'
    Parameters = <>
    Left = 352
    Top = 64
  end
end
