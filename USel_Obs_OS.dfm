object frmSel_Obs_OS: TfrmSel_Obs_OS
  Left = 222
  Top = 158
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Selecionar Observa'#231#227'o'
  ClientHeight = 446
  ClientWidth = 914
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 32
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 51
      Top = 13
      Width = 76
      Height = 13
      Alignment = taRightJustify
      Caption = 'Descri'#231#227'o OBS:'
    end
    object Label2: TLabel
      Left = 329
      Top = 41
      Width = 30
      Height = 13
      Alignment = taRightJustify
      Caption = 'CNPJ:'
    end
    object Edit1: TEdit
      Left = 131
      Top = 5
      Width = 393
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnKeyDown = Edit1KeyDown
    end
    object BitBtn1: TBitBtn
      Left = 528
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Consultar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 32
    Width = 914
    Height = 267
    Align = alClient
    Ctl3D = False
    DataSource = dsObs_OS
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = SMDBGrid1DblClick
    OnKeyDown = SMDBGrid1KeyDown
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
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 3
    RowCount = 2
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Color = 16777156
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Color = 16777156
        Width = 446
        Visible = True
      end>
  end
  object StaticText1: TStaticText
    Left = 0
    Top = 429
    Width = 914
    Height = 17
    Align = alBottom
    BorderStyle = sbsSingle
    Caption = 
      'Duplo Clique  ou   Enter para selecionar a pessoa       ESC= Fec' +
      'har tela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object DBMemo1: TDBMemo
    Left = 0
    Top = 299
    Width = 914
    Height = 130
    Align = alBottom
    Color = 15132390
    DataField = 'OBS'
    DataSource = dsObs_OS
    ReadOnly = True
    TabOrder = 3
  end
  object sdsObs_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select O.ID, O.NOME, O.OBS'#13#10'from OBS_OS O'#13#10'where 0 = 0   '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 167
  end
  object cdsObs_OS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspObs_OS'
    Left = 304
    Top = 168
    object cdsObs_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsObs_OSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsObs_OSOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspObs_OS: TDataSetProvider
    DataSet = sdsObs_OS
    Left = 256
    Top = 168
  end
  object dsObs_OS: TDataSource
    DataSet = cdsObs_OS
    Left = 360
    Top = 168
  end
end
