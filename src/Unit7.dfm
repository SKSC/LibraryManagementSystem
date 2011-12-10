object Form7: TForm7
  Left = 197
  Top = 147
  Width = 997
  Height = 500
  Caption = 'Form7'
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
    Left = 32
    Top = 16
    Width = 108
    Height = 13
    Caption = 'Enter The CustomerID:'
  end
  object Label8: TLabel
    Left = 664
    Top = 32
    Width = 188
    Height = 13
    AutoSize = False
    Caption = #27492#29992#25143#29366#24577#19981#21487#29992#65292#35831#26680#23454#65281
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 584
    Top = 16
    Width = 108
    Height = 13
    Caption = #35831#20808#24402#36824#36229#26399#20070#31821#65281
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 160
    Top = 8
    Width = 281
    Height = 21
    ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
    TabOrder = 0
    Text = 'Edit1'
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 456
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Yes'
    Default = True
    TabOrder = 1
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 96
    Width = 985
    Height = 177
    TabOrder = 2
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 40
      Height = 13
      Caption = 'Name'#65306
    end
    object Label4: TLabel
      Left = 448
      Top = 8
      Width = 69
      Height = 13
      Caption = 'BarCodeNO'#65306
    end
    object Label6: TLabel
      Left = 208
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Gender:'
    end
    object Label7: TLabel
      Left = 784
      Top = 8
      Width = 28
      Height = 13
      Caption = 'label7'
    end
    object Label9: TLabel
      Left = 56
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Label9'
    end
    object Label10: TLabel
      Left = 264
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Label10'
    end
    object Label11: TLabel
      Left = 536
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Label11'
    end
    object Label5: TLabel
      Left = 704
      Top = 8
      Width = 58
      Height = 13
      Caption = 'CustomerID:'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 32
      Width = 961
      Height = 120
      DataSource = DataSource1
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 0
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
          FieldName = 'BookNO'
          Width = 65
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Author'
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Press'
          Width = 130
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
  end
  object Panel2: TPanel
    Left = 16
    Top = 40
    Width = 633
    Height = 41
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 3
    object Label3: TLabel
      Left = 16
      Top = 16
      Width = 92
      Height = 13
      Caption = 'Enter The BookNo:'
    end
    object Button3: TButton
      Left = 440
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Apply'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Edit2: TEdit
      Left = 144
      Top = 8
      Width = 281
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 1
      Text = 'Edit2'
    end
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySQL'
    Parameters = <>
    Left = 928
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 928
  end
end
