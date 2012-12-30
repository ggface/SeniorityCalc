object ED_Seniority: TED_Seniority
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1090#1088#1091#1076#1086#1074#1086#1075#1086' '#1089#1090#1072#1078#1072
  ClientHeight = 359
  ClientWidth = 546
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 8
    Top = 8
    Width = 529
    Height = 300
    TabOrder = 0
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.Visible = False
      NavigatorButtons.Append.Visible = True
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = Bases.SeniorityViewDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1080' '#1076#1083#1103' '#1074#1099#1074#1086#1076#1072'.'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = #1054#1055#1060
        DataBinding.FieldName = 'LegalFormName'
        Options.Editing = False
        Options.Focusing = False
        Width = 76
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'CompanyName'
        Options.Editing = False
        Options.Focusing = False
        Width = 123
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'JobName'
        Options.Editing = False
        Options.Focusing = False
        Width = 140
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = #1053#1072#1095#1072#1083#1086' '#1087#1077#1088#1080#1086#1076#1072
        DataBinding.FieldName = 'WorkBegin'
        Options.Editing = False
        Options.Focusing = False
        Width = 107
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = #1050#1086#1085#1077#1094' '#1087#1077#1088#1080#1086#1076#1072
        DataBinding.FieldName = 'WorkEnd'
        Options.Editing = False
        Options.Focusing = False
        Width = 85
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object cxButton2: TcxButton
    Left = 8
    Top = 319
    Width = 169
    Height = 29
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = cxButton2Click
  end
  object cxButton1: TcxButton
    Left = 192
    Top = 319
    Width = 169
    Height = 29
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = cxButton1Click
  end
  object cxButton3: TcxButton
    Left = 376
    Top = 319
    Width = 161
    Height = 29
    Caption = #1059#1076#1072#1083#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Calibri'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = cxButton3Click
  end
end
