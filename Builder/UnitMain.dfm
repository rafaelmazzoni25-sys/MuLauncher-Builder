object frmMain: TfrmMain
  Left = 277
  Top = 257
  Width = 541
  Height = 429
  Caption = 'MU Launcher Builder - SkyTeam'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 533
    Height = 361
    ActivePage = tsSkin
    Align = alClient
    TabIndex = 1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'MU Launcher Options'
      object GeneralProperties: TPropertiesView
        Left = 0
        Top = 0
        Width = 525
        Height = 333
        Align = alClient
        BorderStyle = bsSingle
        CategoriesColor = clBtnFace
        GridColor = clBtnFace
        MarginColor = clBtnFace
        Options = [poEnterSelectNext, poImages, poUniformSelect]
        RowHeight = 16
        ParentColor = False
        SelectionColor = clHighlight
        SplitterPosition = 268
        Style = psAuto
        SuffixWidth = 60
        TabOrder = 0
        object TTextualItem
          Caption = 'Announcement browser'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = -1
        end
        object cAnnouncementVis: TComboBoxItem
          Caption = 'Visible'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = 'No'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Lines.Strings = (
            'Yes'
            'No')
          Style = cbDropDownList
          ParentIndex = 0
        end
        object tAnnouncementUrl: TTextualItem
          Caption = 'Announcement url:'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 0
        end
        object TTextualItem
          Caption = 'Options window'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = -1
        end
        object cOptionsEnable: TComboBoxItem
          Caption = 'Enable'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = 'No'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Lines.Strings = (
            'Yes'
            'No')
          Style = cbDropDown
          ParentIndex = 3
        end
        object TTextualItem
          Caption = 'Server status'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = -1
        end
        object cServerStatusVis: TComboBoxItem
          Caption = 'Visible'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = 'No'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Lines.Strings = (
            'Yes'
            'No')
          Style = cbDropDown
          ParentIndex = 5
        end
        object TTextualItem
          Caption = 'Update feature'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = -1
        end
        object cUpdateEnable: TComboBoxItem
          Caption = 'Enable'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = 'No'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Lines.Strings = (
            'Yes'
            'No')
          Style = cbDropDown
          ParentIndex = 7
        end
        object cUpdateUrl: TTextualItem
          Caption = 'Update url:'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 7
        end
        object TTextualItem
          Caption = 'Splash screen'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = -1
        end
        object cSplashEnable: TComboBoxItem
          Caption = 'Enable'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = 'No'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Lines.Strings = (
            'Yes'
            'No')
          Style = cbDropDown
          ParentIndex = 10
        end
        object cSplashBack: TImageItem
          Caption = 'Background'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 10
        end
        object cSplashRegion: TImageItem
          Caption = 'Region'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 10
        end
        object TTextualItem
          Caption = 'General'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = -1
        end
        object tServerName: TTextualItem
          Caption = 'Name of server:'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 14
        end
        object tServerPage: TTextualItem
          Caption = 'Server page:'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 14
        end
        object tServerHost: TTextualItem
          Caption = 'Hostname/IP:'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 14
        end
        object tServerPort: TSpinItem
          Caption = 'Server Port:'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '44405'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 14
        end
      end
    end
    object tsSkin: TTabSheet
      Caption = 'Skin'
      ImageIndex = 1
      object SkinProperties: TPropertiesView
        Left = 0
        Top = 22
        Width = 525
        Height = 311
        Align = alClient
        BorderStyle = bsSingle
        CategoriesColor = clBtnFace
        GridColor = clBtnFace
        MarginColor = clBtnFace
        Options = [poGrid, poEnterSelectNext]
        RowHeight = 16
        ParentColor = False
        SelectionColor = clHighlight
        SplitterPosition = 260
        Style = psAuto
        SuffixWidth = 60
        TabOrder = 0
        object TTextualItem
          Caption = 'Custom Skin'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = -1
        end
        object TComboBoxItem
          Caption = 'Enable'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = 'No'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Lines.Strings = (
            'Yes'
            'No')
          Style = cbDropDownList
          ParentIndex = 0
        end
        object TTextualItem
          Caption = 'Main Window'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 1
        end
        object TColorItem
          Caption = 'Background color'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ColorKind = ckDelphi
          UseColorNames = False
          ParentIndex = 2
        end
        object TColorItem
          Caption = 'Foreground color'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ColorKind = ckDelphi
          UseColorNames = False
          ParentIndex = 2
        end
        object TFontNameItem
          Caption = 'Font'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Style = cbDropDown
          ParentIndex = 2
        end
        object TImageItem
          Caption = 'Background'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 2
        end
        object TImageItem
          Caption = 'Region'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 2
        end
        object TTextualItem
          Caption = 'Announcement browser'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 2
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 8
        end
        object TSpinItem
          Caption = 'Width'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 8
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 8
        end
        object TSpinItem
          Caption = 'Height'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 8
        end
        object TTextualItem
          Caption = 'Status label'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 2
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 13
        end
        object TSpinItem
          Caption = 'Width'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 13
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 13
        end
        object TSpinItem
          Caption = 'Height'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 13
        end
        object TTextualItem
          Caption = 'Close button'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 2
        end
        object TImageItem
          Caption = 'Normal bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 18
        end
        object TImageItem
          Caption = 'Pressed bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 18
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 18
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 18
        end
        object TTextualItem
          Caption = 'Connect button'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 2
        end
        object TImageItem
          Caption = 'Normal bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 23
        end
        object TImageItem
          Caption = 'Pressed bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 23
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 23
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 23
        end
        object TTextualItem
          Caption = 'Update button'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 2
        end
        object TImageItem
          Caption = 'Normal bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 28
        end
        object TImageItem
          Caption = 'Pressed bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 28
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 28
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 28
        end
        object TTextualItem
          Caption = 'Options button'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 2
        end
        object TImageItem
          Caption = 'Normal bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 33
        end
        object TImageItem
          Caption = 'Pressed bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 33
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 33
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 33
        end
        object TTextualItem
          Caption = 'Options Window'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 1
        end
        object TColorItem
          Caption = 'Background color'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ColorKind = ckDelphi
          UseColorNames = False
          ParentIndex = 38
        end
        object TColorItem
          Caption = 'Foreground color'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ColorKind = ckDelphi
          UseColorNames = False
          ParentIndex = 38
        end
        object TFontNameItem
          Caption = 'Font'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Style = cbDropDown
          ParentIndex = 38
        end
        object TImageItem
          Caption = 'Background'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 38
        end
        object TImageItem
          Caption = 'Region'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 38
        end
        object TTextualItem
          Caption = 'ID Text'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = 
            'Enter your account ID to have it automatically entered upon logi' +
            'n.'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 38
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 44
        end
        object TSpinItem
          Caption = 'Width'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 44
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 44
        end
        object TSpinItem
          Caption = 'Height'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 44
        end
        object TTextualItem
          Caption = 'ID Box'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 44
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 49
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 49
        end
        object TTextualItem
          Caption = 'Resolution Text'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = 
            'Select the resolution rate. Higher resolutions may enable cleare' +
            'r graphics, but may require higher system specifications.'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 38
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 52
        end
        object TSpinItem
          Caption = 'Width'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 52
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 52
        end
        object TSpinItem
          Caption = 'Height'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 52
        end
        object TTextualItem
          Caption = '640x480'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 52
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 57
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 57
        end
        object TTextualItem
          Caption = '800x600'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 52
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 60
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 60
        end
        object TTextualItem
          Caption = '1024x768'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 52
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 63
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 63
        end
        object TTextualItem
          Caption = '1280x1024'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 52
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 66
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 66
        end
        object TTextualItem
          Caption = 'Sound & Music Text'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = 
            'Select to enable or disable sound. Selecting option will enable ' +
            'sound.'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 38
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 69
        end
        object TSpinItem
          Caption = 'Width'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 69
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 69
        end
        object TSpinItem
          Caption = 'Height'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 69
        end
        object TTextualItem
          Caption = 'Sound'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 69
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 74
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 74
        end
        object TTextualItem
          Caption = 'Music'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 69
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 77
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 77
        end
        object TTextualItem
          Caption = 'Close button'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 38
        end
        object TImageItem
          Caption = 'Normal bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 80
        end
        object TImageItem
          Caption = 'Pressed bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 80
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 80
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 80
        end
        object TTextualItem
          Caption = 'Apply button'
          Color = clWindow
          Expanded = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ReadOnly = True
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          ParentIndex = 38
        end
        object TImageItem
          Caption = 'Normal bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 85
        end
        object TImageItem
          Caption = 'Pressed bitmap'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          TransparentColor = clNone
          ParentIndex = 85
        end
        object TSpinItem
          Caption = 'Left'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 85
        end
        object TSpinItem
          Caption = 'Top'
          Color = clWindow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          HelpContext = 0
          ImageIndex = -1
          ShowPreview = False
          ShowSuffix = False
          SuffixStyle = ssDropDown
          Value = '0'
          ValueFont.Charset = DEFAULT_CHARSET
          ValueFont.Color = clWindowText
          ValueFont.Height = -11
          ValueFont.Name = 'MS Sans Serif'
          ValueFont.Style = []
          Increment = 1
          ParentIndex = 85
        end
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 525
        Height = 22
        AutoSize = True
        Caption = 'ToolBar1'
        EdgeBorders = []
        Flat = True
        Images = ImageList1
        TabOrder = 1
        object ToolButton1: TToolButton
          Left = 0
          Top = 0
          Caption = 'ToolButton1'
          DropdownMenu = PopupMenu1
          ImageIndex = 0
          OnClick = ToolButton1Click
        end
        object ToolButton2: TToolButton
          Left = 23
          Top = 0
          Caption = 'ToolButton2'
          ImageIndex = 1
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 361
    Width = 533
    Height = 19
    Panels = <>
    SimplePanel = False
  end
  object MainMenu1: TMainMenu
    Left = 400
    Top = 144
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Action = ActionExit
      end
    end
    object Run1: TMenuItem
      Caption = 'Run'
      object Run2: TMenuItem
        Action = ActionRun
      end
      object Build1: TMenuItem
        Action = ActionBuild
      end
    end
    object Skin1: TMenuItem
      Caption = 'Skin'
      object Edit1: TMenuItem
        Caption = 'Edit'
        object MainWindow1: TMenuItem
          Action = ActionEditMainWindowSkin
        end
        object OptionsWindow1: TMenuItem
          Action = ActionEditOptionsWindowSkin
        end
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object About1: TMenuItem
        Action = ActionAbout
      end
    end
  end
  object ActionList1: TActionList
    Left = 432
    Top = 144
    object ActionBuild: TAction
      Caption = 'Build'
      OnExecute = ActionBuildExecute
    end
    object ActionExit: TAction
      Caption = 'Exit'
      OnExecute = ActionExitExecute
    end
    object ActionAbout: TAction
      Caption = 'About'
      OnExecute = ActionAboutExecute
    end
    object ActionRun: TAction
      Caption = 'Run'
    end
    object ActionEditMainWindowSkin: TAction
      Caption = 'Main Window'
      OnExecute = ActionEditMainWindowSkinExecute
    end
    object ActionEditOptionsWindowSkin: TAction
      Caption = 'Options Window'
    end
  end
  object ImageList1: TImageList
    Left = 448
    Top = 328
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B7818300B781
      8300B7818300B7818300B7818300B7818300B7818300B7818300B7818300B781
      8300B7818300B7818300B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CF905700C773
      2600C36D2200E9BEA1000000000000000000D2895B00B2500C00AB490C00A949
      1100AC501700B368410000000000000000000000000000000000636E7B00FEEE
      D400F7E3C500F6DFBC00F5DBB400F3D7AB00F3D3A200F1CF9A00F0CF9700F0CF
      9800F0CF9800F5D49A00B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D2945A00E693
      3B00CA762E00F8E3D3000000000000000000D3885B00EAA55A00DA7E1E00DA7D
      1B00DD7D1600AE551E000000000000000000000000005E98C7003489D0007F85
      9D00F6E3CB00F5DFC200F4DBBA00F2D7B200F1D4A900F1D0A200EECC9900EECC
      9700EECC9700F3D19900B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D4975E00E797
      4400D6915900000000000000000000000000E7C8B400DA9A6500DC822400DB7F
      2000DC7E1800AC4E1400000000000000000000000000000000004BB6FF00288B
      E00085849800F5E3CB00F5DFC300F3DBBB00F2D7B200F1D4AB00F0D0A300EECC
      9A00EECC9700F3D19900B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D59B6200E99C
      4C00CB7C3700F9EBE0008B8C9100A4A0AC00BAB99B00EDBD8C00BF631A00C571
      3F00D4915D00B153130000000000000000000000000000000000B48176004DB5
      FF00278BDE0079819A00F6E3CA00F5DFC200F4DBB900F2D7B200F1D4AA00F0D0
      A100EFCD9900F3D19800B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D79C6500EA9F
      5300E89E5100E3AF8100A5AEB90034B356002CB444006EA75700EED9CD000000
      0000E9C2AE00DCAA8E0000000000000000000000000000000000BA8E8500FFFC
      F4004CB9FF005A91BF00A4817900BE978E00AC7E7900BE958900D6B49B00F1D3
      AA00F0D0A100F3D29B00B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D79F6800ECA5
      5C00E9A25900F0BD86009CC7900066FF98005AEC86002EAD45008DCA90000000
      0000000000000000000000000000000000000000000000000000BA8E8500FFFF
      FD00FBF4EC00BFA19F00C7A59C00E1C9B800F2DFC600E0C3AD00C59F9000D7B4
      9B00F0D4A900F5D5A300B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9A26A00EFAB
      6500EBA66100EBAA6700E0D5AD0057E07B006AFF9D0055E17C0029A33C00A4D4
      A800000000000000000000000000000000000000000000000000CB9A8200FFFF
      FF00FEF9F500C09C9700E3CEC400F9EADA00F8E7D200FFFFF700E0C2AD00BE95
      8900F2D8B200F6D9AC00B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D9A36A00F2B2
      7000EEAC6800EDA96500EFB67D00CADCA90054EC810068FF9B0050DC7700239D
      3600ACB98400E9C0A40000000000000000000000000000000000CB9A8200FFFF
      FF00FFFEFD00AC7F7B00F8EEE700F9EFE300F8EADA00FFFFF000F3DEC700AC7E
      7900F4DBB900F8DDB400B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DEA86F00FDCB
      9A00F8C38D00F5B87C00EEAB6600F1C19100AFE0A0005AF6880064FF970042DA
      690034853B00D0BBA90000000000000000000000000000000000DCA88700FFFF
      FF00FFFFFF00C19F9C00E6D6D100FBF3EB00FAEFE200FFFFDE00E2C8B800BE97
      8D00F7E1C200F0DAB700B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F2BB7E00F0B4
      7700E9AD7200D79A6000EEB27400EEAA6500F5CCA4008ADB8B0055FC88009AC1
      A400CDBBB6006F6C8A00E7E8F700000000000000000000000000DCA88700FFFF
      FF00FFFFFF00DFCDCB00C9ACA900E6D6D100F8EEE600E3CEC400C7A59C00C3A3
      9400E6D9C400C6BCA900B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E2A46700EDAB6900EFAC6A00EBA86300E4CCB200ACD0B1000000
      00007892F500203DDC003D3EB500000000000000000000000000E3B18E00FFFF
      FF00FFFFFF00FFFFFF00DFCDCB00C19F9C00AC7F7B00C09D9700D6BAB100B885
      7A00B8857A00B8857A00B7818300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FEF4E900E9B17600F6B67700EFAD6B00F1AD6700D28C4700FDFAF8008C9A
      DF004277FF002D4AD8002E2FAF00000000000000000000000000E3B18E00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFEFC00FFFEF900E3CFC900B885
      7A00E8B27000ECA54A00C5876800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFF9F200E3AC7000FDD4AB00F2B16E00F2AD6800DC8E4000FDF8F300DADD
      F9003A4ACB003D41B800DADAEF00000000000000000000000000EDBD9200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4D4D200B885
      7A00FAC57700CD93770000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F6DBBC00DBA46600DFA86B00DA9B5800EFC69B00000000000000
      0000000000000000000000000000000000000000000000000000EDBD9200FCF7
      F400FCF7F300FBF6F300FBF6F300FAF5F300F9F5F300F9F5F300E1D0CE00B885
      7A00CF9B86000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EDBD9200DCA8
      8700DCA88700DCA88700DCA88700DCA88700DCA88700DCA88700DCA88700B885
      7A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFC00100000000C303C00100000000
      C303800100000000C703C00100000000C003C00100000000C013C00100000000
      C01FC00100000000C00FC00100000000C003C00100000000C003C00100000000
      C001C00100000000F811C00100000000F001C00100000000F001C00300000000
      F83FC00700000000FFFFC00F0000000000000000000000000000000000000000
      000000000000}
  end
  object XPManifestFile1: TXPManifestFile
    Left = 480
    Top = 328
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 144
    object MainWindow2: TMenuItem
      Action = ActionEditMainWindowSkin
    end
    object OptionsWindow2: TMenuItem
      Action = ActionEditOptionsWindowSkin
    end
  end
end
