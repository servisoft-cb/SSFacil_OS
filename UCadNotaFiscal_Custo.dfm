object frmCadNotaFiscal_Custo: TfrmCadNotaFiscal_Custo
  Left = 340
  Top = 127
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCadNotaFiscal_Custo'
  ClientHeight = 436
  ClientWidth = 589
  Color = clBtnFace
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
  object pnlDigitacao: TNxPanel
    Left = 0
    Top = 0
    Width = 589
    Height = 42
    Align = alTop
    Ctl3D = True
    UseDockManager = False
    Enabled = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 1
    object Label1: TLabel
      Left = 11
      Top = 2
      Width = 56
      Height = 13
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 243
      Top = 2
      Width = 18
      Height = 13
      Caption = '+ -'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label3: TLabel
      Left = 273
      Top = 2
      Width = 29
      Height = 13
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBEdit1: TDBEdit
      Left = 11
      Top = 18
      Width = 225
      Height = 20
      Ctl3D = False
      DataField = 'DESCRICAO'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Custo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 235
      Top = 18
      Width = 37
      Height = 20
      Ctl3D = False
      DataField = 'SD'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Custo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = DBEdit2Exit
    end
    object DBEdit3: TDBEdit
      Left = 271
      Top = 18
      Width = 133
      Height = 20
      Ctl3D = False
      DataField = 'VALOR'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Custo
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 416
      Top = 16
      Width = 161
      Height = 17
      Caption = 'Frete Pago pelo Emitente'
      DataField = 'FRETE'
      DataSource = DMCadNotaFiscal.dsNotaFiscal_Custo
      TabOrder = 3
      ValueChecked = 'S'
      ValueUnchecked = 'N'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 589
    Height = 28
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    TabOrder = 0
    object btnConfirmar: TNxButton
      Left = 154
      Top = 3
      Width = 75
      Caption = 'Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnConfirmarClick
    end
    object btnAlterar: TNxButton
      Left = 80
      Top = 3
      Width = 75
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnAlterarClick
    end
    object btnExcluir: TNxButton
      Left = 302
      Top = 3
      Width = 75
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = btnExcluirClick
    end
    object btnInserir: TNxButton
      Left = 6
      Top = 3
      Width = 75
      Caption = 'Inserir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnInserirClick
    end
    object btnCancelar: TNxButton
      Left = 228
      Top = 3
      Width = 75
      Caption = 'Cancelar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnCancelarClick
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 70
    Width = 589
    Height = 325
    TabStop = False
    Align = alClient
    Ctl3D = False
    DataSource = DMCadNotaFiscal.dsNotaFiscal_Custo
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'MS Sans Serif'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 6
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM'
        Width = 32
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 210
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Verdana'
        Title.Font.Style = []
        Width = 33
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Width = 122
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'FRETE'
        Title.Alignment = taCenter
        Title.Caption = 'Frete'
        Width = 36
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 395
    Width = 589
    Height = 41
    Align = alBottom
    Color = clSilver
    TabOrder = 3
    object Label4: TLabel
      Left = 200
      Top = 16
      Width = 39
      Height = 16
      Caption = 'Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 241
      Top = 10
      Width = 121
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object NxButton1: TNxButton
      Left = 449
      Top = 10
      Width = 128
      Caption = 'Gravar na Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = NxButton1Click
    end
  end
end
