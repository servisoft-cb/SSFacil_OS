object frmConsIndPrazoEntrega: TfrmConsIndPrazoEntrega
  Left = 307
  Top = 113
  Width = 928
  Height = 480
  Caption = 'Consulta Indicador de Prazo'
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
    Height = 62
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label3: TLabel
      Left = 26
      Top = 15
      Width = 62
      Height = 13
      Alignment = taRightJustify
      Caption = 'Dt.Fat Inicial:'
    end
    object Label4: TLabel
      Left = 199
      Top = 15
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object DateEdit1: TDateEdit
      Left = 91
      Top = 7
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit2: TDateEdit
      Left = 226
      Top = 7
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object btnConsultar: TNxButton
      Left = 90
      Top = 30
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
      TabOrder = 2
      Transparent = True
      OnClick = btnConsultarClick
    end
    object NxButton1: TNxButton
      Left = 266
      Top = 30
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
      TabOrder = 3
      Transparent = True
      OnClick = NxButton1Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 62
    Width = 920
    Height = 387
    ActivePage = TS_PrazoEntrega
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TS_PrazoEntrega: TRzTabSheet
      Caption = 'Prazo Entrega (Detalhado)'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 29
        Width = 916
        Height = 335
        Align = alClient
        Ctl3D = False
        DataSource = DMIndicador.dsPrazoEntrega
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 12
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMNOTA'
            Title.Color = 11468638
            Width = 68
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTEMISSA_NOTA'
            Title.Color = 11468638
            Width = 81
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_OS'
            Title.Color = 11468638
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DTRECEBIMENTO'
            Title.Color = 11468638
            Width = 82
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DT_AGENDA'
            Title.Color = 11468638
            Width = 73
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_CLIENTE'
            Title.Color = 11468638
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Color = 11468638
            Width = 294
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Title.Color = 11468638
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Title.Color = 11468638
            Width = 326
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Title.Color = 11468638
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UNIDADE'
            Title.Color = 11468638
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 916
        Height = 29
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object Shape3: TShape
          Left = 32
          Top = 9
          Width = 33
          Height = 15
          Brush.Color = clRed
        end
        object Label1: TLabel
          Left = 72
          Top = 11
          Width = 66
          Height = 13
          Caption = 'Fora do Prazo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object TS_PorCliente: TRzTabSheet
      Caption = 'Por Cliente'
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 41
        Width = 916
        Height = 323
        Align = alClient
        Ctl3D = False
        DataSource = DMIndicador.dsPrazoCliente
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid2GetCellParams
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
            FieldName = 'ID_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'ID Cliente'
            Title.Color = 16777105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Title.Color = 16777105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONTADOR'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Entrega'
            Title.Color = 16777105
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_FORAPRAZO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. Fora do Prazo'
            Title.Color = 16777105
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_NOPRAZO'
            Title.Alignment = taCenter
            Title.Caption = 'Qtd. No Prazo'
            Title.Color = 16777105
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PERC_ENTREGA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = '% Entrega no Prazo'
            Title.Color = 16777105
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 64
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 916
        Height = 41
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object Shape1: TShape
          Left = 32
          Top = 17
          Width = 33
          Height = 15
          Brush.Color = clRed
        end
        object Label5: TLabel
          Left = 72
          Top = 19
          Width = 114
          Height = 13
          Caption = 'Igual ou menor que 80%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape2: TShape
          Left = 201
          Top = 17
          Width = 33
          Height = 15
          Brush.Color = clYellow
        end
        object Label6: TLabel
          Left = 241
          Top = 19
          Width = 72
          Height = 13
          Caption = 'Entre 81 a 90%'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
      end
    end
  end
end
