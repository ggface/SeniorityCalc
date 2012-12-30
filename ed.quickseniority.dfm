object ED_QuickSeniority: TED_QuickSeniority
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1050#1088#1072#1090#1082#1080#1081' '#1088#1077#1076#1072#1082#1090#1086#1088' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1089#1090#1072#1078#1072
  ClientHeight = 265
  ClientWidth = 385
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  OnClose = FormClose
  DesignSize = (
    385
    265)
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel5: TcxLabel
    Left = 16
    Top = 8
    Caption = #1054#1055#1060
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel1: TcxLabel
    Left = 136
    Top = 8
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxDBTextEdit2: TcxDBTextEdit
    Left = 136
    Top = 32
    DataBinding.DataField = 'CompanyName'
    DataBinding.DataSource = Bases.SeniorityDS
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 233
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 64
    Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel4: TcxLabel
    Left = 16
    Top = 123
    Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxDBTextEdit5: TcxDBTextEdit
    Left = 16
    Top = 147
    DataBinding.DataField = 'JobName'
    DataBinding.DataSource = Bases.SeniorityDS
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 5
    Width = 353
  end
  object cxButton1: TcxButton
    Left = 200
    Top = 216
    Width = 169
    Height = 29
    Anchors = [akRight, akBottom]
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = cxButton1Click
  end
  object cxButton4: TcxButton
    Left = 16
    Top = 216
    Width = 169
    Height = 29
    Anchors = [akLeft, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = cxButton4Click
  end
  object cxLabel3: TcxLabel
    Left = 200
    Top = 64
    Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox
    Left = 16
    Top = 32
    DataBinding.DataField = 'LegalForm'
    DataBinding.DataSource = Bases.SeniorityDS
    ParentFont = False
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'LegalFormName'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = Bases.LegalFormsDS
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 9
    Width = 105
  end
  object cxDBDateEdit1: TcxDBDateEdit
    Left = 16
    Top = 88
    DataBinding.DataField = 'WorkBegin'
    DataBinding.DataSource = Bases.SeniorityDS
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 10
    Width = 169
  end
  object cxDBDateEdit2: TcxDBDateEdit
    Left = 200
    Top = 88
    DataBinding.DataField = 'WorkEnd'
    DataBinding.DataSource = Bases.SeniorityDS
    ParentFont = False
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 11
    Width = 169
  end
  object cxDBCheckBox1: TcxDBCheckBox
    Left = 16
    Top = 182
    AutoSize = False
    Caption = #1053#1077' '#1091#1074#1086#1083#1077#1085'('#1072') '#1085#1072' '#1076#1072#1085#1085#1099#1081' '#1084#1086#1084#1077#1085#1090
    DataBinding.DataField = 'NotEndWorkTime'
    DataBinding.DataSource = Bases.SeniorityDS
    ParentFont = False
    Properties.NullStyle = nssUnchecked
    Style.Font.Charset = RUSSIAN_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
    Style.Font.Name = 'Calibri'
    Style.Font.Style = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 12
    Transparent = True
    Height = 27
    Width = 353
  end
end
