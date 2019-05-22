object DMImpOrdemServico: TDMImpOrdemServico
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 372
  Top = 83
  Height = 520
  Width = 643
  object frxReport1: TfrxReport
    Tag = 1
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43066.746810972200000000
    ReportOptions.LastChange = 43607.614159293980000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    OnPreview = frxReport1Preview
    OnReportPrint = 'frxReportOnReportPrint'
    Left = 304
    Top = 27
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 304
    Top = 75
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    MAPISendFlag = 0
    Left = 336
    Top = 75
  end
  object frxCheckBoxObject1: TfrxCheckBoxObject
    Left = 376
    Top = 75
  end
  object sdsOSImp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select OS.ID, OS.NUM_OS, OS.NUM_NOTA, OS.SERIE_NOTA, OS.ID_CLIEN' +
      'TE, OS.DTEMISSAO, OS.NOME_CONTATO NOME_CONTATO,'#13#10'       OS.DTREC' +
      'EBIMENTO, OS.DT_AGENDA, OS.QTD_DIAS_ENT, OS.NUM_ORCAMENTO, OS.RA' +
      'STREABILIDADE, F.NOME FIL_NOME,'#13#10'       F.NOME_INTERNO, C.NOME C' +
      'LI_NOME, C.FANTASIA CLI_FANTASIA, C.CNPJ_CPF CLI_CNPJ, IT.ID_PRO' +
      'DUTO, IT.QTD, IT.DM, IT.REFERENCIA,'#13#10'       IT.NOME_PRODUTO, IT.' +
      'OBS, IT.OBS_CONDENTRADA, IT.DESCRICAO_SERVICO,C.EMAIL_NFE,'#13#10'    ' +
      '   C.ENDERECO ||'#39' - '#39' || C.NUM_END ||'#39', '#39'||C.BAIRRO AS ENDERECO,' +
      'C.CIDADE, C.UF,'#13#10'       '#39'('#39'||COALESCE(C.DDDFONE1,0)||'#39') '#39'||C.TEL' +
      'EFONE1 TELEFONE,OS.TIPO_FRETE, OS.DTINICIO, CP.NOME CONDPGTO,'#13#10' ' +
      '      case TIPO_SERVICO'#13#10'         when '#39'N'#39' then '#39'NORMAL'#39#13#10'      ' +
      '   when '#39'G'#39' then '#39'GARANTIA'#39#13#10'         when '#39'F'#39' then '#39'FABRICA'#199#195'O'#39 +
      #13#10'         when '#39'S'#39' then '#39'SERVI'#199'O DE CAMPO'#39#13#10'         else '#39#39#13#10' ' +
      '      end DESC_TIPO_SERVICO'#13#10'from ORDEMSERVICO OS'#13#10'inner join FI' +
      'LIAL F on (OS.FILIAL = F.ID)'#13#10'inner join PESSOA C on (OS.ID_CLIE' +
      'NTE = C.CODIGO)'#13#10'inner join ORDEMSERVICO_ITENS IT on (OS.ID = IT' +
      '.ID)'#13#10'LEFT JOIN CONDPGTO CP ON (CP.ID = OS.ID_CONDPGTO)'#13#10'where O' +
      'S.ID = :ID  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 22
  end
  object dspOSImp: TDataSetProvider
    DataSet = sdsOSImp
    Left = 72
    Top = 22
  end
  object cdsOSImp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSImp'
    Left = 104
    Top = 22
    object cdsOSImpID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOSImpNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOSImpNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsOSImpSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsOSImpID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOSImpDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOSImpDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsOSImpDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object cdsOSImpQTD_DIAS_ENT: TIntegerField
      FieldName = 'QTD_DIAS_ENT'
    end
    object cdsOSImpFIL_NOME: TStringField
      FieldName = 'FIL_NOME'
      Size = 60
    end
    object cdsOSImpNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsOSImpCLI_NOME: TStringField
      FieldName = 'CLI_NOME'
      Size = 60
    end
    object cdsOSImpCLI_FANTASIA: TStringField
      FieldName = 'CLI_FANTASIA'
      Size = 30
    end
    object cdsOSImpID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOSImpQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsOSImpDM: TFloatField
      FieldName = 'DM'
    end
    object cdsOSImpREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOSImpNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsOSImpOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSImpOBS_CONDENTRADA: TMemoField
      FieldName = 'OBS_CONDENTRADA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSImpNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object cdsOSImpDESC_TIPO_SERVICO: TStringField
      FieldName = 'DESC_TIPO_SERVICO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object cdsOSImpRASTREABILIDADE: TStringField
      FieldName = 'RASTREABILIDADE'
    end
    object cdsOSImpDESCRICAO_SERVICO: TStringField
      FieldName = 'DESCRICAO_SERVICO'
      Size = 100
    end
    object cdsOSImpNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsOSImpEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 250
    end
    object cdsOSImpENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 115
    end
    object cdsOSImpCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsOSImpUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsOSImpTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 29
    end
    object cdsOSImpTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsOSImpDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsOSImpsdsProdutoGerador: TDataSetField
      FieldName = 'sdsProdutoGerador'
    end
    object cdsOSImpCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      Size = 40
    end
    object cdsOSImpCLI_CNPJ: TStringField
      FieldName = 'CLI_CNPJ'
    end
  end
  object dsOSImp: TDataSource
    DataSet = cdsOSImp
    Left = 136
    Top = 22
  end
  object sdsOsImp_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.*, PROC.nome NOME_PROCESSO, PROC.terceiro, SER.nome NO' +
      'ME_SERVICO_OS,'#13#10'SER.terceiro TERCEIRO_SER, SER.vlr_hora,'#13#10'lpad(O' +
      '.num_os,10,'#39'0'#39') || lpad(OS.item_proc,2,'#39'0'#39') CODBARRA,'#13#10'CASE'#13#10'  W' +
      'HEN OS.RETRABALHO = '#39'S'#39' THEN '#39'* Retrabalho'#39#13#10'  else '#39#39#13#10'  end DE' +
      'SC_RETRABALHO'#13#10'FROM ORDEMSERVICO_PROC OS'#13#10'INNER JOIN PROCESSO pr' +
      'oc'#13#10'ON OS.id_processo = PROC.id'#13#10'INNER JOIN ordemservico O'#13#10'ON O' +
      'S.id = O.ID'#13#10'LEFT JOIN servico_os SER'#13#10'ON OS.id_servico_os = SER' +
      '.id'#13#10'WHERE OS.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 70
  end
  object dspOsImp_Proc: TDataSetProvider
    DataSet = sdsOsImp_Proc
    Left = 72
    Top = 70
  end
  object cdsOsImp_Proc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;ORDEM'
    Params = <>
    ProviderName = 'dspOsImp_Proc'
    Left = 104
    Top = 70
    object cdsOsImp_ProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOsImp_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOsImp_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      Required = True
    end
    object cdsOsImp_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsOsImp_ProcQTD_HORAS: TFloatField
      FieldName = 'QTD_HORAS'
    end
    object cdsOsImp_ProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOsImp_ProcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOsImp_ProcQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsOsImp_ProcID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object cdsOsImp_ProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsOsImp_ProcTERCEIRO: TStringField
      FieldName = 'TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsOsImp_ProcNOME_SERVICO_OS: TStringField
      FieldName = 'NOME_SERVICO_OS'
      Size = 50
    end
    object cdsOsImp_ProcTERCEIRO_SER: TStringField
      FieldName = 'TERCEIRO_SER'
      FixedChar = True
      Size = 1
    end
    object cdsOsImp_ProcVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
    end
    object cdsOsImp_ProcCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 12
    end
    object cdsOsImp_ProcORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsOsImp_ProcRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object cdsOsImp_ProcDESC_RETRABALHO: TStringField
      FieldName = 'DESC_RETRABALHO'
      Required = True
      FixedChar = True
      Size = 12
    end
  end
  object dsOsImp_Proc: TDataSource
    DataSet = cdsOsImp_Proc
    Left = 136
    Top = 70
  end
  object frxOsImp_Proc: TfrxDBDataset
    UserName = 'frxOsImp_Proc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ITEM_PROC=ITEM_PROC'
      'ID_PROCESSO=ID_PROCESSO'
      'QTD_HORAS=QTD_HORAS'
      'DTENTREGA=DTENTREGA'
      'OBS=OBS'
      'QTD=QTD'
      'ID_SERVICO_OS=ID_SERVICO_OS'
      'NOME_PROCESSO=NOME_PROCESSO'
      'TERCEIRO=TERCEIRO'
      'NOME_SERVICO_OS=NOME_SERVICO_OS'
      'TERCEIRO_SER=TERCEIRO_SER'
      'VLR_HORA=VLR_HORA'
      'CODBARRA=CODBARRA'
      'ORDEM=ORDEM'
      'RETRABALHO=RETRABALHO'
      'DESC_RETRABALHO=DESC_RETRABALHO')
    DataSet = cdsOsImp_Proc
    BCDToCurrency = False
    Left = 192
    Top = 70
  end
  object frxOSImp: TfrxDBDataset
    UserName = 'frxOSImp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'NUM_OS=NUM_OS'
      'NUM_NOTA=NUM_NOTA'
      'SERIE_NOTA=SERIE_NOTA'
      'ID_CLIENTE=ID_CLIENTE'
      'DTEMISSAO=DTEMISSAO'
      'DTRECEBIMENTO=DTRECEBIMENTO'
      'DT_AGENDA=DT_AGENDA'
      'QTD_DIAS_ENT=QTD_DIAS_ENT'
      'FIL_NOME=FIL_NOME'
      'NOME_INTERNO=NOME_INTERNO'
      'CLI_NOME=CLI_NOME'
      'CLI_FANTASIA=CLI_FANTASIA'
      'ID_PRODUTO=ID_PRODUTO'
      'QTD=QTD'
      'DM=DM'
      'REFERENCIA=REFERENCIA'
      'NOME_PRODUTO=NOME_PRODUTO'
      'OBS=OBS'
      'OBS_CONDENTRADA=OBS_CONDENTRADA'
      'NUM_ORCAMENTO=NUM_ORCAMENTO'
      'DESC_TIPO_SERVICO=DESC_TIPO_SERVICO'
      'RASTREABILIDADE=RASTREABILIDADE'
      'DESCRICAO_SERVICO=DESCRICAO_SERVICO'
      'NOME_CONTATO=NOME_CONTATO'
      'EMAIL_NFE=EMAIL_NFE'
      'ENDERECO=ENDERECO'
      'CIDADE=CIDADE'
      'UF=UF'
      'TELEFONE=TELEFONE'
      'TIPO_FRETE=TIPO_FRETE'
      'DTINICIO=DTINICIO'
      'sdsProdutoGerador=sdsProdutoGerador'
      'CONDPGTO=CONDPGTO'
      'CLI_CNPJ=CLI_CNPJ')
    DataSet = cdsOSImp
    BCDToCurrency = False
    Left = 224
    Top = 22
  end
  object sdsOSImp_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT S.*, MAT.nome, MAT.referencia, MAT.UNIDADE,'#13#10#39'5'#39'|| lpad(s' +
      '.item_mat,2,'#39'0'#39') || lpad((SELECT NUM_OS FROM ORDEMSERVICO O WHER' +
      'E O.ID = S.ID),10,'#39'0'#39') CODBARRA'#13#10'FROM ORDEMSERVICO_MAT S'#13#10'INNER ' +
      'JOIN PRODUTO MAT'#13#10'ON S.id_produto = MAT.ID'#13#10'WHERE S.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 118
  end
  object dspOSImp_Mat: TDataSetProvider
    DataSet = sdsOSImp_Mat
    Left = 72
    Top = 118
  end
  object cdsOSImp_Mat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSImp_Mat'
    Left = 104
    Top = 118
    object cdsOSImp_MatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOSImp_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOSImp_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object cdsOSImp_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOSImp_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOSImp_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOSImp_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOSImp_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOSImp_MatQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOSImp_MatFATURAR: TStringField
      FieldName = 'FATURAR'
      FixedChar = True
      Size = 1
    end
    object cdsOSImp_MatQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsOSImp_MatNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsOSImp_MatREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOSImp_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsOSImp_MatCODBARRA: TStringField
      FieldName = 'CODBARRA'
      Size = 13
    end
  end
  object dsOSImp_Mat: TDataSource
    DataSet = cdsOSImp_Mat
    Left = 136
    Top = 118
  end
  object frxOSImp_Mat: TfrxDBDataset
    UserName = 'frxOSImp_Mat'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ITEM_MAT=ITEM_MAT'
      'ID_PRODUTO=ID_PRODUTO'
      'QTD=QTD'
      'VLR_UNITARIO=VLR_UNITARIO'
      'VLR_TOTAL=VLR_TOTAL'
      'QTD_RESTANTE=QTD_RESTANTE'
      'QTD_FATURADO=QTD_FATURADO'
      'FATURAR=FATURAR'
      'QTD_AFATURAR=QTD_AFATURAR'
      'NOME=NOME'
      'REFERENCIA=REFERENCIA'
      'UNIDADE=UNIDADE'
      'CODBARRA=CODBARRA')
    DataSet = cdsOSImp_Mat
    BCDToCurrency = False
    Left = 192
    Top = 118
  end
  object sdsOSImp_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'select ESCOPO, OBS'#13#10'from ORDEMSERVICO_ITENS'#13#10'where ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 168
  end
  object dspOSImp_Itens: TDataSetProvider
    DataSet = sdsOSImp_Itens
    Left = 72
    Top = 168
  end
  object cdsOSImp_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSImp_Itens'
    Left = 104
    Top = 168
    object cdsOSImp_ItensESCOPO: TMemoField
      FieldName = 'ESCOPO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSImp_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsOSImp_Itens: TDataSource
    DataSet = sdsOSImp_Itens
    Left = 136
    Top = 168
  end
  object frxOSItem_Itens: TfrxDBDataset
    UserName = 'frxOSItem_Itens'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ESCOPO=ESCOPO'
      'OBS=OBS')
    DataSource = dsOSImp_Itens
    BCDToCurrency = False
    Left = 208
    Top = 168
  end
  object sdsOSImp_Custo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select PRAZO_DIAS, PRECO'#13#10'from ORDEMSERVICO_CUSTO'#13#10'where ID = :I' +
      'D  '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 216
  end
  object dspOSImp_Custo: TDataSetProvider
    DataSet = sdsOSImp_Custo
    Left = 72
    Top = 216
  end
  object cdsOSImp_Custo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSImp_Custo'
    Left = 104
    Top = 216
    object cdsOSImp_CustoPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsOSImp_CustoPRAZO_DIAS: TIntegerField
      FieldName = 'PRAZO_DIAS'
    end
  end
  object dsOSImp_Custo: TDataSource
    DataSet = cdsOSImp_Custo
    Left = 136
    Top = 216
  end
  object frxOSImp_Custo: TfrxDBDataset
    UserName = 'frxOSImp_Custo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'PRECO=PRECO'
      'PRAZO_DIAS=PRAZO_DIAS')
    DataSource = dsOSImp_Custo
    BCDToCurrency = False
    Left = 192
    Top = 216
  end
  object sdsOSImp_Ass: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select ASS.*, FUN.NOME, FUN.EMAIL, FUN.DDD, FUN.FONE, FUN.FUNCAO' +
      #13#10'from ORDEMSERVICO_ASS ASS'#13#10'inner join FUNCIONARIO FUN on FUN.C' +
      'ODIGO = ASS.ID_FUNCIONARIO'#13#10'where ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 264
  end
  object dspOSImp_Ass: TDataSetProvider
    DataSet = sdsOSImp_Ass
    Left = 72
    Top = 264
  end
  object cdsOSImp_Ass: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSImp_Ass'
    Left = 104
    Top = 264
    object cdsOSImp_AssID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOSImp_AssITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOSImp_AssID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsOSImp_AssNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsOSImp_AssEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object cdsOSImp_AssDDD: TIntegerField
      FieldName = 'DDD'
    end
    object cdsOSImp_AssFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsOSImp_AssFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
  end
  object dsOSImp_Ass: TDataSource
    DataSet = cdsOSImp_Ass
    Left = 136
    Top = 264
  end
  object frxOSImp_Ass: TfrxDBDataset
    UserName = 'frxOSImp_Ass'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ID_FUNCIONARIO=ID_FUNCIONARIO'
      'NOME=NOME'
      'EMAIL=EMAIL'
      'DDD=DDD'
      'FONE=FONE'
      'FUNCAO=FUNCAO')
    DataSource = dsOSImp_Ass
    BCDToCurrency = False
    Left = 192
    Top = 264
  end
  object qFilial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_FILIAL'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT endlogo'
      'FROM FILIAL'
      'WHERE ID = :ID_FILIAL')
    SQLConnection = dmDatabase.scoDados
    Left = 304
    Top = 136
    object qFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
  end
  object qRelatorios: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'F1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'T1'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'P1'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CAMINHO '
      'FROM FILIAL_RELATORIOS'
      'WHERE ID = :F1'
      'AND TIPO = :T1'
      'AND POSICAO = :P1')
    SQLConnection = dmDatabase.scoDados
    Left = 352
    Top = 136
    object qRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
  end
  object sdsProdutoGerador: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PG.*, M1.NOME NOME_MONTADORA, M2.NOME NOME_FABR_MOTOR, M3' +
      '.NOME NOME_FABR_GERADOR'#13#10'FROM PRODUTO_GERADOR PG'#13#10'LEFT JOIN MARC' +
      'A M1 ON (PG.ID_MOTADORA = M1.ID)'#13#10'LEFT JOIN MARCA M2 ON (PG.ID_F' +
      'ABRICANTE_MOTOR = M2.ID)'#13#10'LEFT JOIN MARCA M3 ON (PG.ID_FABRICANT' +
      'E_GERADOR = M3.ID)'#13#10'WHERE PG.ID = :ID_PRODUTO'
    DataSource = dsmOSImp
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_PRODUTO'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 312
  end
  object dsmOSImp: TDataSource
    DataSet = sdsOSImp
    Left = 168
    Top = 22
  end
  object cdsProdutoGerador: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOSImpsdsProdutoGerador
    Params = <>
    Left = 72
    Top = 312
    object cdsProdutoGeradorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoGeradorID_MOTADORA: TIntegerField
      FieldName = 'ID_MOTADORA'
    end
    object cdsProdutoGeradorID_FABRICANTE_MOTOR: TIntegerField
      FieldName = 'ID_FABRICANTE_MOTOR'
    end
    object cdsProdutoGeradorMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsProdutoGeradorNRO_SERIE: TStringField
      FieldName = 'NRO_SERIE'
      Size = 30
    end
    object cdsProdutoGeradorPOTENCIA: TStringField
      FieldName = 'POTENCIA'
    end
    object cdsProdutoGeradorANO_FABR: TSmallintField
      FieldName = 'ANO_FABR'
    end
    object cdsProdutoGeradorNRO_SERIE_EQUIP: TStringField
      FieldName = 'NRO_SERIE_EQUIP'
      Size = 30
    end
    object cdsProdutoGeradorID_FABRICANTE_GERADOR: TIntegerField
      FieldName = 'ID_FABRICANTE_GERADOR'
    end
    object cdsProdutoGeradorMODELO_GERADOR: TStringField
      FieldName = 'MODELO_GERADOR'
      Size = 30
    end
    object cdsProdutoGeradorNRO_SERIE_GERADOR: TStringField
      FieldName = 'NRO_SERIE_GERADOR'
      Size = 30
    end
    object cdsProdutoGeradorMODELO_USCA: TStringField
      FieldName = 'MODELO_USCA'
    end
    object cdsProdutoGeradorTENSAO: TStringField
      FieldName = 'TENSAO'
      Size = 10
    end
    object cdsProdutoGeradorNOME_MONTADORA: TStringField
      FieldName = 'NOME_MONTADORA'
      ProviderFlags = []
      Size = 40
    end
    object cdsProdutoGeradorNOME_FABR_MOTOR: TStringField
      FieldName = 'NOME_FABR_MOTOR'
      ProviderFlags = []
      Size = 40
    end
    object cdsProdutoGeradorNOME_FABR_GERADOR: TStringField
      FieldName = 'NOME_FABR_GERADOR'
      ProviderFlags = []
      Size = 40
    end
  end
  object dsProdutoGerador: TDataSource
    DataSet = cdsProdutoGerador
    Left = 104
    Top = 312
  end
  object frxProdutoGerador: TfrxDBDataset
    UserName = 'frxProdutoGerador'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_MOTADORA=ID_MOTADORA'
      'ID_FABRICANTE_MOTOR=ID_FABRICANTE_MOTOR'
      'MODELO=MODELO'
      'NRO_SERIE=NRO_SERIE'
      'POTENCIA=POTENCIA'
      'ANO_FABR=ANO_FABR'
      'NRO_SERIE_EQUIP=NRO_SERIE_EQUIP'
      'ID_FABRICANTE_GERADOR=ID_FABRICANTE_GERADOR'
      'MODELO_GERADOR=MODELO_GERADOR'
      'NRO_SERIE_GERADOR=NRO_SERIE_GERADOR'
      'MODELO_USCA=MODELO_USCA'
      'TENSAO=TENSAO'
      'NOME_MONTADORA=NOME_MONTADORA'
      'NOME_FABR_MOTOR=NOME_FABR_MOTOR'
      'NOME_FABR_GERADOR=NOME_FABR_GERADOR')
    DataSource = dsProdutoGerador
    BCDToCurrency = False
    Left = 144
    Top = 312
  end
  object sdsOrcSetor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OSS.*, S.NOME NOME_SETOR'#13#10'FROM ORDEMSERVICO_SETOR OSS'#13#10'IN' +
      'NER JOIN SETOR S ON (OSS.ID_SETOR = S.ID)'#13#10'WHERE OSS.ID = :ID'#13#10' ' +
      ' AND OSS.ITEM = :ITEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 360
  end
  object cdsOrcSetor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcSetor'
    AfterScroll = cdsOrcSetorAfterScroll
    Left = 104
    Top = 360
    object cdsOrcSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrcSetorITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrcSetorITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      Required = True
    end
    object cdsOrcSetorID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsOrcSetorTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
    end
    object cdsOrcSetorVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOrcSetorNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsOrcSetorUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsOrcSetor: TDataSource
    DataSet = cdsOrcSetor
    Left = 144
    Top = 360
  end
  object frxOrcSetor: TfrxDBDataset
    UserName = 'frxOrcSetor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ITEM_SETOR=ITEM_SETOR'
      'ID_SETOR=ID_SETOR'
      'TOTAL_HORA=TOTAL_HORA'
      'VLR_TOTAL=VLR_TOTAL'
      'NOME_SETOR=NOME_SETOR'
      'UNIDADE=UNIDADE')
    DataSource = dsOrcSetor
    BCDToCurrency = False
    Left = 184
    Top = 360
  end
  object sdsOrcSetorProc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OSSP.*, P.NOME NOME_PROCESSO'#13#10'FROM ORDEMSERVICO_SETOR_PRO' +
      'C OSSP'#13#10'INNER JOIN PROCESSO P ON (OSSP.ID_PROCESSO = P.ID)'#13#10'WHER' +
      'E OSSP.ID = :ID'#13#10' AND OSSP.ITEM = :ITEM'#13#10' AND ITEM_SETOR = :ITEM' +
      '_SETOR'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_SETOR'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 40
    Top = 408
  end
  object cdsOrcSetorProc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrcSetorProc'
    Left = 104
    Top = 408
    object cdsOrcSetorProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrcSetorProcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrcSetorProcITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      Required = True
    end
    object cdsOrcSetorProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      Required = True
    end
    object cdsOrcSetorProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsOrcSetorProcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object cdsOrcSetorProcTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
    end
    object cdsOrcSetorProcVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
    end
    object cdsOrcSetorProcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOrcSetorProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsOrcSetorProcUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsOrcSetorProc: TDataSource
    DataSet = cdsOrcSetorProc
    Left = 144
    Top = 408
  end
  object frxOrcSetorProc: TfrxDBDataset
    UserName = 'frxOrcSetorProc'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ITEM=ITEM'
      'ITEM_SETOR=ITEM_SETOR'
      'ITEM_PROC=ITEM_PROC'
      'ID_PROCESSO=ID_PROCESSO'
      'DESCRICAO=DESCRICAO'
      'TOTAL_HORA=TOTAL_HORA'
      'VLR_HORA=VLR_HORA'
      'VLR_TOTAL=VLR_TOTAL'
      'NOME_PROCESSO=NOME_PROCESSO'
      'UNIDADE=UNIDADE')
    DataSource = dsOrcSetorProc
    BCDToCurrency = False
    Left = 184
    Top = 408
  end
  object dsmOSImp_Itens: TDataSource
    DataSet = sdsOSImp_Itens
    Left = 168
    Top = 168
  end
  object dspOrcSetor: TDataSetProvider
    DataSet = sdsOrcSetor
    Left = 72
    Top = 360
  end
  object dspOrcSetorProc: TDataSetProvider
    DataSet = sdsOrcSetorProc
    Left = 72
    Top = 408
  end
end
