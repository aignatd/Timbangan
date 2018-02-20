object Utama: TUtama
  Left = 271
  Top = 114
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Timbangan'
  ClientHeight = 321
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmUtama
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sbUtama: TStatusBar
    Left = 0
    Top = 296
    Width = 484
    Height = 25
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    Panels = <
      item
        Alignment = taCenter
        Width = 85
      end
      item
        Alignment = taCenter
        Text = '8080'
        Width = 65
      end
      item
        Alignment = taCenter
        Text = 'Stop'
        Width = 65
      end
      item
        Alignment = taCenter
        Text = '127.0.0.1'
        Width = 105
      end
      item
        Width = 50
      end>
    SizeGrip = False
    UseSystemFont = False
  end
  object pcUtama: TPageControl
    Left = 0
    Top = 0
    Width = 484
    Height = 296
    ActivePage = tsBesar1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clLime
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object tsBesar1: TTabSheet
      Caption = 'Timbang Besar 1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -13
      Font.Name = 'Calibri'
      Font.Style = []
      ParentFont = False
      ExplicitLeft = -16
      ExplicitTop = 45
      ExplicitHeight = 231
      DesignSize = (
        476
        265)
      object tonBesar1: TLabel
        Left = 13
        Top = 84
        Width = 450
        Height = 97
        Alignment = taCenter
        Anchors = []
        AutoSize = False
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -96
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object tbUtama: TToolBar
        Left = 0
        Top = 0
        Width = 476
        Height = 38
        AutoSize = True
        ButtonHeight = 32
        ButtonWidth = 32
        DisabledImages = imgList
        EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
        Flat = False
        Images = imgList
        Indent = 3
        TabOrder = 0
        object tbKonek1: TToolButton
          Left = 3
          Top = 0
          ImageIndex = 3
          OnClick = tbKonek1Click
        end
        object ToolButton2: TToolButton
          Left = 35
          Top = 0
          Width = 6
          Caption = 'ToolButton2'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object tbSetting1: TToolButton
          Left = 41
          Top = 0
          ImageIndex = 4
          OnClick = tbSetting1Click
        end
        object ToolButton3: TToolButton
          Left = 73
          Top = 0
          Width = 6
          Caption = 'ToolButton3'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object tbSave1: TToolButton
          Left = 79
          Top = 0
          ImageIndex = 5
          OnClick = tbSave1Click
        end
        object ToolButton5: TToolButton
          Left = 111
          Top = 0
          Width = 6
          Caption = 'ToolButton5'
          ImageIndex = 3
          Style = tbsSeparator
        end
        object tbLoad1: TToolButton
          Left = 117
          Top = 0
          Caption = 'tbLoad1'
          ImageIndex = 6
          OnClick = tbLoad1Click
        end
      end
      object cbTimbang1: TComboBox
        Left = 390
        Top = 7
        Width = 78
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        Sorted = True
        TabOrder = 1
        Text = 'GST'
        Items.Strings = (
          'GST'
          'HERBER')
      end
      object gbState1: TGroupBox
        Left = 0
        Top = 231
        Width = 476
        Height = 34
        Align = alBottom
        TabOrder = 2
        object ComLed1: TComLed
          Left = 412
          Top = 1
          Width = 32
          Height = 32
          ComPort = cpBesar1
          LedSignal = lsConn
          Kind = lkRedLight
        end
        object Label1: TLabel
          Left = 439
          Top = 8
          Width = 29
          Height = 16
          Caption = 'Conn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComLed2: TComLed
          Left = 365
          Top = 1
          Width = 32
          Height = 32
          ComPort = cpBesar1
          LedSignal = lsTx
          Kind = lkRedLight
        end
        object Label2: TLabel
          Left = 392
          Top = 9
          Width = 19
          Height = 16
          Caption = 'Trx'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object tsKecil1: TTabSheet
      Caption = 'Timbang Kecil 1'
      ImageIndex = 1
      DesignSize = (
        476
        265)
      object tonKecil1: TLabel
        Left = 13
        Top = 84
        Width = 450
        Height = 97
        Alignment = taCenter
        Anchors = []
        AutoSize = False
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -96
        Font.Name = 'Trebuchet MS'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
      end
      object ToolBar1: TToolBar
        Left = 0
        Top = 0
        Width = 476
        Height = 38
        AutoSize = True
        ButtonHeight = 32
        ButtonWidth = 32
        DisabledImages = imgList
        EdgeBorders = [ebLeft, ebTop, ebRight, ebBottom]
        Flat = False
        Images = imgList
        Indent = 3
        TabOrder = 0
        object tbKonek2: TToolButton
          Left = 3
          Top = 0
          ImageIndex = 3
          OnClick = tbKonek2Click
        end
        object ToolButton4: TToolButton
          Left = 35
          Top = 0
          Width = 6
          Caption = 'ToolButton2'
          ImageIndex = 1
          Style = tbsSeparator
        end
        object tbSetting2: TToolButton
          Left = 41
          Top = 0
          ImageIndex = 4
          OnClick = tbSetting2Click
        end
        object ToolButton7: TToolButton
          Left = 73
          Top = 0
          Width = 6
          Caption = 'ToolButton3'
          ImageIndex = 2
          Style = tbsSeparator
        end
        object tbSave2: TToolButton
          Left = 79
          Top = 0
          ImageIndex = 5
          OnClick = tbSave2Click
        end
        object ToolButton9: TToolButton
          Left = 111
          Top = 0
          Width = 6
          Caption = 'ToolButton5'
          ImageIndex = 3
          Style = tbsSeparator
        end
        object tbLoad2: TToolButton
          Left = 117
          Top = 0
          Caption = 'tbLoad1'
          ImageIndex = 6
          OnClick = tbLoad2Click
        end
      end
      object cbTimbang2: TComboBox
        Left = 390
        Top = 7
        Width = 78
        Height = 24
        Style = csDropDownList
        Anchors = [akTop, akRight]
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        Sorted = True
        TabOrder = 1
        Text = 'GST'
        Items.Strings = (
          'GST'
          'HERBER')
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 231
        Width = 476
        Height = 34
        Align = alBottom
        TabOrder = 2
        object ComLed3: TComLed
          Left = 412
          Top = 1
          Width = 32
          Height = 32
          ComPort = cpKecil1
          LedSignal = lsConn
          Kind = lkRedLight
        end
        object Label3: TLabel
          Left = 439
          Top = 8
          Width = 29
          Height = 16
          Caption = 'Conn'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object ComLed4: TComLed
          Left = 365
          Top = 1
          Width = 32
          Height = 32
          ComPort = cpKecil1
          LedSignal = lsTx
          Kind = lkRedLight
        end
        object Label4: TLabel
          Left = 392
          Top = 9
          Width = 19
          Height = 16
          Caption = 'Trx'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 450
    Top = 64
  end
  object mmUtama: TMainMenu
    Images = imgList
    Left = 452
    Top = 146
    object Browser1: TMenuItem
      Caption = '&Browser'
      OnClick = Browser1Click
    end
    object imbangan1: TMenuItem
      Caption = '&Host'
      object mmStart: TMenuItem
        Caption = 'St&art'
        ImageIndex = 1
        OnClick = mmStartClick
      end
      object mmSetting: TMenuItem
        Caption = '&Port'
        ImageIndex = 2
        OnClick = mmSettingClick
      end
    end
  end
  object imgList: TImageList
    Left = 450
    Top = 120
    Bitmap = {
      494C010107002400800010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000053371C005F46
      2B00563C20005A574C005DBDF9005EC0FD005EBFFD005FBFFD0055AAFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FF862400FF892400FF882400FF872300FF993300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000716347006F5F41006F5F
      41006F5F41006B5E430072613E0000000000000000005A412600F5F3F100E0E2
      FC00AFB6F900F5F6FE00BEB4AA005A8398005EBFFD005EBFFD005EBFFD005EBF
      FD0000000000000000000000000000000000000000000000000000000000FF89
      2300FF882400FF882400FF882400FF882400FF882400FF882400FF882400FF86
      2400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006F5F41006F5F41006F5E
      40006F5F41006F5F41006F5F4000000000005B402500FFFFFF005261F1005160
      F1005160F1005160F100707DF400F3F1EF005B7884005EBFFD005EBFFD005EBF
      FD005EBFFD005BBFFF0000000000000000000000000000000000FF882400FF88
      2400FF882400FF882500FF8E1C000000000000000000FF872400FF882400FF88
      2400FF8725000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000705E41006F5F4100000000000000
      000000000000715C40006F5F41006F5F4100A6998A006471F3005160F1005160
      F1005160F1005160F1005160F1006875F300F3F1EF005B7884005EBFFD005EBF
      FD005EBFFD005EBFFD00000000000000000000000000FF882400FF882400FF88
      230000000000000000000000000000000000000000000000000000000000FF88
      2400FF882400FF88250000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CC9933000000
      0000D1A72600000000000000000000000000706040006F5F4100000000000000
      000000000000000000006F5F410000000000E8E5E1005160F1005160F1005160
      F100515FE900514D900051404A005160F1006A77F300F3F1EF005B7884005EBF
      FD005EBFFD005EBFFD005EBFFD0000000000FF862400FF882400FF8824000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF882400FF88240000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D1A62600D1A6
      2600D1A62600D1A62500D1A62600000000006F5F41006F5F4100000000000000
      000000000000000000006F5F41006F5F4100D4CDC6005160F1005160F1005160
      F10051392B005160F100514D90005160F1005160F1006C78F300F3F1EF005B78
      84005EBFFD005EBFFD005EBFFD0000000000FF882400FF882400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FF8B2E000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D0A62600D1A62600D1A62600D1A5
      2700D2A52600D1A62600D1A62600D1A52700000000006F5F41006F5F41006666
      4D006C5D3E006F5F41006F5F410000000000796A580098A1F7005160F1005160
      F1005157C300513D3F005160F1005160F1005160F1005160F1006E7AF300F3F1
      EF005B7884005EBFFD005EBFFD005FBEFD00FF882400FF882400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D5A32300D1A62600000000000000
      00000000000000000000D1A62600D1A6260000000000705E41006F5F42006F5F
      41006F5F4100705F4000705F4000000000005CAAD900EDEBE800616FF2005160
      F1005160F1005160F1005160F1005160F1005160F100616FF2005261F100FFFF
      FF005B564A005EBFFD005EBFFD005EC0FD00FF882400FF892500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1A62600D1A52700000000000000
      00000000000000000000D0A62500D1A62600D3A82400000000006D613D006666
      33006F5D41000000000000000000000000005EBFFD005B788400F3F1EF00616E
      F2005160F1005160F1005160F1005C6AF2005462F1005261F100FFFFFF006A56
      40005B8FAC005EBFFD005EBFFD005DBFFE00FF882400FF892300000000000000
      000000000000000000000000000000000000CE5B0000CD600000CD600000CD60
      0000CD600000CD600000CD600000D05E05000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D2A52600D1A62600000000000000
      00000000000000000000D1A62600D1A62600D1A2230000000000908063009080
      63008E8E55008E845E0000000000000000005EBFFD005EBFFD005B788400F3F1
      EF00606EF2005160F1007782F4005160F1005261F100FFFFFF006B584200FFFF
      FF00E2DDD8005B8FAC005EBFFD005EBFFD00FF882400FF882400000000000000
      00000000000000000000000000000000000000000000CE5E0000CE5E0000CE5E
      0000CE5E0000CE5E0000CE5E0000FF8824000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1A62600D1A62600D1A526000000
      000000000000D0A62400D1A62600D1A626009081640090806300918064009080
      6400908063009080630000000000000000005EBFFD005EBFFD005EBFFD005B78
      8400F3F1EF005F6DF2005160F1005261F100FFFFFF006C594300FFFFFF00FFFF
      FF00FFFFFF00E2DED9005B8FAC0060BFFF00FF882400FF882400000000000000
      0000000000000000000000000000000000000000000000000000CE5E0000CE5E
      0000CE5E0000CE5E0000FF882400FF8824000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1A62500D1A62600D1A6
      2600D1A62600D1A62600D1A52600D2A528009180630090806300000000000000
      0000000000009080630092806200000000005DBEFD005EBFFD005EBFFD005EBF
      FD005B788400F3F1EF00606EF200FFFFFF006D5B4500FFFFFF00FFFFFF00FFFF
      FF00EDEBE900FFFFFF00E3DFDA00553A1E00FF892500FF882400FF8824000000
      000000000000000000000000000000000000000000000000000000000000CE5E
      0000CE5E0000FF882400FF882400FF8824000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8A42400CC993300D1A7
      2600D0A62600D1A52700CCA32900000000009180630091806400000000000000
      000000000000908063009180640000000000000000005EBFFD005EBFFD005EBF
      FD005EBFFD005B788400F3F1EF00584D3C00E9E6E200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF007C6955005555000000000000FF882400FF882400FF87
      240000000000000000000000000000000000000000000000000000000000FF88
      2400FF882400FF882400FF882400FF8824000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009080630090806300000000000000
      0000000000009080630000000000000000000000000055BFFF005EBFFD005EBF
      FD005EBFFD005EBFFD0059879F005EBFFD005B8FAC00E7E3DF00FFFFFF00DBD8
      D400FFFFFF007B6A570055550000000000000000000000000000FF882400FF88
      2400FF882400FF8B2700000000000000000000000000FF882600FF882400FF88
      2400FF882400FF882400FF882400FF8824000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090806300908063009080
      63009080630090816400000000000000000000000000000000005DB9FF005EBF
      FD005EBFFD005EBFFD005EBFFD005EBFFD005EBFFD005B8FAC00E5E1DD00FFFF
      FF007B6A5600555500000000000000000000000000000000000000000000FF88
      2400FF882400FF882400FF882400FF882400FF882400FF882400FF882400FF88
      24000000000000000000FF882400FF8824000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000008F8364008E80
      62008F8164000000000000000000000000000000000000000000000000000000
      00005EBFFD005EBFFD005EBFFD005EBFFD005EBFFD005EBFFD005A859C007864
      4D00555500000000000000000000000000000000000000000000000000000000
      000000000000FF872400FF882400FF882400FF872400FF882200000000000000
      0000000000000000000000000000FF8824000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A57D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A57
      D700000000000000000000000000000000000000000000000000000000000000
      0000AED04A00ABCD4800ACCF4700AACC45009CBE39009EBF3A00A1C13D00A3C3
      4000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000001D69DE001D69DE0000000000000000000000
      0000000000000000000000000000000000000000000000000000CD720000CE71
      0000CE710000CE71000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B5B
      D6004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004B5BD600000000000000000000000000000000000000000000000000ADCD
      4700ACCE4600ACCE4700AACC45009CBD38009ABB36009ABB36009ABB36009ABB
      3600A0C13C00AAAA000000000000000000000000000000000000000000000000
      00000000000000000000000000001C6ADC001C6ADC0000000000000000000000
      00000000000000000000000000000000000070665D0070665C00B7865D00DC96
      5E00DC965E00DC965E0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B5AD8004A5A
      D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004A5AD7004B5AD80000000000000000000000000000000000ACCE4600ACCE
      4700ACCE4700AACC45009EBE3C00ADC75D00ADC75D009CBC3A009ABB36009ABB
      36009ABB36009EBF3A00AAAA0000000000000000000000000000000000000000
      00000000000000000000000000001C6ADC001C6ADC0000000000000000000000
      0000000000000000000000000000000000009E989200746D6400BF947100DC96
      5E00DC965E00DC965E0071665B0071665B0071665B0071665B0071665B007166
      5B006F665D00776655000000000000000000000000004B5BD6004A5AD7004A5A
      D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004A5AD7004A5AD7004B5BD6000000000000000000ADCD4700ACCE4700ACCE
      4700AECE4D00C8D89000C2D48600B0C96200B0C96200C2D48600C7D78F009EBE
      3E009ABB36009ABB3600A0C13C00000000000000000000000000000000000000
      00000000000000000000000000001C6ADC001C6ADC0000000000000000000000
      0000000000000000000000000000000000009E989200ADA9A400BF947100DC96
      5E00DC965E00DC965E0071675C0071675C0071675C0071675C0071675C007167
      5C0070675D0070665C0070675C00000000004A57D7004A5AD7004A5AD7004A5A
      D700D8DCF600DFE2F800DFE2F800DFE2F800DFE2F800DFE2F800DFE2F800D8DC
      F6004A5AD7004A5AD7004A5AD7004A57D700AED04A00ACCE4600ACCE4700AFCF
      4E00CDDB9B009FBE40009ABB36009ABB36009ABB36009ABB36009FBE4000CCDA
      9A009EBE3F009ABB36009ABB3600A3C340000000000000000000148FEB000000
      00000000000000000000000000001C6ADC001C6ADC0000000000000000000000
      000000000000148FEB000000000000000000A4A0990087817900C4977300DC96
      5E00DC965E00DC965E0000000000000000000000000000000000000000000000
      000000000000000000006F665D006F6459004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ABCD4800ACCE4700ACCE4700CADB
      93009FBE40009ABB36009ABB36009CBC3A009CBC3A009ABB36009ABB36009FBE
      4000C7D78F009ABB36009ABB3600A1C23C00000000001685E900198AEE001CC6
      E3000000000000000000000000001C6ADC001C6ADC0000000000000000000000
      00001CC6E300198AEE00148FEB00000000000000000000000000DD975E00DC96
      5E00DC965E00DC965E0000000000000000000000000000000000000000000000
      0000000000000000000071665B0070655D004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ACCF4700ACCE4700AECF4B00C2D4
      86009ABB36009ABB36009ABB3600AFC86000AFC860009ABB36009ABB36009ABB
      3600C2D486009CBC3A009ABB36009EBF3A00000000001989ED00108FEF0016BA
      EB000000000000000000000000001C6ADC001C6ADC0000000000000000000000
      000016BAEB001188EE001A8BEC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000070675C0071665B004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ACCE4700ACCE4700B9D36700B0C9
      62009ABB36009ABB36009ABB3600AFC86000AFC860009ABB36009ABB36009ABB
      3600B0C96200ADC75D009ABB36009DBF39001B89EC00198BEC0017BAEA0018B8
      EC004ACEEE0044CCEE00000000001C6ADC001C6ADC000000000044CCEE004ACE
      EE0018B8EC0017BAEA001A89EB00198AED000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000070665C0070665C00000000004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ACCE4700ACCE4700B9D36800B0C9
      62009ABB36009ABB36009ABB3600AFC86000AFC860009ABB36009ABB36009ABB
      3600B0C96200ADC75D009CBE3800AACC4500188AED001489EB0016BAEB0049CE
      ED004ACFEF0000000000000000001E68DB001E68DB0000000000000000004ACF
      EF0049CEED0016BAEB001580EA001A89ED000000000070665C0070665C007066
      5C0070665C0070665C0070665C0070665C0070665C0070665C0070665C007066
      5C0070665C0070675C0000000000000000004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ACCF4700ACCE4700AECF4B00C2D5
      86009ABB36009ABB36009ABB3600AFC86000AFC860009ABB36009ABB36009ABB
      3600C2D486009EBE3C00AACC4500ACCF47001989ED0011BBEE0015B9EC0049CD
      EE0047CCEB00000000001D69DB001D69DC001D69DC001D69DB000000000047CC
      EB0049CDEE0015B9EC0011BBEE00198AED0070665B006F655C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ABCD4800ACCE4700ACCE4700CADB
      93009FBE40009ABB36009ABB3600A1BF4300A1BF43009ABB36009ABB36009FBE
      4000C8D89000AACC4500ACCE4700ADCF46001989ED0018B8ED0016BAEC004BCD
      F00000000000000000001D69DC001D69DC001D69DC001D69DC00000000000000
      00004BCDF00016BAEC0018B8ED001989ED0070665C0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A57D7004A5AD7004A5AD7004A5A
      D700D8DCF600DFE2F800DFE2F800DFE2F800DFE2F800DFE2F800DFE2F800D8DC
      F6004A5AD7004A5AD7004A5AD7004A57D700AED04A00ACCE4600ACCE4700AFCF
      4E00CDDB9B009FBE40009ABB36009ABB36009ABB36009ABB36009FBE4000CDDB
      9B00AECE4D00ACCE4700ACCE4600AED04A001989ED0024B6DB0016BAEB004BCF
      EF004CCFF10000000000216BDE001C68DC001C68DC00216BDE00000000004CCF
      F1004BCFEF0016BAEB0024B6DB00198AED0070665C0000000000000000000000
      00000000000000000000000000000000000000000000CE710100CE710000CE71
      0000CE710000706060007060600000000000000000004B5BD6004A5AD7004A5A
      D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004A5AD7004A5AD7004B5BD6000000000000000000ADCD4700ACCE4700ACCE
      4700AFCF4E00CADB9300C2D58600B0C96200B0C96200C2D48600CADB9300AECF
      4E00ACCE4700ACCE4700ADCD470000000000198BED00148FEB0016BAEA004DCC
      F2004ACFEE000000000000000000000000000000000000000000000000004ACF
      EE004DCCF20016BAEA001685E900188AED0070665C0070665B00000000000000
      00000000000000000000000000000000000000000000DB965E00DC965E00DC96
      5E00DC965E00A49F9900A49F99000000000000000000000000004B5AD8004A5A
      D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004A5AD7004B5AD80000000000000000000000000000000000ACCE4600ACCE
      4700ACCE4700ACCE4700AECF4B00B9D36800B9D36700AECF4B00ACCE4700ACCE
      4700ACCE4700ACCE460000000000000000001A8CEC00198BED0017BAEC0015BB
      EA004ACDED0049C8ED000000000000000000000000000000000049C8ED004ACD
      ED0015BBEA0017BAEC00198BED001788EE000000000070665C0070665C007066
      5C0070665C0070665C0070665C0070665C0070665C00C38B5E00DC965E00DC96
      5E00DC965E009A958F007E777000000000000000000000000000000000004B5B
      D6004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004B5BD600000000000000000000000000000000000000000000000000ADCD
      4700ACCE4600ACCE4700ACCE4700ACCE4700ACCE4700ACCE4700ACCE4700ACCE
      4600ADCD4700000000000000000000000000000000001A8AEE001989EC0016BA
      EB00000000000000000000000000000000000000000000000000000000000000
      000016BAEB001A89EB00198BEC00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DB965E00DC965E00DC96
      5E00DC965E0097928C0077706700000000000000000000000000000000000000
      00004A57D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A57
      D700000000000000000000000000000000000000000000000000000000000000
      0000AED04A00ABCD4800ACCF4700ACCE4700ACCE4700ACCF4700ABCD4800AED0
      4A0000000000000000000000000000000000000000000099FF00188BED000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000001A89ED000099FF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DB965E00DC965E00DC96
      5E00DC965E00ADAAA400ADAAA40000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFC01FF83F0000FF81800FE00F0000
      FF810003C1870000FF3800038FE30000D73D00011FF30000C13C00013FF70000
      008100003FFF00003C8100003FFF00003C4700003F0000003C4300003F800000
      180300003FC00000803900001FE00000813980008FE00000FF3B8001C3800000
      FF83C003E00C0000FFC7F007F83E0000F00FF00FFE7FC3FFE007E003FE7F03FF
      C003C001FE7F000380018001FE7F000100000000DE7B03FC000000008E71C3FC
      000000008E71FFFC000000000240FFF900000000066080030000000004203FFF
      000000000C307FFF0000000004207F818001800107E03F81C003C00303C08001
      E007E0078FF1FF81F00FF00F9FF9FF8100000000000000000000000000000000
      000000000000}
  end
  object tUtama: TTimer
    OnTimer = tUtamaTimer
    Left = 450
    Top = 94
  end
  object cpBesar1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnAfterOpen = cpBesar1AfterOpen
    OnAfterClose = cpBesar1AfterClose
    OnRxChar = cpBesar1RxChar
    Left = 452
    Top = 174
  end
  object cpKecil1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnAfterOpen = cpKecil1AfterOpen
    OnAfterClose = cpKecil1AfterClose
    OnRxChar = cpKecil1RxChar
    Left = 452
    Top = 202
  end
end
