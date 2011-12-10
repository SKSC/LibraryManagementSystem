object Form1: TForm1
  Left = 189
  Top = 111
  Width = 870
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 216
    Top = 0
    Width = 417
    Height = 57
    Alignment = taCenter
    AutoSize = False
    Caption = #22270#20070#39302#31649#29702#31995#32479
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -43
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 784
    Top = 0
    Width = 75
    Height = 25
    Caption = #30331#24405
    TabOrder = 0
    OnClick = Button1Click
  end
  object Panel1: TPanel
    Left = 88
    Top = 72
    Width = 649
    Height = 41
    BevelOuter = bvLowered
    TabOrder = 1
    object ComboBox1: TComboBox
      Left = 8
      Top = 8
      Width = 145
      Height = 21
      Style = csDropDownList
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Author'
        'BookName'
        'Press'
        'ISBN'
        'MainTheme'
        'DatePublished')
    end
    object Edit1: TEdit
      Left = 160
      Top = 8
      Width = 353
      Height = 21
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      TabOrder = 1
    end
    object Button2: TButton
      Left = 552
      Top = 8
      Width = 75
      Height = 25
      Caption = #26597#35810
      Default = True
      TabOrder = 2
      OnClick = Button2Click
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 120
    Width = 841
    Height = 145
    DataSource = DataSource1
    ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnKeyDown = DBGrid1KeyDown
    OnKeyUp = DBGrid1KeyUp
    Columns = <
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
        FieldName = 'DatePublished'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Available'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 48
    Top = 280
    Width = 777
    Height = 153
    BevelOuter = bvLowered
    TabOrder = 3
    object Label2: TLabel
      Left = 440
      Top = 8
      Width = 56
      Height = 13
      Caption = 'BookName:'
    end
    object Label3: TLabel
      Left = 520
      Top = 8
      Width = 32
      Height = 13
      Caption = 'Label3'
    end
    object Label4: TLabel
      Left = 440
      Top = 80
      Width = 28
      Height = 13
      Caption = 'ISBN:'
    end
    object Label5: TLabel
      Left = 520
      Top = 80
      Width = 32
      Height = 13
      Caption = 'Label5'
    end
    object Label6: TLabel
      Left = 440
      Top = 32
      Width = 43
      Height = 13
      Caption = 'Author'#65306
    end
    object Label7: TLabel
      Left = 520
      Top = 32
      Width = 32
      Height = 13
      Caption = 'Label7'
    end
    object Label8: TLabel
      Left = 440
      Top = 56
      Width = 29
      Height = 13
      Caption = 'Press:'
    end
    object Label9: TLabel
      Left = 520
      Top = 56
      Width = 32
      Height = 13
      Caption = 'Label9'
    end
    object Label10: TLabel
      Left = 440
      Top = 128
      Width = 59
      Height = 13
      Caption = 'MainTheme:'
    end
    object Label11: TLabel
      Left = 520
      Top = 128
      Width = 38
      Height = 13
      Caption = 'Label11'
    end
    object Label12: TLabel
      Left = 440
      Top = 104
      Width = 72
      Height = 13
      Caption = 'DatePublished:'
    end
    object Label13: TLabel
      Left = 520
      Top = 104
      Width = 38
      Height = 13
      Caption = 'Label13'
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 16
      Width = 393
      Height = 97
      DataSource = DataSource2
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
          FieldName = 'Location'
          Width = 125
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Situation'
          Width = 70
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 16
    Top = 8
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySQL' +
      ';Mode=Read'
    Parameters = <>
    Left = 16
    Top = 48
  end
  object ADOQuery2: TADOQuery
    ConnectionString = 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=MySQL'
    Parameters = <>
    Left = 728
    Top = 16
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 776
    Top = 48
  end
end
