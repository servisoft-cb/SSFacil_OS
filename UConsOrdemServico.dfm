object frmConsOrdemServico: TfrmConsOrdemServico
  Left = 181
  Top = 80
  Width = 928
  Height = 502
  Caption = 'frmConsOrdemServico'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 920
    Height = 114
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 183
      Top = 11
      Width = 33
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' OS:'
    end
    object Label2: TLabel
      Left = 181
      Top = 33
      Width = 35
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cliente:'
    end
    object Label3: TLabel
      Left = 154
      Top = 55
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.OS Inicial:'
    end
    object Label4: TLabel
      Left = 327
      Top = 55
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label5: TLabel
      Left = 147
      Top = 77
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Ped. Inicial:'
    end
    object Label6: TLabel
      Left = 327
      Top = 77
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label9: TLabel
      Left = 148
      Top = 99
      Width = 69
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Rec.OS Ini:'
    end
    object Label10: TLabel
      Left = 327
      Top = 99
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label11: TLabel
      Left = 457
      Top = 52
      Width = 121
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt. Prevista Final OS (Ini):'
    end
    object Label12: TLabel
      Left = 686
      Top = 52
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object CurrencyEdit1: TCurrencyEdit
      Left = 219
      Top = 3
      Width = 121
      Height = 21
      AutoSize = False
      DecimalPlaces = 0
      DisplayFormat = '0'
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 219
      Top = 25
      Width = 235
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object DateEdit1: TDateEdit
      Left = 219
      Top = 47
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object DateEdit2: TDateEdit
      Left = 354
      Top = 47
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 3
    end
    object DateEdit3: TDateEdit
      Left = 219
      Top = 69
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 4
    end
    object DateEdit4: TDateEdit
      Left = 354
      Top = 69
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
    end
    object btnConsultar: TNxButton
      Left = 502
      Top = 82
      Width = 176
      Height = 30
      Caption = 'Efetuar Pesquisa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        AE060000424DAE06000000000000360000002800000017000000170000000100
        1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
        72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
        0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
        A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
        109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
        EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
        A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
        B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
        97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
        5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
        98634797653998765499876899927799977F99967F99907799826295704B9B64
        3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
        99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
        6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
        34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
        DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
        AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
        90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
        F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
        E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
        B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
        574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
        96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
        C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
        D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 6
      Transparent = True
      OnClick = btnConsultarClick
    end
    object RadioGroup1: TRadioGroup
      Left = 1
      Top = 1
      Width = 140
      Height = 112
      Align = alLeft
      Caption = ' Op'#231#227'o '
      ItemIndex = 0
      Items.Strings = (
        'Ambos'
        'N'#227'o Gerado Pedido'
        'Gerado Pedido'
        'N'#227'o Faturado'
        'Faturado')
      TabOrder = 7
    end
    object DateEdit7: TDateEdit
      Left = 219
      Top = 91
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 8
    end
    object DateEdit8: TDateEdit
      Left = 354
      Top = 91
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 9
    end
    object NxButton1: TNxButton
      Left = 678
      Top = 82
      Width = 176
      Height = 30
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F7F2D1DCC8A3B98F809E655D84
        3B46721FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFE9EEE4C6D3BAA3B98F7495575D843B46721F46721F
        46721F46721F46721F46721FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA3B98F749557527B2D46721F46721F46721F46721F46
        721F46721F46721F46721F46721F46721F46721FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46721F46721F46721F46721F4672
        1F46721F46721F46721F46721F46721F46721F46721F46721F46721FFFFFFF46
        721F46721F46721F46721F46721F46721F46721F46721F527B2D46721F46721F
        46721F46721F46721F46721F46721F46721F46721F46721F46721F46721F4672
        1F46721FFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F46
        721F46721F46721F46721F46721F46721F46721F46721F46721F46721F46721F
        46721F46721F46721F46721FFFFFFFFFFFFFFFFFFF46721FFFFFFFFFFFFFFFFF
        FFFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F46721F46
        721F46721F46721F46721F46721F46721F46721FFFFFFFFFFFFFFFFFFF46721F
        FFFFFFFFFFFFFFFFFFFFFFFF46721F46721F46721F46721F46721F46721F4672
        1F46721F46721F46721F688C487395565C833A46721F46721F46721FFFFFFF46
        721F46721F46721F46721F46721F46721F46721F46721F46721F46721F46721F
        46721F8BA672FFFFFFF3F6F146721F517A2CF3F6F1FFFFFF73955646721F4672
        1F46721FFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F46
        721F46721F46721F46721F46721FE8EDE3FFFFFF8BA6728BA672FFFFFFD1DCC7
        46721F46721F46721F46721FFFFFFFFFFFFFFFFFFF46721FFFFFFFFFFFFFFFFF
        FFFFFFFF46721F46721F46721F46721F46721F46721F8BA672FFFFFFDCE5D5E8
        EDE3FFFFFF73955646721F46721F46721F46721FFFFFFFFFFFFFFFFFFF46721F
        FFFFFFFFFFFFFFFFFFFFFFFF46721F46721F46721F46721F46721F46721F4672
        1FDCE5D5FFFFFFFFFFFFDCE5D546721F46721F46721F46721F46721FFFFFFF46
        721F46721F46721F46721F46721F46721F46721F46721F46721F46721F46721F
        46721F46721F46721F8BA672FFFFFFFFFFFF96AF8046721F46721F46721F4672
        1F46721FFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F46
        721F46721F46721F46721F46721F46721FD1DCC7FFFFFFFFFFFFD1DCC746721F
        46721F46721F46721F46721FFFFFFFFFFFFFFFFFFF46721FFFFFFFFFFFFFFFFF
        FFFFFFFF46721F46721F46721F46721F46721F46721F5C833AFFFFFFF3F6F1E8
        EDE3FFFFFF73955646721F46721F46721F46721FFFFFFFFFFFFFFFFFFF46721F
        FFFFFFFFFFFFFFFFFFFFFFFF46721F46721F46721F46721F46721F46721FB9CA
        AAFFFFFFADC19C8BA672FFFFFFC4D3B846721F46721F46721F46721FFFFFFF46
        721F46721F46721F46721F46721F46721F46721F46721F46721F46721F46721F
        46721F5C833AFFFFFFFFFFFF688C48517A2CF3F6F1FFFFFF5C833A46721F4672
        1F46721FFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F46
        721F46721F46721F46721F517A2C73955673955646721F46721F688C48739556
        5C833A46721F46721F46721FFFFFFFFFFFFFFFFFFF46721FFFFFFFFFFFFFFFFF
        FFFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F46721F46
        721F46721F46721F46721F46721F46721F46721FFFFFFFFFFFFFFFFFFF46721F
        FFFFFFFFFFFFFFFFFFFFFFFF46721F46721F46721F46721F46721F46721F4672
        1F46721F46721F46721F46721F46721F46721F46721F46721F46721FFFFFFF46
        721F46721F46721F46721F46721F46721F46721F46721F46721F46721F46721F
        46721F46721F46721F46721F46721F46721F46721F46721F46721F46721F4672
        1F46721FFFFFFF46721F46721F46721F46721F46721F46721F46721F46721F52
        7B2DA3B98F749557527B2D46721F46721F46721F46721F46721F46721F46721F
        46721F46721F46721F46721FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EEE4C6D3BAA3B98F7495575D
        843B46721F46721F46721F46721F46721F46721FFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF4F7F2D1DCC8A3B98F809E655D843B46721FFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      GlyphSpacing = 5
      ParentFont = False
      TabOrder = 10
      Transparent = True
      OnClick = NxButton1Click
    end
    object DateEdit9: TDateEdit
      Left = 581
      Top = 44
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 11
    end
    object DateEdit10: TDateEdit
      Left = 713
      Top = 44
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 12
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 114
    Width = 920
    Height = 333
    ActivePage = TS_Detalhada
    ActivePageDefault = TS_Detalhada
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TS_Detalhada: TRzTabSheet
      Caption = 'Detalhado'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 29
        Width = 916
        Height = 281
        Align = alClient
        Ctl3D = False
        DataSource = DMConsOrdemServico.dsOrdemServico_Nota
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid1TitleClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 22
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'NUM_OS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' OS'
            Title.Color = 8454016
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_OS'
            Title.Alignment = taCenter
            Title.Caption = 'Data OS'
            Title.Color = 8454016
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTRECEBIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Recebimento'
            Title.Color = 8454016
            Width = 78
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSAO_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Faturamento'
            Title.Color = 8454016
            Width = 84
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_OS'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Produ'#231#227'o'
            Title.Color = 8454016
            Width = 57
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. OS (Nota)'
            Title.Color = 8454016
            Width = 80
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido'
            Title.Color = 8454016
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Item Ped.'
            Title.Color = 8454016
            Width = 39
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Nota'
            Title.Color = 8454016
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PEDIDO_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido Cliente'
            Title.Color = 8454016
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTPEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Pedido'
            Title.Color = 8454016
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTNOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Data Nota'
            Title.Color = 8454016
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturada'
            Title.Color = 8454016
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Title.Color = 8454016
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. N'#227'o Faturado'
            Title.Color = 8454016
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_AGENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Dt Prevista Final OS'
            Title.Color = 8454016
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Title.Color = 8454016
            Width = 257
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CPF'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ / CPF'
            Title.Color = 8454016
            Width = 135
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Title.Color = 8454016
            Width = 172
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF'
            Title.Alignment = taCenter
            Title.Color = 8454016
            Width = 35
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'ID OS'
            Title.Color = 8454016
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 916
        Height = 29
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object Label7: TLabel
          Left = 4
          Top = 12
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Nota Inicial:'
        end
        object Label8: TLabel
          Left = 215
          Top = 12
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Final:'
        end
        object DateEdit5: TDateEdit
          Left = 77
          Top = 4
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
        object DateEdit6: TDateEdit
          Left = 259
          Top = 4
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 1
        end
      end
    end
    object TS_OSPed: TRzTabSheet
      Caption = 'Por Pedido'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 0
        Width = 916
        Height = 310
        Align = alClient
        Ctl3D = False
        DataSource = DMConsOrdemServico.dsOrdemServico_Ped
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid2TitleClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid2GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 18
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_OS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' OS'
            Title.Color = 16777139
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_OS'
            Title.Alignment = taCenter
            Title.Caption = 'Data OS'
            Title.Color = 16777139
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_OS'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Produ'#231#227'o'
            Title.Color = 16777139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. OS (Nota)'
            Title.Color = 16777139
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido'
            Title.Color = 16777139
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ITEM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Item Pedido'
            Title.Color = 16777139
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PEDIDO_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Pedido Cliente'
            Title.Color = 16777139
            Width = 106
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTPEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Pedido'
            Title.Color = 16777139
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Title.Color = 16777139
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. N'#227'o Faturado'
            Title.Color = 16777139
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Title.Color = 16777139
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CNPJ_CPF'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ / CPF'
            Title.Color = 16777139
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Title.Color = 16777139
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UF'
            Title.Alignment = taCenter
            Title.Color = 16777139
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'ID OS'
            Title.Color = 16777139
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTRECEBIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Recebimento'
            Title.Color = 16777139
            Width = 78
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_AGENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Prevista Final OS'
            Title.Color = 16777139
            Width = 81
            Visible = True
          end>
      end
    end
    object TS_OS: TRzTabSheet
      Caption = 'Por OS'
      object SMDBGrid3: TSMDBGrid
        Left = 0
        Top = 0
        Width = 916
        Height = 310
        Align = alClient
        Ctl3D = False
        DataSource = DMConsOrdemServico.dsOrdemServico
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid3TitleClick
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid3GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 15
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_OS'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' OS'
            Title.Color = 8257535
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DATA_OS'
            Title.Alignment = taCenter
            Title.Caption = 'Data OS'
            Title.Color = 8257535
            Width = 78
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTRECEBIMENTO'
            Title.Alignment = taCenter
            Title.Caption = 'Data Recebimento'
            Title.Color = 8257535
            Width = 73
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_AGENDA'
            Title.Alignment = taCenter
            Title.Caption = 'Dt. Prevista Final OS'
            Title.Color = 8257535
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_OS'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Produ'#231#227'o'
            Title.Color = 8257535
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_NOTA'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. OS (Nota)'
            Title.Color = 8257535
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Pedido'
            Title.Color = 8257535
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_RESTANTE'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. N'#227'o Faturado'
            Title.Color = 8257535
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_FATURADO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Faturado'
            Title.Color = 8257535
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Title.Color = 8257535
            Width = 324
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CNPJ_CPF'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ / CPF'
            Title.Color = 8257535
            Width = 159
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Title.Color = 8257535
            Width = 64
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UF'
            Title.Alignment = taCenter
            Title.Color = 8257535
            Width = 33
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Title.Caption = 'ID OS'
            Title.Color = 8257535
            Visible = True
          end>
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 447
    Width = 920
    Height = 24
    Align = alBottom
    Color = clSilver
    TabOrder = 2
    object Shape6: TShape
      Left = 268
      Top = 5
      Width = 30
      Height = 16
      Brush.Color = 16742777
    end
    object Label31: TLabel
      Left = 301
      Top = 8
      Width = 77
      Height = 13
      Caption = 'Faturado Parcial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape1: TShape
      Left = 12
      Top = 3
      Width = 30
      Height = 16
      Brush.Color = 16777077
    end
    object Label13: TLabel
      Left = 44
      Top = 8
      Width = 64
      Height = 13
      Caption = 'Em Produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape2: TShape
      Left = 132
      Top = 5
      Width = 30
      Height = 16
      Brush.Color = clMoneyGreen
    end
    object Label26: TLabel
      Left = 167
      Top = 6
      Width = 47
      Height = 13
      Caption = 'Produzido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape18: TShape
      Left = 571
      Top = 4
      Width = 30
      Height = 16
      Brush.Color = 33023
    end
    object Label68: TLabel
      Left = 603
      Top = 7
      Width = 108
      Height = 13
      Caption = 'Copiado para o Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape19: TShape
      Left = 723
      Top = 4
      Width = 30
      Height = 16
      Brush.Color = 10944511
    end
    object Label66: TLabel
      Left = 755
      Top = 7
      Width = 143
      Height = 13
      Caption = 'Copiado para o Pedido Parcial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Shape14: TShape
      Left = 420
      Top = 5
      Width = 30
      Height = 16
      Brush.Color = clGreen
    end
    object Label77: TLabel
      Left = 452
      Top = 8
      Width = 42
      Height = 13
      Caption = 'Faturado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
end
