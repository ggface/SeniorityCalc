object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Seniority Calc v0.7'
  ClientHeight = 488
  ClientWidth = 733
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 0
    Top = 28
    Width = 733
    Height = 440
    Align = alClient
    TabOrder = 0
    object cxGrid1Level1: TcxGridLevel
      GridView = GV_SimpleView
    end
  end
  object dxStatusBar1: TdxStatusBar
    Left = 0
    Top = 468
    Width = 733
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = #1042#1089#1077#1075#1086': '
        Width = 75
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Text = 
          #1069#1090#1086' '#1090#1077#1089#1090#1086#1074#1086#1077' '#1055#1054'. '#1051#1102#1073#1099#1077' '#1089#1087#1086#1089#1086#1073#1099' '#1087#1086#1083#1091#1095#1077#1085#1080#1103' '#1085#1077#1079#1072#1082#1086#1085#1085#1099'! '#1045#1089#1083#1080' '#1074#1099' '#1095#1080#1090#1072 +
          #1077#1090#1077' '#1101#1090#1091' '#1085#1072#1076#1087#1080#1089#1100', '#1074#1072#1084' '#1087#1080#1079#1076#1077#1094'! '#1042#1072#1089' '#1089#1098#1077#1089#1090' '#1089#1083#1086#1085'!'
      end>
    PaintStyle = stpsUseLookAndFeel
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object dxSkinController1: TdxSkinController
    SkinName = 'Darkroom'
    Left = 16
    Top = 72
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = cxGrid1
    PopupMenus = <
      item
        GridView = GV_SimpleView
        HitTypes = [gvhtCell]
        Index = 0
        PopupMenu = dxBarPopupMenu1
      end>
    Left = 48
    Top = 72
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 16
    Top = 104
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = #1043#1083#1072#1074#1085#1072#1103
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 767
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      IsMainMenu = True
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem3'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem2'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem4'
        end
        item
          Visible = True
          ItemName = 'dxBarSubItem5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end>
      MultiLine = True
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = True
    end
    object dxBarButton1: TdxBarButton
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1077#1088#1089#1086#1085#1072#1083#1100#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1090#1088#1091#1076#1086#1074#1086#1081' '#1083#1080#1089#1090
      Category = 0
      Hint = #1055#1086#1082#1072#1079#1072#1090#1100' '#1090#1088#1091#1076#1086#1074#1086#1081' '#1083#1080#1089#1090
      Visible = ivAlways
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1084#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
      Visible = ivAlways
      OnClick = dxBarButton3Click
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
    object dxBarButton4: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Visible = ivAlways
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      Visible = ivAlways
      OnClick = dxBarButton5Click
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = #1046#1091#1088#1085#1072#1083
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    object dxBarSubItem3: TdxBarSubItem
      Caption = #1060#1072#1081#1083
      Category = 0
      Enabled = False
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem4: TdxBarSubItem
      Caption = #1054#1090#1095#1077#1090#1099
      Category = 0
      Enabled = False
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarButton7: TdxBarButton
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Category = 0
      Hint = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Visible = ivAlways
      OnClick = dxBarButton7Click
    end
    object dxBarSubItem5: TdxBarSubItem
      Caption = #1042#1085#1077#1096#1085#1080#1081' '#1074#1080#1076
      Category = 0
      Visible = ivAlways
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton9'
        end>
    end
    object dxBarButton6: TdxBarButton
      Caption = #1055#1088#1086#1089#1090#1086#1081
      Category = 0
      Hint = #1055#1088#1086#1089#1090#1086#1081
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 99
      Down = True
    end
    object dxBarButton8: TdxBarButton
      Caption = #1055#1086#1083#1085#1099#1081
      Category = 0
      Enabled = False
      Hint = #1055#1086#1083#1085#1099#1081
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 99
    end
    object dxBarButton9: TdxBarButton
      Caption = #1056#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100#1085#1099#1081
      Category = 0
      Enabled = False
      Hint = #1056#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100#1085#1099#1081
      Visible = ivAlways
      ButtonStyle = bsChecked
      GroupIndex = 99
    end
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end
      item
        BeginGroup = True
        Visible = True
        ItemName = 'dxBarButton1'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end>
    UseOwnFont = False
    Left = 48
    Top = 104
  end
  object cxGridViewRepository1: TcxGridViewRepository
    Left = 16
    Top = 136
    object GV_SimpleView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      OnCellClick = GV_SimpleViewCellClick
      OnCellDblClick = GV_SimpleViewCellDblClick
      DataController.DataSource = Bases.gvSimpleViewDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.FocusRect = False
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093' '#1076#1083#1103' '#1086#1090#1086#1073#1088#1072#1078#1077#1085#1080#1103'.'
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object GV_SimpleViewColumn1: TcxGridDBColumn
        Caption = #1048#1084#1103
        DataBinding.FieldName = 'FirstName'
        Options.Editing = False
        Options.Focusing = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 125
      end
      object GV_SimpleViewColumn2: TcxGridDBColumn
        Caption = #1060#1072#1084#1080#1083#1080#1103
        DataBinding.FieldName = 'LastName'
        Options.Editing = False
        Options.Focusing = False
        Width = 142
      end
      object GV_SimpleViewColumn3: TcxGridDBColumn
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        DataBinding.FieldName = 'FatherName'
        Options.Editing = False
        Options.Focusing = False
        Width = 142
      end
      object GV_SimpleViewColumn4: TcxGridDBColumn
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'JobName'
        Options.Editing = False
        Options.Focusing = False
        Width = 149
      end
      object GV_SimpleViewColumn5: TcxGridDBColumn
        Caption = #1054#1073#1097#1080#1081' '#1089#1090#1072#1078
        DataBinding.FieldName = 'allseniority'
        Options.Editing = False
        Options.Focusing = False
        Width = 126
      end
    end
  end
end
