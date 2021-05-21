object frmCadOrc_Custo: TfrmCadOrc_Custo
  Left = 60
  Top = 17
  Width = 1262
  Height = 696
  BorderIcons = [biSystemMenu]
  Caption = 'frmCadOrc_Custo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 8
    Top = 528
    Width = 39
    Height = 13
    Caption = 'Escopo:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1237
    Height = 188
    Align = alTop
    TabOrder = 0
    object RzGroupBox1: TRzGroupBox
      Left = 3
      Top = 0
      Width = 700
      Height = 182
      BorderColor = clBlue
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Material '
      Color = 14286771
      Ctl3D = True
      FlatColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      VisualStyle = vsGradient
      object RzDBGrid1: TRzDBGrid
        Left = 5
        Top = 21
        Width = 690
        Height = 134
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = DMCadOrdemServico.dsOrdemServico_Mat
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_PRODUTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'ID Mat.'
            Title.Color = 14286771
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 48
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeProduto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Nome Material'
            Title.Color = 14286771
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 330
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'lkUnidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Unid.'
            Title.Color = 14286771
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 32
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'QTD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Qtde.'
            Title.Color = 14286771
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 62
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_UNITARIO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Unit'#225'rio'
            Title.Color = 14286771
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Vlr. Total'
            Title.Color = 14286771
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'clPerc_Preco'
            Title.Alignment = taCenter
            Title.Caption = '%'
            Title.Color = 14286771
            Width = 56
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 5
        Top = 155
        Width = 690
        Height = 22
        Align = alBottom
        BevelOuter = bvNone
        Color = 13750737
        TabOrder = 1
        object Label49: TLabel
          Left = 348
          Top = 9
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.Materiais:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 7
          Top = 2
          Width = 316
          Height = 13
          Caption = 'Para incluir/alterar clicar com o bot'#227'o direito do mouse'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object cePercMaterial: TCurrencyEdit
          Left = 561
          Top = 2
          Width = 75
          Height = 18
          TabStop = False
          AutoSize = False
          Color = clSilver
          Ctl3D = False
          DisplayFormat = '0.00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object ceVlrMaterial: TCurrencyEdit
          Left = 430
          Top = 2
          Width = 129
          Height = 18
          TabStop = False
          AutoSize = False
          Color = clSilver
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
    object RzGroupBox2: TRzGroupBox
      Left = 712
      Top = 0
      Width = 514
      Height = 182
      BorderColor = clBlue
      BorderInner = fsButtonUp
      BorderOuter = fsBump
      Caption = ' Terceiros '
      Color = 10485759
      Ctl3D = True
      FlatColor = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      VisualStyle = vsGradient
      object RzDBGrid2: TRzDBGrid
        Left = 5
        Top = 21
        Width = 504
        Height = 134
        TabStop = False
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = DMCadOrdemServico.dsOrdemServico_Terc
        Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        PopupMenu = PopupMenu2
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clNavy
        TitleFont.Height = -13
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'NOME_TERCEIRO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Title.Color = 10485759
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 314
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Title.Color = 10485759
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clNavy
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = []
            Width = 91
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'clPerc_Preco'
            Title.Alignment = taCenter
            Title.Caption = '%'
            Title.Color = 10485759
            Width = 67
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 5
        Top = 155
        Width = 504
        Height = 22
        Align = alBottom
        BevelOuter = bvNone
        Color = 13750737
        TabOrder = 1
        object Label51: TLabel
          Left = 195
          Top = 9
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vlr.Terceiros:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentFont = False
        end
        object cePercTerceiro: TCurrencyEdit
          Left = 406
          Top = 2
          Width = 75
          Height = 18
          TabStop = False
          AutoSize = False
          Color = clSilver
          Ctl3D = False
          DisplayFormat = '0.00%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object ceVlrTerceiro: TCurrencyEdit
          Left = 275
          Top = 2
          Width = 129
          Height = 18
          TabStop = False
          AutoSize = False
          Color = clSilver
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 723
    Top = 188
    Width = 514
    Height = 574
    Align = alRight
    TabOrder = 1
    object Label23: TLabel
      Left = 211
      Top = 63
      Width = 52
      Height = 13
      Alignment = taRightJustify
      Caption = '% ICMS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label29: TLabel
      Left = 190
      Top = 80
      Width = 73
      Height = 13
      Alignment = taRightJustify
      Caption = '% MARK-UP:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label31: TLabel
      Left = 172
      Top = 97
      Width = 91
      Height = 13
      Alignment = taRightJustify
      Caption = '% PIS/COFINS:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label33: TLabel
      Left = 204
      Top = 114
      Width = 59
      Height = 13
      Alignment = taRightJustify
      Caption = '% ISSQN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label34: TLabel
      Left = 186
      Top = 131
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = '% Comiss'#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label36: TLabel
      Left = 213
      Top = 148
      Width = 50
      Height = 13
      Alignment = taRightJustify
      Caption = '% Frete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label37: TLabel
      Left = 168
      Top = 165
      Width = 95
      Height = 13
      Alignment = taRightJustify
      Caption = '% IR./Cont.Soc:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label38: TLabel
      Left = 165
      Top = 182
      Width = 98
      Height = 13
      Alignment = taRightJustify
      Caption = '% Margem Ope.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label39: TLabel
      Left = 222
      Top = 199
      Width = 41
      Height = 13
      Alignment = taRightJustify
      Caption = 'Pre'#231'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label40: TLabel
      Left = 169
      Top = 224
      Width = 94
      Height = 13
      Alignment = taRightJustify
      Caption = 'Proposta (R$):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 151
      Top = 241
      Width = 112
      Height = 13
      Alignment = taRightJustify
      Caption = '% Marg. Operacio.:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label48: TLabel
      Left = 147
      Top = 305
      Width = 116
      Height = 13
      Alignment = taRightJustify
      Caption = '% Custo Financeiro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label50: TLabel
      Left = 187
      Top = 322
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Prazo (Dias):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label52: TLabel
      Left = 162
      Top = 339
      Width = 101
      Height = 13
      Alignment = taRightJustify
      Caption = '% Custo Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label53: TLabel
      Left = 183
      Top = 369
      Width = 80
      Height = 13
      Alignment = taRightJustify
      Caption = 'Margem (R$):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label55: TLabel
      Left = 216
      Top = 386
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'IR (R$):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label56: TLabel
      Left = 139
      Top = 403
      Width = 124
      Height = 13
      Alignment = taRightJustify
      Caption = 'Margem L'#237'quida (R$):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label57: TLabel
      Left = 142
      Top = 420
      Width = 121
      Height = 13
      Alignment = taRightJustify
      Caption = 'Margem L'#237'quida (%):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label59: TLabel
      Left = 198
      Top = 13
      Width = 77
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total Custo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 0
      Top = 32
      Width = 563
      Height = 1
    end
    object cePercMarkup: TCurrencyEdit
      Left = 268
      Top = 75
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnExit = cePercICMSExit
      OnKeyDown = cePercCustoFinanceiroKeyDown
    end
    object ceVlrTotalCusto: TCurrencyEdit
      Left = 277
      Top = 5
      Width = 129
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 20
    end
    object cePercPisCofins: TCurrencyEdit
      Left = 268
      Top = 92
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
      OnExit = cePercICMSExit
      OnKeyDown = cePercCustoFinanceiroKeyDown
    end
    object cePercISSQN: TCurrencyEdit
      Left = 268
      Top = 109
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
      OnExit = cePercICMSExit
      OnKeyDown = cePercCustoFinanceiroKeyDown
    end
    object cePercComissao: TCurrencyEdit
      Left = 268
      Top = 126
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      OnExit = cePercICMSExit
      OnKeyDown = cePercCustoFinanceiroKeyDown
    end
    object cePercFrete: TCurrencyEdit
      Left = 268
      Top = 143
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 5
      OnExit = cePercICMSExit
      OnKeyDown = cePercCustoFinanceiroKeyDown
    end
    object cePercIR: TCurrencyEdit
      Left = 268
      Top = 160
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 6
      OnExit = cePercICMSExit
      OnKeyDown = cePercCustoFinanceiroKeyDown
    end
    object cePercMargemOpe: TCurrencyEdit
      Left = 268
      Top = 177
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 7
      OnExit = cePercICMSExit
      OnKeyDown = cePercCustoFinanceiroKeyDown
    end
    object cePreco: TCurrencyEdit
      Left = 268
      Top = 194
      Width = 113
      Height = 18
      TabStop = False
      AutoSize = False
      Color = 13948116
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object cePrecoSugerido: TCurrencyEdit
      Left = 268
      Top = 219
      Width = 113
      Height = 18
      AutoSize = False
      Color = 16777041
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 9
      OnKeyDown = cePrecoSugeridoKeyDown
    end
    object cePercMargOpe2: TCurrencyEdit
      Left = 268
      Top = 236
      Width = 113
      Height = 18
      AutoSize = False
      Color = 16777041
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 10
      OnKeyDown = cePercMargOpe2KeyDown
    end
    object cePercCustoFinanceiro: TCurrencyEdit
      Left = 268
      Top = 300
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 11
      OnExit = cePercICMSExit
      OnKeyDown = cePercCustoFinanceiroKeyDown
    end
    object cePrazoDias: TCurrencyEdit
      Left = 268
      Top = 317
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 12
      OnExit = cePercICMSExit
      OnKeyDown = cePrazoDiasKeyDown
    end
    object cePercCustoPeriodo: TCurrencyEdit
      Left = 268
      Top = 334
      Width = 113
      Height = 18
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object ceVlrMargem: TCurrencyEdit
      Left = 268
      Top = 364
      Width = 113
      Height = 18
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 15
    end
    object ceVlrIR: TCurrencyEdit
      Left = 268
      Top = 381
      Width = 113
      Height = 18
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 16
    end
    object ceVlrMargemLiquida: TCurrencyEdit
      Left = 268
      Top = 398
      Width = 113
      Height = 18
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 17
    end
    object cePercMargemLiquida: TCurrencyEdit
      Left = 268
      Top = 415
      Width = 113
      Height = 18
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 18
    end
    object cePercPeriodo: TCurrencyEdit
      Left = 380
      Top = 316
      Width = 61
      Height = 19
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
      Visible = False
    end
    object btnCalcular_Custo: TNxButton
      Left = 2
      Top = 417
      Width = 118
      Height = 30
      Caption = 'Calcular'
      Down = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        7E030000424D7E030000000000003600000028000000130000000E0000000100
        1800000000004803000000000000000000000000000000000000F6FBFEFCFEFD
        F8FBF9F7FDFDF8FDFEF8F8FAF8FCFAF5FDF9F9FAFDF8FDFEF3FCF3F7FCF3EFFE
        FBEDFFFFB9E2E5B3DFDFEEFFFFF8FCFAFBFCF9000000E1FCFAE3F8F9E7FCFEE2
        FCFEE0F8F7EDFBF8F1FBF8EFFFFBE8FCFEE0FAFDEAFEFEF5FEFEEEFFFFDDFAFE
        A2DBE195D5D8DAFFFFF1FFFFF9F9FE000000B1E3E56FB0BE6ABED568BCCF7AB3
        BEDCF1F4F3FDFFDBF8FD8EC5D475B3C19ACCD4DCFCFFA7D1D984B4C375C0CF6B
        C1CA7DC1C8B7E0EAE5FDFF000000D3FBFD83D0E544B7D94DBBD6AAE8F3E6FDFE
        E4FDFF99D4DF5EB8C76EC2CFABE8EEA6DADE73B0B3B3EAF0A1E4EE97DDE6A6E6
        E974B1B8B3EEF2000000F0FDFFB9F0FF54BEDA69CBE0D1FCFFEBFFFFB7ECEE6C
        C8D254B4C5AFF2F9DCFFFFA4D1D199D0D0DEFFFFB1E1E2ABDDDED6FFFF82C4C8
        88DDE5000000F3FBFFBEECF75DC3D36CC8D8D6FDFFE6FFFF7DCBD84DB6CA8BD5
        E6E0FFFFF2FEFFD6E6E9CBE3E6EEFFFFB8E3E4A6E5E4B2F5F874C0D27DD9E900
        0000E2FDF7B8EFF859C3D86ED8E5E1FFFFADE3E277D3DE4AA9BFC1F5F8EDFDFF
        F9F7FFFAFEFFF1FDFFFBFFFFC2EDF36FB8CB81DFF554B1CB7ED3E6000000FEFE
        FEC1E9FA58C6E82CA8C34097A65BB3BB2FA6BD6DD0E5D3FFFFF5FFFDFFF8FAFC
        FBFDD6F0F374BDCA49A9C76CD2F445A4BF6EB8CCC8FEFF000000FAFCFDC3EDFB
        55BFDA57C8DBB4F1F6BFF0F184DFE853B4C78ED0D7E5FFFBF7FFFADFF3F491C9
        D659BCCE4ABAD45ABAD49AD9E6D6FDFFE3FFFD000000F4FDFEBEECF85CC0D767
        CBDDD4FFFFEDFFFCCCFFFF79D5E55DB3C4C4EFF5ECFFFEC0EEF474C2D270C8D5
        89DDEE98DDE8DDFFFFD3EBEDE8FDFA000000ECFFFDB7F0FC5CBFD96FC7DED6FF
        FFF3FEFCCBF9FD75D5E65CB2C8C0EAF2F0FFFFC4F0F357ABB5BDFFFFADE7EFA2
        DBE2CDFFFF9EC6CAD6F2F3000000DBFFFE94E1EC48BAD45EBDD8C1F9FFD5FCFD
        92D7E453B5C975BACEDEF7FCF7FCFFE9FFFF83C3C98ECCD09CDCE991D8E490CF
        D783B3BBD1F0F30000009DC9D765B2C154BDCF5FB8CF7BBFD277BBC564B0BC7E
        C4D5CBF2FCF3FEFFFBFAF9F5FDFDDEFCFDA9DADD7CC1CC76BEC8A0D4DCCEEBF1
        EBFEFD000000D5F3FACDF8FBC7FBFDCEF9FDD0F6FABFF1F3CFF9F9E0FCFEEAFE
        FEEFFDFCF4FAFAF3FAF9F9FCFFEDFFFFAFE2E6A6DEE0E5FFFFF7FCFEF5FBFA00
        0000}
      GlyphSpacing = 5
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 19
      Transparent = True
      OnClick = btnCalcular_CustoClick
    end
    object cePercICMS: TCurrencyEdit
      Left = 268
      Top = 58
      Width = 113
      Height = 18
      AutoSize = False
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnExit = cePercICMSExit
      OnKeyDown = cePercCustoFinanceiroKeyDown
    end
    object btnConfirmar: TNxButton
      Left = 5
      Top = 327
      Width = 118
      Height = 30
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF3F9F4C6CEC7799D7C4D7B4D235C241C561C225E
        224B7B507B9C7CC6CEC7F4F9F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF95A996456A443E663E29682B306B30
        3871373B713A386C3731643129642B3D663D456C4494AA97FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFEFFFFFFFFFFFFFF4E794D2A602A4F844F0F
        5E0F055A08005001015004014E03004B01004700054C050E4C0E4D774F2B622A
        4C7A4EFFFFFFFFFFFFFEFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF4868483F6E
        402F7B30005400045C07075A0B06590906550907550A075309064F08034C0601
        4B03003D002E64303F6C4349694DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        4D7A4E3E6B3F207723005B0208610E075F0B065B0900560105570907550A0854
        0B085109054F07064C07034C080042001E5B1D3D6B414D7B4FFFFFFFFFFFFF00
        0000FFFFFF97AA992A6028308833006400076809076508056308005600397739
        04550500550505560707540B065309065008044D06034D050042002F65312860
        2898AA99FFFFFF000000F5F9F64266464F9051006100066B0C07690A07670A00
        54004B854CFFFFFFA6C1A6004D0000550306550908530A075209065007044C05
        044B09003E004E7850456D46F6F9F6000000C6CEC63F6640107C12056D09066C
        0A056A0A0059003C7F3BFFFFFFFFFFFFFFFFFFABC6AD004D0203550605550908
        550B065209054F07044C06014C040D4C0F3B643CC6CFC600000079997A37823A
        2183260F761407720E005E00559256FFFFFFFFFFFFFEFEFEFEFFFEFFFFFFBED2
        C0004A0002540506560806540907530A064F08034D05054C062A632B7DA08000
        00004A7B4D4C954F29892F218426006500639E66FFFFFFFFFFFFFEFEFFFFFFFF
        FFFFFFFFFEFFFFFFFFA6C1A8004B0002550506550907540A085209054F080047
        002E6330517E52000000245E2767AE6D39964028872D79B37DFFFFFFF7F9F9F9
        FCFAFFFFFFD2DFD1FCFEFDFFFFFFFFFFFFFFFFFFBED2C0014E02005503055608
        07540A075309004C01376C3427612A0000001F562078BA80479F4D449948DFEF
        DFF6FBF8F0F4EDFFFFFFB4CFB5004F00639663FFFFFFFFFFFFFEFEFFFFFFFFAD
        C6B0014D0200550207540A07540A014E033970371B561C000000275E2782BF87
        5DAA604DA0533D9141F1FAF0FFFFFFBAD4B8005B00006A04005A00689967FFFF
        FFFFFFFFFEFFFFFFFFFFA9C4AC004B00015605065509014F0436723529602900
        000048764A7DB18171B87565B16957A55A519E56A2CCA4248729177A20016D06
        056E0A005400568C55FFFFFFFFFFFFFFFFFEFFFFFFC0D6C30048000055040052
        022E6C2E517D530000007494746B9F6F89C88B75B7776BB26F5BA85F45994C4E
        9C51429748258227006604006E090056006E9C6DFFFFFFFFFFFFFEFEFFFFFFFF
        B3C9B4145F150157062A682D7B9F80000000C4CCC4476C46A0D3A382C3887EBC
        8072B67569AE6B5DA76153A2554E9D52358F3A0B7110006C030055005B8E59FF
        FFFFFFFFFFFFFFFFAEC9B00053000D600F3E653EC6CFC6000000F6FBF72E572F
        B5CFB495CC9B8FC69183BF8779B97C6EB17263AA675AA45D519E5446984E2885
        2D0C7413005100639261FFFFFFB6D0B50044000051004D8452456A45F6FBF700
        0000FFFFFF9BAA9A1F571FDBF9DD99CC9C92C79789C28A7DB98271B37868AD6B
        5CA661549F5B4C9A503F8F422F89350D6D143A8537006208005900338035295C
        299BAE9AFFFFFF000000FEFFFFFFFFFF45744B507850D2F0D2A1D0A798CC9D91
        C79384C0887CBA8070B27466AD685CA460519C5546954B3F8F432B83321E7922
        36873B3E6C3E4E7C51FFFFFFFFFEFF000000FFFFFFFFFFFFFFFFFF4160404F77
        4FE9FFEAAAD7AE9FCEA093C7988AC28D81BA8376B5786CAD6F60A664569D5A49
        984D32893961A8653B6C3C476848FFFFFFFFFFFFFFFFFF000000FFFFFFFFFEFF
        FFFFFFFFFFFF45744A20561EC3D8C3C0E5C3B1DDB69ED0A493C69587BF8A7EBA
        7F71B37570B37564AB6B81AE822259234F7A4FFFFFFFFFFFFFFFFFFEFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9BAB9B29552C466B4985AA849EC5A0
        B2D5B5B0D8B5A0CCA482B2856295644169433B5D3C99AE9BFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCF6C3
        CBC3719270447545255F24225624245E28457649739575C5CDC5F6FBF7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 21
      Transparent = True
      Visible = False
      OnClick = btnConfirmarClick
    end
    object cePercTotalCusto: TCurrencyEdit
      Left = 408
      Top = 5
      Width = 75
      Height = 21
      TabStop = False
      AutoSize = False
      Color = clSilver
      Ctl3D = False
      DisplayFormat = '0.00%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 22
    end
  end
  object RzGroupBox3: TRzGroupBox
    Left = 0
    Top = 185
    Width = 703
    Height = 330
    BorderColor = clBlue
    BorderInner = fsButtonUp
    BorderOuter = fsBump
    Caption = ' Setor / Processos '
    Color = 16769734
    Ctl3D = True
    FlatColor = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 2
    VisualStyle = vsGradient
    object Label1: TLabel
      Left = 8
      Top = 149
      Width = 163
      Height = 13
      Caption = 'F2 Seleciona Setor/Processo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object RzDBGrid3: TRzDBGrid
      Left = 5
      Top = 21
      Width = 693
      Height = 123
      TabStop = False
      Align = alTop
      BorderStyle = bsNone
      Ctl3D = True
      DataSource = DMCadOrdemServico.dsOrdemServico_Setor
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = RzDBGrid3KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'clNome_Setor'
          Title.Alignment = taCenter
          Title.Caption = 'Nome Setor'
          Title.Color = 16769734
          Width = 266
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_HORA'
          Title.Alignment = taCenter
          Title.Caption = 'Total Hora'
          Title.Color = 16769734
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Total'
          Title.Color = 16769734
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'clPerc_Preco'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Color = 16769734
          Visible = True
        end>
    end
    object RzDBGrid13: TRzDBGrid
      Left = 5
      Top = 164
      Width = 540
      Height = 163
      TabStop = False
      BorderStyle = bsNone
      Ctl3D = False
      DataSource = DMCadOrdemServico.dsOrdemServico_Setor_Proc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clNavy
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyDown = RzDBGrid3KeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'clNome_Processo'
          Title.Caption = 'Nome Processo'
          Title.Color = 16769444
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_HORA'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Hora'
          Title.Color = 16769444
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL_HORA'
          Title.Alignment = taCenter
          Title.Caption = 'Qtd. Hora'
          Title.Color = 16769444
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLR_TOTAL'
          Title.Alignment = taCenter
          Title.Caption = 'Vlr. Total'
          Title.Color = 16769444
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'clPerc_Preco'
          Title.Alignment = taCenter
          Title.Caption = '%'
          Title.Color = 16769444
          Visible = True
        end>
    end
    object Panel4: TPanel
      Left = 549
      Top = 164
      Width = 140
      Height = 76
      BevelOuter = bvNone
      Color = 13750737
      TabOrder = 2
      object Label2: TLabel
        Left = 5
        Top = 6
        Width = 74
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vlr.Processo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object cePercProcesso: TCurrencyEdit
        Left = 58
        Top = 35
        Width = 75
        Height = 18
        TabStop = False
        AutoSize = False
        Color = clSilver
        Ctl3D = False
        DisplayFormat = '0.00%'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object ceVlrProcesso: TCurrencyEdit
        Left = 4
        Top = 18
        Width = 129
        Height = 18
        TabStop = False
        AutoSize = False
        Color = clSilver
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
    end
  end
  object DBMemo1: TDBMemo
    Left = 49
    Top = 524
    Width = 655
    Height = 238
    Color = 14286809
    Ctl3D = False
    DataField = 'ESCOPO'
    DataSource = DMCadOrdemServico.dsOrdemServico_Itens
    ParentCtl3D = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
    OnExit = DBMemo1Exit
  end
  object PopupMenu1: TPopupMenu
    Left = 395
    Top = 72
    object Incluir1: TMenuItem
      Caption = 'Incluir'
      OnClick = Incluir1Click
    end
    object Alterar1: TMenuItem
      Caption = 'Alterar'
      OnClick = Alterar1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 808
    Top = 96
    object Incluir2: TMenuItem
      Caption = 'Incluir'
      OnClick = Incluir2Click
    end
    object Alterar2: TMenuItem
      Caption = 'Alterar'
      OnClick = Alterar2Click
    end
  end
end
