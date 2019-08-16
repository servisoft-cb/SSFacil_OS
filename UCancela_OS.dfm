object frmCancela_OS: TfrmCancela_OS
  Left = 278
  Top = 142
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frmCancela_OS'
  ClientHeight = 449
  ClientWidth = 920
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 69
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object RzGroupBox3: TRzGroupBox
      Left = 1
      Top = 1
      Width = 218
      Height = 67
      Align = alLeft
      BorderColor = clBlue
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Qtd. Pe'#231'a '
      Color = clSilver
      Ctl3D = True
      FlatColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      VisualStyle = vsGradient
      object Label1: TLabel
        Left = 75
        Top = 22
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd.:'
      end
      object Label2: TLabel
        Left = 30
        Top = 42
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'J'#225' Cancelada:'
      end
      object CurrencyEdit1: TCurrencyEdit
        Left = 103
        Top = 14
        Width = 90
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clSilver
        Ctl3D = False
        DecimalPlaces = 3
        DisplayFormat = '0.###'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object CurrencyEdit2: TCurrencyEdit
        Left = 103
        Top = 34
        Width = 90
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clSilver
        Ctl3D = False
        DecimalPlaces = 3
        DisplayFormat = '0.###'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object RzGroupBox1: TRzGroupBox
      Left = 219
      Top = 1
      Width = 218
      Height = 67
      Align = alLeft
      BorderColor = clRed
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Qtd. KG '
      Color = clSilver
      Ctl3D = True
      FlatColor = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      VisualStyle = vsGradient
      object Label3: TLabel
        Left = 78
        Top = 22
        Width = 23
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd.:'
      end
      object Label4: TLabel
        Left = 33
        Top = 42
        Width = 68
        Height = 13
        Alignment = taRightJustify
        Caption = 'J'#225' Cancelada:'
      end
      object CurrencyEdit3: TCurrencyEdit
        Left = 103
        Top = 14
        Width = 90
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clSilver
        Ctl3D = False
        DecimalPlaces = 3
        DisplayFormat = '0.###'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object CurrencyEdit4: TCurrencyEdit
        Left = 103
        Top = 34
        Width = 90
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clSilver
        Ctl3D = False
        DecimalPlaces = 3
        DisplayFormat = '0.###'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object RzGroupBox2: TRzGroupBox
      Left = 437
      Top = 1
      Width = 339
      Height = 67
      Align = alLeft
      BorderColor = clRed
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Qtd. Pedido '
      Color = clSilver
      Ctl3D = True
      FlatColor = clGreen
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      VisualStyle = vsGradient
      object Label9: TLabel
        Left = 29
        Top = 22
        Width = 72
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd. Pendente:'
      end
      object Label10: TLabel
        Left = 19
        Top = 42
        Width = 82
        Height = 13
        Alignment = taRightJustify
        Caption = 'Qtd. J'#225' Faturada:'
      end
      object Label11: TLabel
        Left = 243
        Top = 14
        Width = 51
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186' Pedido:'
      end
      object CurrencyEdit5: TCurrencyEdit
        Left = 103
        Top = 14
        Width = 90
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clSilver
        Ctl3D = False
        DecimalPlaces = 3
        DisplayFormat = '0.###'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object CurrencyEdit6: TCurrencyEdit
        Left = 103
        Top = 34
        Width = 90
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clSilver
        Ctl3D = False
        DecimalPlaces = 3
        DisplayFormat = '0.###'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object ceNumPedido: TCurrencyEdit
        Left = 231
        Top = 29
        Width = 90
        Height = 21
        TabStop = False
        AutoSize = False
        Color = clSilver
        Ctl3D = False
        DecimalPlaces = 3
        DisplayFormat = '0.###'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
    end
  end
  object NxPanel1: TNxPanel
    Left = 0
    Top = 69
    Width = 920
    Height = 124
    Align = alTop
    UseDockManager = False
    ParentBackground = False
    TabOrder = 1
    object Label5: TLabel
      Left = 41
      Top = 17
      Width = 145
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. Pe'#231'a Para Cancelar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 51
      Top = 37
      Width = 135
      Height = 13
      Alignment = taRightJustify
      Caption = 'Qtd. KG Para Cancelar:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 154
      Top = 57
      Width = 32
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 144
      Top = 77
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Motivo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 485
      Top = 99
      Width = 5
      Height = 16
      Caption = '.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ceQtdPeca: TCurrencyEdit
      Left = 189
      Top = 9
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '0.###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
    end
    object ceQtdKG: TCurrencyEdit
      Left = 189
      Top = 29
      Width = 121
      Height = 21
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 3
      DisplayFormat = '0.###'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DateEdit1: TDateEdit
      Left = 189
      Top = 49
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 189
      Top = 69
      Width = 682
      Height = 19
      Ctl3D = False
      MaxLength = 200
      ParentCtl3D = False
      TabOrder = 3
    end
    object NxButton1: TNxButton
      Left = 189
      Top = 95
      Width = 134
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = NxButton1Click
    end
    object NxButton2: TNxButton
      Left = 334
      Top = 96
      Width = 134
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = NxButton2Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 193
    Width = 920
    Height = 256
    Align = alClient
    Ctl3D = False
    DataSource = DMCanc_OS.dsOrdemServico_Canc
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
    ColCount = 7
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'ITEM_CANC'
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Color = 7012351
        Width = 29
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Title.Color = 7012351
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. Pe'#231'a'
        Title.Color = 7012351
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD_NOTA'
        Title.Alignment = taCenter
        Title.Caption = 'Qtd. KG'
        Title.Color = 7012351
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'USUARIO'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Title.Color = 7012351
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MOTIVO'
        Title.Alignment = taCenter
        Title.Caption = 'Motivo'
        Title.Color = 7012351
        Width = 538
        Visible = True
      end>
  end
end
