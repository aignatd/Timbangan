object Utama: TUtama
  Left = 271
  Top = 114
  BorderIcons = [biSystemMenu]
  Caption = 'Timbangan'
  ClientHeight = 235
  ClientWidth = 399
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mmUtama
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 20
    Height = 13
    Caption = 'Port'
  end
  object EditPort: TEdit
    Left = 24
    Top = 67
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '8080'
  end
  object ButtonOpenBrowser: TButton
    Left = 24
    Top = 112
    Width = 107
    Height = 25
    Caption = 'Open Browser'
    TabOrder = 1
    OnClick = ButtonOpenBrowserClick
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 310
  end
  object mmUtama: TMainMenu
    Images = imgList
    Left = 368
    object mmData: TMenuItem
      Caption = '&Data'
    end
    object imbangan1: TMenuItem
      Caption = '&Host'
      object mmStart: TMenuItem
        Caption = 'St&art'
        ImageIndex = 1
        OnClick = mmStartClick
      end
      object mmSetting: TMenuItem
        Caption = '&Setting'
      end
    end
    object mmKeluar: TMenuItem
      Caption = '&Keluar'
    end
  end
  object imgList: TImageList
    Left = 338
    Bitmap = {
      494C010102002400380010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      00004A57D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A57
      D700000000000000000000000000000000000000000000000000000000000000
      0000AED04A00ABCD4800ACCF4700AACC45009CBE39009EBF3A00A1C13D00A3C3
      4000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B5B
      D6004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004B5BD600000000000000000000000000000000000000000000000000ADCD
      4700ACCE4600ACCE4700AACC45009CBD38009ABB36009ABB36009ABB36009ABB
      3600A0C13C00AAAA000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B5AD8004A5A
      D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004A5AD7004B5AD80000000000000000000000000000000000ACCE4600ACCE
      4700ACCE4700AACC45009EBE3C00ADC75D00ADC75D009CBC3A009ABB36009ABB
      36009ABB36009EBF3A00AAAA0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B5BD6004A5AD7004A5A
      D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004A5AD7004A5AD7004B5BD6000000000000000000ADCD4700ACCE4700ACCE
      4700AECE4D00C8D89000C2D48600B0C96200B0C96200C2D48600C7D78F009EBE
      3E009ABB36009ABB3600A0C13C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A57D7004A5AD7004A5AD7004A5A
      D700D8DCF600DFE2F800DFE2F800DFE2F800DFE2F800DFE2F800DFE2F800D8DC
      F6004A5AD7004A5AD7004A5AD7004A57D700AED04A00ACCE4600ACCE4700AFCF
      4E00CDDB9B009FBE40009ABB36009ABB36009ABB36009ABB36009FBE4000CCDA
      9A009EBE3F009ABB36009ABB3600A3C340000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ABCD4800ACCE4700ACCE4700CADB
      93009FBE40009ABB36009ABB36009CBC3A009CBC3A009ABB36009ABB36009FBE
      4000C7D78F009ABB36009ABB3600A1C23C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ACCF4700ACCE4700AECF4B00C2D4
      86009ABB36009ABB36009ABB3600AFC86000AFC860009ABB36009ABB36009ABB
      3600C2D486009CBC3A009ABB36009EBF3A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ACCE4700ACCE4700B9D36700B0C9
      62009ABB36009ABB36009ABB3600AFC86000AFC860009ABB36009ABB36009ABB
      3600B0C96200ADC75D009ABB36009DBF39000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ACCE4700ACCE4700B9D36800B0C9
      62009ABB36009ABB36009ABB3600AFC86000AFC860009ABB36009ABB36009ABB
      3600B0C96200ADC75D009CBE3800AACC45000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ACCF4700ACCE4700AECF4B00C2D5
      86009ABB36009ABB36009ABB3600AFC86000AFC860009ABB36009ABB36009ABB
      3600C2D486009EBE3C00AACC4500ACCF47000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A5AD7004A5AD7004A5AD7004A5A
      D700DFE2F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFE2
      F8004A5AD7004A5AD7004A5AD7004A5AD700ABCD4800ACCE4700ACCE4700CADB
      93009FBE40009ABB36009ABB3600A1BF4300A1BF43009ABB36009ABB36009FBE
      4000C8D89000AACC4500ACCE4700ADCF46000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004A57D7004A5AD7004A5AD7004A5A
      D700D8DCF600DFE2F800DFE2F800DFE2F800DFE2F800DFE2F800DFE2F800D8DC
      F6004A5AD7004A5AD7004A5AD7004A57D700AED04A00ACCE4600ACCE4700AFCF
      4E00CDDB9B009FBE40009ABB36009ABB36009ABB36009ABB36009FBE4000CDDB
      9B00AECE4D00ACCE4700ACCE4600AED04A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004B5BD6004A5AD7004A5A
      D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004A5AD7004A5AD7004B5BD6000000000000000000ADCD4700ACCE4700ACCE
      4700AFCF4E00CADB9300C2D58600B0C96200B0C96200C2D48600CADB9300AECF
      4E00ACCE4700ACCE4700ADCD4700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004B5AD8004A5A
      D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004A5AD7004B5AD80000000000000000000000000000000000ACCE4600ACCE
      4700ACCE4700ACCE4700AECF4B00B9D36800B9D36700AECF4B00ACCE4700ACCE
      4700ACCE4700ACCE460000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004B5B
      D6004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5A
      D7004B5BD600000000000000000000000000000000000000000000000000ADCD
      4700ACCE4600ACCE4700ACCE4700ACCE4700ACCE4700ACCE4700ACCE4700ACCE
      4600ADCD47000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004A57D7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A5AD7004A57
      D700000000000000000000000000000000000000000000000000000000000000
      0000AED04A00ABCD4800ACCF4700ACCE4700ACCE4700ACCF4700ABCD4800AED0
      4A00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F00FF00F00000000E007E00300000000
      C003C00100000000800180010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008001800100000000C003C00300000000
      E007E00700000000F00FF00F0000000000000000000000000000000000000000
      000000000000}
  end
end
