object DMCopiarOrc: TDMCopiarOrc
  OldCreateOrder = False
  Left = 268
  Top = 45
  Height = 596
  Width = 771
  object sdsOrc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM ORDEMSERVICO'#13#10'WHERE NUM_ORCAMENTO = :NUM_ORCAMENT' +
      'O'#13#10'and TP_ORCAMENTO = '#39'2'#39
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_ORCAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 55
    Top = 9
    object sdsOrcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrcNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsOrcDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsOrcHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsOrcID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsOrcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsOrcHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object sdsOrcNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsOrcSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object sdsOrcNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsOrcID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsOrcENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object sdsOrcCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrcDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsOrcFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsOrcHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object sdsOrcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrcVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsOrcVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object sdsOrcVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsOrcTP_SIMPLES: TStringField
      FieldName = 'TP_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsOrcTP_ORCAMENTO: TStringField
      FieldName = 'TP_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsOrcSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object sdsOrcSOLICITANTE_EMAIL: TStringField
      FieldName = 'SOLICITANTE_EMAIL'
      Size = 50
    end
    object sdsOrcSOLICITANTE_FONE: TStringField
      FieldName = 'SOLICITANTE_FONE'
      Size = 15
    end
    object sdsOrcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrcID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsOrcAGENTE1: TIntegerField
      FieldName = 'AGENTE1'
    end
    object sdsOrcAGENTE2: TIntegerField
      FieldName = 'AGENTE2'
    end
    object sdsOrcAGENTE3: TIntegerField
      FieldName = 'AGENTE3'
    end
    object sdsOrcAGENTE4: TIntegerField
      FieldName = 'AGENTE4'
    end
    object sdsOrcMATERIAL: TMemoField
      FieldName = 'MATERIAL'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrcID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object sdsOrcDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object sdsOrcHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
    end
    object sdsOrcFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object sdsOrcTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsOrcID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsOrcSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsOrcRASTREABILIDADE: TStringField
      FieldName = 'RASTREABILIDADE'
    end
    object sdsOrcDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object sdsOrcQTD_DIAS_ENT: TIntegerField
      FieldName = 'QTD_DIAS_ENT'
    end
    object sdsOrcNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object sdsOrcPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrcNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object sdsOrcUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsOrcID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsOrcTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
  end
  object dspOrc: TDataSetProvider
    DataSet = sdsOrc
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    Left = 88
    Top = 8
  end
  object cdsOrc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOrc'
    Left = 120
    Top = 8
    object cdsOrcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrcNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOrcDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOrcHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsOrcID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOrcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrcHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOrcNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsOrcSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsOrcNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsOrcID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsOrcENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object cdsOrcCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrcFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOrcHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOrcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOrcVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsOrcVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object cdsOrcVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object cdsOrcTP_SIMPLES: TStringField
      FieldName = 'TP_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsOrcTP_ORCAMENTO: TStringField
      FieldName = 'TP_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object cdsOrcSOLICITANTE_EMAIL: TStringField
      FieldName = 'SOLICITANTE_EMAIL'
      Size = 50
    end
    object cdsOrcSOLICITANTE_FONE: TStringField
      FieldName = 'SOLICITANTE_FONE'
      Size = 15
    end
    object cdsOrcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrcID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsOrcAGENTE1: TIntegerField
      FieldName = 'AGENTE1'
    end
    object cdsOrcAGENTE2: TIntegerField
      FieldName = 'AGENTE2'
    end
    object cdsOrcAGENTE3: TIntegerField
      FieldName = 'AGENTE3'
    end
    object cdsOrcAGENTE4: TIntegerField
      FieldName = 'AGENTE4'
    end
    object cdsOrcMATERIAL: TMemoField
      FieldName = 'MATERIAL'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrcID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsOrcDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object cdsOrcHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
    end
    object cdsOrcFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object cdsOrcTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsOrcSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrcRASTREABILIDADE: TStringField
      FieldName = 'RASTREABILIDADE'
    end
    object cdsOrcDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsOrcQTD_DIAS_ENT: TIntegerField
      FieldName = 'QTD_DIAS_ENT'
    end
    object cdsOrcNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object cdsOrcPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrcNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsOrcUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsOrcID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsOrcTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsOrcsdsOrc_Itens: TDataSetField
      FieldName = 'sdsOrc_Itens'
    end
  end
  object dsOrc: TDataSource
    DataSet = cdsOrc
    Left = 152
    Top = 8
  end
  object sdsOrc_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT OS.*'#13#10'FROM ORDEMSERVICO_ITENS OS'#13#10'WHERE OS.ID = :ID'
    DataSource = dsOrc_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 81
    object sdsOrc_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOrc_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsOrc_ItensMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsOrc_ItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sdsOrc_ItensNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object sdsOrc_ItensDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrc_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrc_ItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrc_ItensCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrc_ItensDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsOrc_ItensID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object sdsOrc_ItensTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object sdsOrc_ItensDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsOrc_ItensHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsOrc_ItensHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object sdsOrc_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrc_ItensVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsOrc_ItensVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object sdsOrc_ItensDEFEITO_ENCONTRADO: TMemoField
      FieldName = 'DEFEITO_ENCONTRADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrc_ItensNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object sdsOrc_ItensTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      FixedChar = True
      Size = 1
    end
    object sdsOrc_ItensDT_INSTALACAO: TDateField
      FieldName = 'DT_INSTALACAO'
    end
    object sdsOrc_ItensDT_GARANTIA: TDateField
      FieldName = 'DT_GARANTIA'
    end
    object sdsOrc_ItensSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsOrc_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsOrc_ItensHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object sdsOrc_ItensTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsOrc_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsOrc_ItensDM: TFloatField
      FieldName = 'DM'
    end
    object sdsOrc_ItensID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object sdsOrc_ItensOBS_CONDENTRADA: TMemoField
      FieldName = 'OBS_CONDENTRADA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrc_ItensDESCRICAO_SERVICO: TStringField
      FieldName = 'DESCRICAO_SERVICO'
      Size = 100
    end
    object sdsOrc_ItensTIPO_REVESTIMENTO: TStringField
      FieldName = 'TIPO_REVESTIMENTO'
      Size = 3
    end
    object sdsOrc_ItensQTD_MES_GARANTIA: TIntegerField
      FieldName = 'QTD_MES_GARANTIA'
    end
    object sdsOrc_ItensPARALELO: TFloatField
      FieldName = 'PARALELO'
    end
    object sdsOrc_ItensPARALELO_TOL: TFloatField
      FieldName = 'PARALELO_TOL'
    end
    object sdsOrc_ItensDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object sdsOrc_ItensDIAMETRO_TOL: TFloatField
      FieldName = 'DIAMETRO_TOL'
    end
    object sdsOrc_ItensBATIMENTO: TFloatField
      FieldName = 'BATIMENTO'
    end
    object sdsOrc_ItensBATIMENTO_TOL: TFloatField
      FieldName = 'BATIMENTO_TOL'
    end
    object sdsOrc_ItensCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object sdsOrc_ItensCOMPRIMENTO_TOL: TFloatField
      FieldName = 'COMPRIMENTO_TOL'
    end
    object sdsOrc_ItensRUGOSIDADE: TFloatField
      FieldName = 'RUGOSIDADE'
    end
    object sdsOrc_ItensRUGOSIDADE_DES: TFloatField
      FieldName = 'RUGOSIDADE_DES'
    end
    object sdsOrc_ItensSMETAL: TFloatField
      FieldName = 'SMETAL'
    end
    object sdsOrc_ItensVALIDADE_DIAS: TIntegerField
      FieldName = 'VALIDADE_DIAS'
    end
    object sdsOrc_ItensTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsOrc_ItensALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object sdsOrc_ItensLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsOrc_ItensESCOPO: TMemoField
      FieldName = 'ESCOPO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrc_ItensCALCULA_PI: TStringField
      FieldName = 'CALCULA_PI'
      FixedChar = True
      Size = 1
    end
    object sdsOrc_ItensCAMADA: TStringField
      FieldName = 'CAMADA'
      Size = 25
    end
    object sdsOrc_ItensPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrc_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrc_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsOrc_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsOrc_ItensQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
  end
  object cdsOrc_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrcsdsOrc_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    Left = 120
    Top = 80
    object cdsOrc_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrc_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsOrc_ItensMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsOrc_ItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsOrc_ItensNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsOrc_ItensDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrc_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrc_ItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrc_ItensCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrc_ItensDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrc_ItensID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsOrc_ItensTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsOrc_ItensDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsOrc_ItensHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsOrc_ItensHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOrc_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOrc_ItensVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object cdsOrc_ItensVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object cdsOrc_ItensDEFEITO_ENCONTRADO: TMemoField
      FieldName = 'DEFEITO_ENCONTRADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrc_ItensNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object cdsOrc_ItensTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      FixedChar = True
      Size = 1
    end
    object cdsOrc_ItensDT_INSTALACAO: TDateField
      FieldName = 'DT_INSTALACAO'
    end
    object cdsOrc_ItensDT_GARANTIA: TDateField
      FieldName = 'DT_GARANTIA'
    end
    object cdsOrc_ItensSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrc_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrc_ItensHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOrc_ItensTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsOrc_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOrc_ItensDM: TFloatField
      FieldName = 'DM'
    end
    object cdsOrc_ItensID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object cdsOrc_ItensOBS_CONDENTRADA: TMemoField
      FieldName = 'OBS_CONDENTRADA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrc_ItensDESCRICAO_SERVICO: TStringField
      FieldName = 'DESCRICAO_SERVICO'
      Size = 100
    end
    object cdsOrc_ItensTIPO_REVESTIMENTO: TStringField
      FieldName = 'TIPO_REVESTIMENTO'
      Size = 3
    end
    object cdsOrc_ItensQTD_MES_GARANTIA: TIntegerField
      FieldName = 'QTD_MES_GARANTIA'
    end
    object cdsOrc_ItensPARALELO: TFloatField
      FieldName = 'PARALELO'
    end
    object cdsOrc_ItensPARALELO_TOL: TFloatField
      FieldName = 'PARALELO_TOL'
    end
    object cdsOrc_ItensDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object cdsOrc_ItensDIAMETRO_TOL: TFloatField
      FieldName = 'DIAMETRO_TOL'
    end
    object cdsOrc_ItensBATIMENTO: TFloatField
      FieldName = 'BATIMENTO'
    end
    object cdsOrc_ItensBATIMENTO_TOL: TFloatField
      FieldName = 'BATIMENTO_TOL'
    end
    object cdsOrc_ItensCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsOrc_ItensCOMPRIMENTO_TOL: TFloatField
      FieldName = 'COMPRIMENTO_TOL'
    end
    object cdsOrc_ItensRUGOSIDADE: TFloatField
      FieldName = 'RUGOSIDADE'
    end
    object cdsOrc_ItensRUGOSIDADE_DES: TFloatField
      FieldName = 'RUGOSIDADE_DES'
    end
    object cdsOrc_ItensSMETAL: TFloatField
      FieldName = 'SMETAL'
    end
    object cdsOrc_ItensVALIDADE_DIAS: TIntegerField
      FieldName = 'VALIDADE_DIAS'
    end
    object cdsOrc_ItensTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsOrc_ItensALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsOrc_ItensLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsOrc_ItensESCOPO: TMemoField
      FieldName = 'ESCOPO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrc_ItensCALCULA_PI: TStringField
      FieldName = 'CALCULA_PI'
      FixedChar = True
      Size = 1
    end
    object cdsOrc_ItensCAMADA: TStringField
      FieldName = 'CAMADA'
      Size = 25
    end
    object cdsOrc_ItensPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrc_ItenssdsOrc_Setor: TDataSetField
      FieldName = 'sdsOrc_Setor'
    end
    object cdsOrc_ItenssdsOrc_Terc: TDataSetField
      FieldName = 'sdsOrc_Terc'
    end
    object cdsOrc_ItenssdsOrc_Mat: TDataSetField
      FieldName = 'sdsOrc_Mat'
    end
    object cdsOrc_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrc_ItensQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsOrc_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrc_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
  end
  object dsOrc_Itens: TDataSource
    DataSet = cdsOrc_Itens
    Left = 152
    Top = 80
  end
  object sdsOrc_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OM.*'#13#10'FROM ORDEMSERVICO_MAT OM'#13#10'WHERE OM.ID = :ID'#13#10' AND O' +
      'M.ITEM = :ITEM'#13#10
    DataSource = dsOrcItens_Mestre
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
    Left = 56
    Top = 136
    object sdsOrc_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOrc_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrc_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsOrc_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrc_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsOrc_MatQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsOrc_MatFATURAR: TStringField
      FieldName = 'FATURAR'
      FixedChar = True
      Size = 1
    end
    object sdsOrc_MatQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object sdsOrc_MatQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
    end
    object sdsOrc_MatTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsOrc_MatDTTIPO: TDateField
      FieldName = 'DTTIPO'
    end
    object sdsOrc_MatUSUARIO_TIPO: TStringField
      FieldName = 'USUARIO_TIPO'
      Size = 15
    end
  end
  object cdsOrc_Mat: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrc_ItenssdsOrc_Mat
    IndexFieldNames = 'ID;ITEM;ITEM_MAT'
    Params = <>
    Left = 120
    Top = 136
    object cdsOrc_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrc_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrc_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOrc_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOrc_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrc_MatQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrc_MatFATURAR: TStringField
      FieldName = 'FATURAR'
      FixedChar = True
      Size = 1
    end
    object cdsOrc_MatQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsOrc_MatQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
    end
    object cdsOrc_MatTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsOrc_MatDTTIPO: TDateField
      FieldName = 'DTTIPO'
    end
    object cdsOrc_MatUSUARIO_TIPO: TStringField
      FieldName = 'USUARIO_TIPO'
      Size = 15
    end
  end
  object dsOrc_Mat: TDataSource
    DataSet = cdsOrc_Mat
    Left = 152
    Top = 136
  end
  object dsOrc_Mestre: TDataSource
    DataSet = sdsOrc
    Left = 208
    Top = 24
  end
  object dsOrcItens_Mestre: TDataSource
    DataSet = sdsOrc_Itens
    Left = 208
    Top = 96
  end
  object sdsOrc_Terc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT O.*'#13#10'FROM ORDEMSERVICO_TERC O'#13#10'WHERE O.ID = :ID'#13#10'  AND O.' +
      'ITEM = :ITEM'#13#10
    DataSource = dsOrcItens_Mestre
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
    Left = 56
    Top = 193
    object sdsOrc_TercID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_TercITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_TercITEM_TERC: TIntegerField
      FieldName = 'ITEM_TERC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_TercVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsOrc_TercNOME_TERCEIRO: TStringField
      FieldName = 'NOME_TERCEIRO'
      Size = 60
    end
  end
  object cdsOrc_Terc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrc_ItenssdsOrc_Terc
    IndexFieldNames = 'ID;ITEM;ITEM_TERC'
    Params = <>
    Left = 120
    Top = 193
    object cdsOrc_TercID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_TercITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_TercITEM_TERC: TIntegerField
      FieldName = 'ITEM_TERC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_TercVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsOrc_TercNOME_TERCEIRO: TStringField
      FieldName = 'NOME_TERCEIRO'
      Size = 60
    end
  end
  object dsOrc_Terc: TDataSource
    DataSet = cdsOrc_Terc
    Left = 160
    Top = 193
  end
  object sdsOrc_Setor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM ORDEMSERVICO_SETOR'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = ' +
      ':ITEM'
    DataSource = dsOrcItens_Mestre
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
    Left = 56
    Top = 241
    object sdsOrc_SetorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_SetorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_SetorITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_SetorID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsOrc_SetorTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
    end
    object sdsOrc_SetorVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object cdsOrc_Setor: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrc_ItenssdsOrc_Setor
    IndexFieldNames = 'ID;ITEM;ITEM_SETOR'
    Params = <>
    Left = 120
    Top = 241
    object cdsOrc_SetorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_SetorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_SetorITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_SetorID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsOrc_SetorTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
      DisplayFormat = '0.00'
    end
    object cdsOrc_SetorVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrc_SetorsdsOrc_Setor_Proc: TDataSetField
      FieldName = 'sdsOrc_Setor_Proc'
    end
  end
  object dsOrc_Setor: TDataSource
    DataSet = cdsOrc_Setor
    Left = 160
    Top = 241
  end
  object dsOrcSetor_Mestre: TDataSource
    DataSet = sdsOrc_Setor
    Left = 40
    Top = 281
  end
  object sdsOrc_Setor_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM ORDEMSERVICO_SETOR_PROC'#13#10'WHERE ID = :ID'#13#10'  AND IT' +
      'EM = :ITEM'#13#10'  AND ITEM_SETOR = :ITEM_SETOR'
    DataSource = dsOrcSetor_Mestre
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
      end
      item
        DataType = ftInteger
        Name = 'ITEM_SETOR'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 329
    object sdsOrc_Setor_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_Setor_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_Setor_ProcITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_Setor_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrc_Setor_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsOrc_Setor_ProcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object sdsOrc_Setor_ProcTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
    end
    object sdsOrc_Setor_ProcVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
    end
    object sdsOrc_Setor_ProcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
  end
  object cdsOrc_Setor_Proc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrc_SetorsdsOrc_Setor_Proc
    IndexFieldNames = 'ID;ITEM;ITEM_SETOR;ITEM_PROC'
    Params = <>
    Left = 128
    Top = 329
    object cdsOrc_Setor_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_Setor_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_Setor_ProcITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_Setor_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrc_Setor_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsOrc_Setor_ProcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object cdsOrc_Setor_ProcTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
      DisplayFormat = '0.00'
    end
    object cdsOrc_Setor_ProcVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
      DisplayFormat = '0.00#'
    end
    object cdsOrc_Setor_ProcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
  end
  object dsOrc_Setor_Proc: TDataSource
    DataSet = cdsOrc_Setor_Proc
    Left = 192
    Top = 329
  end
end
