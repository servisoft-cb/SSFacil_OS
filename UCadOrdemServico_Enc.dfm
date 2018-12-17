object frmCadOrdemServico_Enc: TfrmCadOrdemServico_Enc
  Left = 283
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadOrdemServico_Enc'
  ClientHeight = 294
  ClientWidth = 701
  Color = clMoneyGreen
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 282
    Top = 16
    Width = 46
    Height = 18
    Alignment = taRightJustify
    Caption = 'Data:'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 282
    Top = 68
    Width = 46
    Height = 18
    Alignment = taRightJustify
    Caption = 'Data:'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 120
    Width = 41
    Height = 18
    Caption = 'OBS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 483
    Top = 16
    Width = 45
    Height = 18
    Alignment = taRightJustify
    Caption = 'Hora:'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 483
    Top = 66
    Width = 45
    Height = 18
    Alignment = taRightJustify
    Caption = 'Hora:'
    Color = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 253
    Width = 701
    Height = 41
    Align = alBottom
    Color = 8404992
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 256
      Top = 8
      Width = 102
      Height = 25
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333377FF333333333000033334224333333333333
        337777FF333333330000333422224333333333333777777FF333333300003342
        2222243333333333777777777F333333000034222A22224333333337777F7777
        7F33333300003222A3A222433333333777F3F7777FF3333300003A2A333A2224
        333333377F333F7777FF3333000033A33333A22243333333F33333F7777FF333
        0000333333333A22243333333333333F7777FF3300003333333333A222433333
        33333333F7777F33000033333333333A22243333333333333F7777F300003333
        33333333A22243333333333333F7777F00003333333333333A22433333333333
        333F7773000033333333333333A22333333333333333F7730000333333333333
        333A33333333333333333F330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 358
      Top = 8
      Width = 102
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033337733333333333333333F333333333333
        0000333911733333973333333377F333333F3333000033391117333911733333
        37F37F333F77F33300003339111173911117333337F337F3F7337F3300003333
        911117111117333337F3337F733337F3000033333911111111733333337F3337
        3333F7330000333333911111173333333337F333333F73330000333333311111
        7333333333337F3333373333000033333339111173333333333337F333733333
        00003333339111117333333333333733337F3333000033333911171117333333
        33337333337F333300003333911173911173333333373337F337F33300003333
        9117333911173333337F33737F337F33000033333913333391113333337FF733
        37F337F300003333333333333919333333377333337FFF730000333333333333
        3333333333333333333777330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object DBDateEdit1: TDBDateEdit
    Left = 333
    Top = 13
    Width = 140
    Height = 21
    DataField = 'DTPROCESSO'
    DataSource = DMCadOrdemServico.dsOrdemServico_Enc
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 1
  end
  object DBDateEdit2: TDBDateEdit
    Left = 333
    Top = 65
    Width = 140
    Height = 21
    DataField = 'DTMATERIAL'
    DataSource = DMCadOrdemServico.dsOrdemServico_Enc
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    NumGlyphs = 2
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
  end
  object DBCheckBox1: TDBCheckBox
    Left = 32
    Top = 17
    Width = 225
    Height = 17
    Caption = 'Encerrar os Processos'
    DataField = 'PROCESSO'
    DataSource = DMCadOrdemServico.dsOrdemServico_Enc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    OnClick = DBCheckBox1Click
  end
  object DBCheckBox2: TDBCheckBox
    Left = 32
    Top = 69
    Width = 225
    Height = 17
    Caption = 'Encerrar os Materiais'
    DataField = 'MATERIAL'
    DataSource = DMCadOrdemServico.dsOrdemServico_Enc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    ValueChecked = 'S'
    ValueUnchecked = 'N'
    OnClick = DBCheckBox2Click
  end
  object DBMemo1: TDBMemo
    Left = 72
    Top = 112
    Width = 593
    Height = 129
    Ctl3D = False
    DataField = 'OBS'
    DataSource = DMCadOrdemServico.dsOrdemServico_Enc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object RzDBDateTimeEdit1: TRzDBDateTimeEdit
    Left = 529
    Top = 13
    Width = 97
    Height = 21
    TabStop = False
    DataSource = DMCadOrdemServico.dsOrdemServico_Enc
    DataField = 'HRPROCESSO'
    AutoSize = False
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnlyColor = clSilver
    TabOrder = 6
    EditType = etTime
    Format = 'hh:nn:ss'
  end
  object RzDBDateTimeEdit2: TRzDBDateTimeEdit
    Left = 529
    Top = 63
    Width = 97
    Height = 21
    TabStop = False
    DataSource = DMCadOrdemServico.dsOrdemServico_Enc
    DataField = 'HRMATERIAL'
    AutoSize = False
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    ReadOnlyColor = clSilver
    TabOrder = 7
    EditType = etTime
    Format = 'hh:nn:ss'
  end
end
