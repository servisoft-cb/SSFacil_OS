object DMCadOrdemServico: TDMCadOrdemServico
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 132
  Top = 12
  Height = 733
  Width = 1145
  object sdsOrdemServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.*, CLI.NOME NOME_CLIENTE, CLI.CNPJ_CPF, CLI.CIDADE, F.' +
      'NOME NOME_ATENDENTE, CP.NOME CONDPGTO, CLI.INSCR_EST, '#13#10'CLI.ENDE' +
      'RECO, CLI.NUM_END, CLI.COMPLEMENTO_END, CLI.UF, CLI.FANTASIA, CL' +
      'I.BAIRRO'#13#10'FROM ORDEMSERVICO OS'#13#10'LEFT JOIN PESSOA CLI ON (OS.ID_C' +
      'LIENTE = CLI.CODIGO)'#13#10'LEFT JOIN FUNCIONARIO F ON (OS.ID_FUNCIONA' +
      'RIO = F.CODIGO)'#13#10'LEFT JOIN CONDPGTO CP ON (OS.ID_CONDPGTO = CP.I' +
      'D)'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 8
    object sdsOrdemServicoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServicoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsOrdemServicoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object sdsOrdemServicoHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object sdsOrdemServicoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsOrdemServicoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsOrdemServicoHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object sdsOrdemServicoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object sdsOrdemServicoSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object sdsOrdemServicoNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object sdsOrdemServicoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsOrdemServicoENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsOrdemServicoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsOrdemServicoHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object sdsOrdemServicoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object sdsOrdemServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServicoVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsOrdemServicoVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object sdsOrdemServicoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object sdsOrdemServicoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object sdsOrdemServicoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
    end
    object sdsOrdemServicoTP_SIMPLES: TStringField
      FieldName = 'TP_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoTP_ORCAMENTO: TStringField
      FieldName = 'TP_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object sdsOrdemServicoSOLICITANTE_EMAIL: TStringField
      FieldName = 'SOLICITANTE_EMAIL'
      Size = 50
    end
    object sdsOrdemServicoSOLICITANTE_FONE: TStringField
      FieldName = 'SOLICITANTE_FONE'
      Size = 15
    end
    object sdsOrdemServicoNOME_ATENDENTE: TStringField
      FieldName = 'NOME_ATENDENTE'
      ProviderFlags = []
      Size = 50
    end
    object sdsOrdemServicoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServicoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object sdsOrdemServicoCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      ProviderFlags = []
      Size = 40
    end
    object sdsOrdemServicoINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsOrdemServicoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsOrdemServicoNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsOrdemServicoCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsOrdemServicoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsOrdemServicoAGENTE1: TIntegerField
      FieldName = 'AGENTE1'
    end
    object sdsOrdemServicoAGENTE2: TIntegerField
      FieldName = 'AGENTE2'
    end
    object sdsOrdemServicoAGENTE3: TIntegerField
      FieldName = 'AGENTE3'
    end
    object sdsOrdemServicoAGENTE4: TIntegerField
      FieldName = 'AGENTE4'
    end
    object sdsOrdemServicoMATERIAL: TMemoField
      FieldName = 'MATERIAL'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServicoDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object sdsOrdemServicoHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
    end
    object sdsOrdemServicoFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object sdsOrdemServicoTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object sdsOrdemServicoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 30
    end
    object sdsOrdemServicoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsOrdemServicoID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object sdsOrdemServicoRASTREABILIDADE: TStringField
      FieldName = 'RASTREABILIDADE'
    end
    object sdsOrdemServicoDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object sdsOrdemServicoQTD_DIAS_ENT: TIntegerField
      FieldName = 'QTD_DIAS_ENT'
    end
    object sdsOrdemServicoNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object sdsOrdemServicoNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object sdsOrdemServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsOrdemServicoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object sdsOrdemServicoTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoCOPIADO_PEDIDO: TStringField
      FieldName = 'COPIADO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServicoDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
  end
  object dspOrdemServico: TDataSetProvider
    DataSet = sdsOrdemServico
    Options = [poCascadeDeletes, poCascadeUpdates]
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspOrdemServicoUpdateError
    Left = 88
    Top = 8
  end
  object cdsOrdemServico: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspOrdemServico'
    OnNewRecord = cdsOrdemServicoNewRecord
    Left = 120
    Top = 7
    object cdsOrdemServicoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServicoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOrdemServicoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOrdemServicoHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsOrdemServicoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOrdemServicoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrdemServicoHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOrdemServicoNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsOrdemServicoSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsOrdemServicoNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsOrdemServicoID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsOrdemServicoENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrdemServicoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOrdemServicoHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOrdemServicoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      ProviderFlags = []
      Size = 60
    end
    object cdsOrdemServicoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServicoVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServicoVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServicoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      ProviderFlags = []
      Size = 18
    end
    object cdsOrdemServicoCIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 40
    end
    object cdsOrdemServicoVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServicoTP_SIMPLES: TStringField
      FieldName = 'TP_SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoTP_ORCAMENTO: TStringField
      FieldName = 'TP_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object cdsOrdemServicoSOLICITANTE_EMAIL: TStringField
      FieldName = 'SOLICITANTE_EMAIL'
      Size = 50
    end
    object cdsOrdemServicoSOLICITANTE_FONE: TStringField
      FieldName = 'SOLICITANTE_FONE'
      Size = 15
    end
    object cdsOrdemServicoNOME_ATENDENTE: TStringField
      FieldName = 'NOME_ATENDENTE'
      ProviderFlags = []
      Size = 50
    end
    object cdsOrdemServicoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServicoID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsOrdemServicoCONDPGTO: TStringField
      FieldName = 'CONDPGTO'
      ProviderFlags = []
      Size = 40
    end
    object cdsOrdemServicoINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsOrdemServicoENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsOrdemServicoNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsOrdemServicoCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsOrdemServicoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsOrdemServicoAGENTE1: TIntegerField
      FieldName = 'AGENTE1'
    end
    object cdsOrdemServicoAGENTE2: TIntegerField
      FieldName = 'AGENTE2'
    end
    object cdsOrdemServicoAGENTE3: TIntegerField
      FieldName = 'AGENTE3'
    end
    object cdsOrdemServicoAGENTE4: TIntegerField
      FieldName = 'AGENTE4'
    end
    object cdsOrdemServicoMATERIAL: TMemoField
      FieldName = 'MATERIAL'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServicosdsOrdemServico_Itens: TDataSetField
      FieldName = 'sdsOrdemServico_Itens'
    end
    object cdsOrdemServicoDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object cdsOrdemServicoHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
    end
    object cdsOrdemServicolkTecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTecnico'
      LookupDataSet = cdsFuncionario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'ID_FUNCIONARIO'
      Size = 50
      Lookup = True
    end
    object cdsOrdemServicoFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object cdsOrdemServicoTIPO_SERVICO: TStringField
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsOrdemServicoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoFANTASIA: TStringField
      FieldName = 'FANTASIA'
      ProviderFlags = []
      Size = 30
    end
    object cdsOrdemServicoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsOrdemServicoID_NOTA_SERVICO: TIntegerField
      FieldName = 'ID_NOTA_SERVICO'
    end
    object cdsOrdemServicoRASTREABILIDADE: TStringField
      FieldName = 'RASTREABILIDADE'
    end
    object cdsOrdemServicoDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsOrdemServicoQTD_DIAS_ENT: TIntegerField
      FieldName = 'QTD_DIAS_ENT'
    end
    object cdsOrdemServicoNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object cdsOrdemServicoNOME_CONTATO: TStringField
      FieldName = 'NOME_CONTATO'
      Size = 40
    end
    object cdsOrdemServicosdsOrdemServico_Custo: TDataSetField
      FieldName = 'sdsOrdemServico_Custo'
    end
    object cdsOrdemServicoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsOrdemServicosdsOrdemServico_Ass: TDataSetField
      FieldName = 'sdsOrdemServico_Ass'
    end
    object cdsOrdemServicoID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsOrdemServicoTIPO_FRETE: TStringField
      FieldName = 'TIPO_FRETE'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoCOPIADO_PEDIDO: TStringField
      FieldName = 'COPIADO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
  end
  object dsOrdemServico: TDataSource
    DataSet = cdsOrdemServico
    Left = 152
    Top = 8
  end
  object sdsOrdemServico_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.ID, OS.num_os, OS.dtemissao, OS.hremissao, OS.id_clien' +
      'te, OS.dtentrega,'#13#10'OS.hrentrega, OS.num_nota, OS.num_oc, OS.seri' +
      'e_nota, OS.id_funcionario, OS.entregue,'#13#10'OS.concluido, OS.dtconc' +
      'luido, OS.filial, CLI.NOME NOME_CLIENTE, OS.SOLICITANTE_NOME,'#13#10'o' +
      's.faturado, OT.vlr_restante, OS.vlr_total, OS.vlr_entrada, OS.ST' +
      'ATUS, OS.NUM_ORCAMENTO,'#13#10'OS.PRODUZIDO, ENC.dtprocesso,ENC.dtmate' +
      'rial, ENC.hrprocesso, ENC.hrmaterial,'#13#10'ENC.processo, ENC.materia' +
      'l, OC.vlr_proposta,  OC.PRECO, AP.TIPO TIPO_APROV_ORC,VEN.NOME N' +
      'OME_VENDEDOR,'#13#10'OS.COPIADO_PEDIDO, OS.DTRECEBIMENTO, '#13#10'CASE'#13#10'  WH' +
      'EN OS.STATUS = '#39'1'#39' THEN '#39'Entrada'#39#13#10'  WHEN OS.STATUS = '#39'2'#39' THEN '#39 +
      'Or'#231'ado'#39#13#10'  WHEN OS.STATUS = '#39'3'#39' THEN '#39'Aguardando Aprova'#231#227'o'#39#13#10'  W' +
      'HEN OS.STATUS = '#39'4'#39' THEN '#39'Liberado para Servi'#231'o'#39#13#10'  WHEN OS.STAT' +
      'US = '#39'5'#39' THEN '#39'Aguardando Pe'#231'as'#39#13#10'  WHEN OS.STATUS = '#39'6'#39' THEN '#39'S' +
      'em conserto'#39#13#10'  WHEN OS.STATUS = '#39'8'#39' THEN '#39'Pronto'#39#13#10'  WHEN OS.ST' +
      'ATUS = '#39'9'#39' THEN '#39'Entregue'#39#13#10'  end DESC_STATUS,'#13#10'CASE'#13#10' WHEN AP.T' +
      'IPO = '#39'A'#39' THEN '#39'APROVADO'#39#13#10' WHEN AP.TIPO = '#39'N'#39' THEN '#39'N'#195'O APROVAD' +
      'O'#39#13#10' ELSE '#39'PENDENTE'#39#13#10' END DESC_TIPO_ORC, OS.faturado_nota'#13#10#13#10#13#10 +
      'FROM ORDEMSERVICO OS'#13#10'LEFT JOIN PESSOA CLI ON (OS.ID_CLIENTE = C' +
      'LI.CODIGO)'#13#10'LEFT JOIN ORDEMSERVICO_OTICA OT ON (OS.id = OT.ID)'#13#10 +
      'LEFT JOIN ORDEMSERVICO_ENC ENC ON (OS.ID = ENC.ID) '#13#10'LEFT JOIN O' +
      'RDEMSERVICO_APROV AP ON (OS.ID = AP.ID)'#13#10'LEFT JOIN ORDEMSERVICO_' +
      'CUSTO OC ON (OS.ID = OC.ID)'#13#10'LEFT JOIN PESSOA VEN ON VEN.CODIGO ' +
      '= OS.ID_VENDEDOR'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 8
  end
  object dspOrdemServico_Consulta: TDataSetProvider
    DataSet = sdsOrdemServico_Consulta
    OnUpdateError = dspOrdemServicoUpdateError
    Left = 336
    Top = 8
  end
  object cdsOrdemServico_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemServico_Consulta'
    Left = 368
    Top = 8
    object cdsOrdemServico_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrdemServico_ConsultaNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOrdemServico_ConsultaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOrdemServico_ConsultaHREMISSAO: TTimeField
      FieldName = 'HREMISSAO'
    end
    object cdsOrdemServico_ConsultaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsOrdemServico_ConsultaDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrdemServico_ConsultaHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOrdemServico_ConsultaNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsOrdemServico_ConsultaSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsOrdemServico_ConsultaNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsOrdemServico_ConsultaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsOrdemServico_ConsultaENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrdemServico_ConsultaFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOrdemServico_ConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsOrdemServico_ConsultaSOLICITANTE_NOME: TStringField
      FieldName = 'SOLICITANTE_NOME'
      Size = 60
    end
    object cdsOrdemServico_ConsultaFATURADO: TStringField
      FieldName = 'FATURADO'
      Size = 1
    end
    object cdsOrdemServico_ConsultaVLR_RESTANTE: TFloatField
      FieldName = 'VLR_RESTANTE'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ConsultaVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaDESC_STATUS: TStringField
      FieldName = 'DESC_STATUS'
      FixedChar = True
      Size = 21
    end
    object cdsOrdemServico_ConsultaNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
    object cdsOrdemServico_ConsultaPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaDTPROCESSO: TDateField
      FieldName = 'DTPROCESSO'
    end
    object cdsOrdemServico_ConsultaDTMATERIAL: TDateField
      FieldName = 'DTMATERIAL'
    end
    object cdsOrdemServico_ConsultaHRPROCESSO: TTimeField
      FieldName = 'HRPROCESSO'
    end
    object cdsOrdemServico_ConsultaHRMATERIAL: TTimeField
      FieldName = 'HRMATERIAL'
    end
    object cdsOrdemServico_ConsultaPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaMATERIAL: TStringField
      FieldName = 'MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaVLR_PROPOSTA: TFloatField
      FieldName = 'VLR_PROPOSTA'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ConsultaPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsOrdemServico_ConsultaDESC_TIPO_ORC: TStringField
      FieldName = 'DESC_TIPO_ORC'
      Required = True
      FixedChar = True
      Size = 12
    end
    object cdsOrdemServico_ConsultaTIPO_APROV_ORC: TStringField
      FieldName = 'TIPO_APROV_ORC'
      Size = 1
    end
    object cdsOrdemServico_ConsultaNOME_VENDEDOR: TStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 60
    end
    object cdsOrdemServico_ConsultaCOPIADO_PEDIDO: TStringField
      FieldName = 'COPIADO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ConsultaDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsOrdemServico_ConsultaFATURADO_NOTA: TStringField
      FieldName = 'FATURADO_NOTA'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrdemServico_Consulta: TDataSource
    DataSet = cdsOrdemServico_Consulta
    Left = 408
    Top = 8
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PES.codigo, PES.nome, PES.fantasia, PES.endereco, PES.com' +
      'plemento_end, PES.num_end, PES.bairro,'#13#10'PES.id_cidade, PES.cidad' +
      'e, PES.uf, PES.bairro_ent, PES.bairro_pgto, pes.endereco_ent, pe' +
      's.endereco_pgto, pes.complemento_end_ent, pes.complemento_end_pg' +
      'to, pes.num_end_ent, pes.num_end_pgto, pes.cnpj_cpf, pes.cep, pe' +
      's.cep_ent, pes.cep_pgto, pes.id_cidade_ent, pes.id_cidade_pgto, ' +
      'pes.uf_ent, pes.fone_pgto, pes.cnpj_cpf_ent, PES.ID_REGIME_TRIB,' +
      ' PES.ID_PAIS, PES.PESSOA, PES.TIPO_ICMS, PES.email_nfe, PES.emai' +
      'l_nfe2, PES.INSCR_EST, PES.DDDFONE1, PES.TELEFONE1, PES.PESSOA_P' +
      'GTO, PES.CNPJ_CPG_PGTO, PES.PESSOA_ENT, PES.USA_TAMANHO_AGRUPADO' +
      '_NFE, PES.ID_TAB_PRECO, PES.VLR_LIMITE_CREDITO,  PES.usa_transfi' +
      'cms, PES.id_tipocobranca, PES.id_contaboleto, PES.id_condpgto, P' +
      'ES.cliente_conta_id,'#13#10'PES.cliente_estoque, PES.id_vendedor, PES.' +
      'PERC_COMISSAO, PES.ID_TRANSPORTADORA, PES.ID_REDESPACHO, PES.TIP' +
      'O_FRETE, PES.EMAIL_PGTO, PES.FORNECEDOR_CONTA_ID,'#13#10'PES.DDDFAX, P' +
      'ES.FAX'#13#10'FROM PESSOA PES'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 72
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 336
    Top = 72
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 368
    Top = 72
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsClienteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsClienteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsClienteCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsClienteNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsClienteID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsClienteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsClienteUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsClienteDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsClienteTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsClienteDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsClienteFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsClientePESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsClienteINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsClienteID_VENDEDOR: TIntegerField
      FieldName = 'ID_VENDEDOR'
    end
    object cdsClienteID_CONDPGTO: TIntegerField
      FieldName = 'ID_CONDPGTO'
    end
    object cdsClienteID_CONTABOLETO: TIntegerField
      FieldName = 'ID_CONTABOLETO'
    end
    object cdsClienteID_TRANSPORTADORA: TIntegerField
      FieldName = 'ID_TRANSPORTADORA'
    end
    object cdsClienteID_TIPOCOBRANCA: TIntegerField
      FieldName = 'ID_TIPOCOBRANCA'
    end
    object cdsClientePERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsClienteID_REDESPACHO: TIntegerField
      FieldName = 'ID_REDESPACHO'
    end
    object cdsClienteID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 408
    Top = 72
  end
  object sdsServico_Int: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_INT'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 126
    object sdsServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
  end
  object dspServico_Int: TDataSetProvider
    DataSet = sdsServico_Int
    Left = 336
    Top = 126
  end
  object cdsServico_Int: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspServico_Int'
    Left = 368
    Top = 126
    object cdsServico_IntID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_IntNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsServico_IntVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
  end
  object dsServico_Int: TDataSource
    DataSet = cdsServico_Int
    Left = 408
    Top = 126
  end
  object sdsOrdemServico_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT OS.*'#13#10'FROM ORDEMSERVICO_ITENS OS'#13#10'WHERE OS.ID = :ID'
    DataSource = dsOrdemServico_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 57
    Top = 80
    object sdsOrdemServico_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOrdemServico_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object sdsOrdemServico_ItensMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object sdsOrdemServico_ItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sdsOrdemServico_ItensNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object sdsOrdemServico_ItensDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsOrdemServico_ItensID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object sdsOrdemServico_ItensTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsOrdemServico_ItensHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsOrdemServico_ItensHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object sdsOrdemServico_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServico_ItensVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
    end
    object sdsOrdemServico_ItensVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
    end
    object sdsOrdemServico_ItensDEFEITO_ENCONTRADO: TMemoField
      FieldName = 'DEFEITO_ENCONTRADO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object sdsOrdemServico_ItensTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensDT_INSTALACAO: TDateField
      FieldName = 'DT_INSTALACAO'
    end
    object sdsOrdemServico_ItensDT_GARANTIA: TDateField
      FieldName = 'DT_GARANTIA'
    end
    object sdsOrdemServico_ItensSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsOrdemServico_ItensHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object sdsOrdemServico_ItensTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsOrdemServico_ItensDM: TFloatField
      FieldName = 'DM'
    end
    object sdsOrdemServico_ItensID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object sdsOrdemServico_ItensOBS_CONDENTRADA: TMemoField
      FieldName = 'OBS_CONDENTRADA'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensDESCRICAO_SERVICO: TStringField
      FieldName = 'DESCRICAO_SERVICO'
      Size = 100
    end
    object sdsOrdemServico_ItensTIPO_REVESTIMENTO: TStringField
      FieldName = 'TIPO_REVESTIMENTO'
      Size = 3
    end
    object sdsOrdemServico_ItensQTD_MES_GARANTIA: TIntegerField
      FieldName = 'QTD_MES_GARANTIA'
    end
    object sdsOrdemServico_ItensPARALELO: TFloatField
      FieldName = 'PARALELO'
    end
    object sdsOrdemServico_ItensPARALELO_TOL: TFloatField
      FieldName = 'PARALELO_TOL'
    end
    object sdsOrdemServico_ItensDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object sdsOrdemServico_ItensDIAMETRO_TOL: TFloatField
      FieldName = 'DIAMETRO_TOL'
    end
    object sdsOrdemServico_ItensBATIMENTO: TFloatField
      FieldName = 'BATIMENTO'
    end
    object sdsOrdemServico_ItensBATIMENTO_TOL: TFloatField
      FieldName = 'BATIMENTO_TOL'
    end
    object sdsOrdemServico_ItensCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object sdsOrdemServico_ItensCOMPRIMENTO_TOL: TFloatField
      FieldName = 'COMPRIMENTO_TOL'
    end
    object sdsOrdemServico_ItensRUGOSIDADE: TFloatField
      FieldName = 'RUGOSIDADE'
    end
    object sdsOrdemServico_ItensRUGOSIDADE_DES: TFloatField
      FieldName = 'RUGOSIDADE_DES'
    end
    object sdsOrdemServico_ItensSMETAL: TFloatField
      FieldName = 'SMETAL'
    end
    object sdsOrdemServico_ItensVALIDADE_DIAS: TIntegerField
      FieldName = 'VALIDADE_DIAS'
    end
    object sdsOrdemServico_ItensTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object sdsOrdemServico_ItensLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object sdsOrdemServico_ItensESCOPO: TMemoField
      FieldName = 'ESCOPO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ItensCALCULA_PI: TStringField
      FieldName = 'CALCULA_PI'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensCAMADA: TStringField
      FieldName = 'CAMADA'
      Size = 25
    end
    object sdsOrdemServico_ItensPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ItensQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object sdsOrdemServico_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrdemServico_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsOrdemServico_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsOrdemServico_ItensQTD_NOTA: TFloatField
      FieldName = 'QTD_NOTA'
    end
  end
  object cdsOrdemServico_Itens: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServicosdsOrdemServico_Itens
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforePost = cdsOrdemServico_ItensBeforePost
    OnNewRecord = cdsOrdemServico_ItensNewRecord
    Left = 119
    Top = 80
    object cdsOrdemServico_ItensID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrdemServico_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsOrdemServico_ItensMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsOrdemServico_ItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsOrdemServico_ItensNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsOrdemServico_ItensDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItensDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrdemServico_ItensID_TECNICO: TIntegerField
      FieldName = 'ID_TECNICO'
    end
    object cdsOrdemServico_ItensTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItensDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsOrdemServico_ItensHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsOrdemServico_ItensHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOrdemServico_ItensVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ItensVLR_SERVICO: TFloatField
      FieldName = 'VLR_SERVICO'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ItensVLR_MATERIAL: TFloatField
      FieldName = 'VLR_MATERIAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ItensDEFEITO_ENCONTRADO: TMemoField
      FieldName = 'DEFEITO_ENCONTRADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object cdsOrdemServico_ItensTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItenssdsOrdemServico_Mat: TDataSetField
      FieldName = 'sdsOrdemServico_Mat'
    end
    object cdsOrdemServico_ItensDT_INSTALACAO: TDateField
      FieldName = 'DT_INSTALACAO'
    end
    object cdsOrdemServico_ItensDT_GARANTIA: TDateField
      FieldName = 'DT_GARANTIA'
    end
    object cdsOrdemServico_ItensSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrdemServico_ItensHRENTREGA: TTimeField
      FieldName = 'HRENTREGA'
    end
    object cdsOrdemServico_ItensTIPO_ATENDIMENTO: TStringField
      FieldName = 'TIPO_ATENDIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOrdemServico_ItenssdsOrdemServico_Proc: TDataSetField
      FieldName = 'sdsOrdemServico_Proc'
    end
    object cdsOrdemServico_ItensDM: TFloatField
      FieldName = 'DM'
    end
    object cdsOrdemServico_ItensID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object cdsOrdemServico_ItenssdsOrdemServico_Terc: TDataSetField
      FieldName = 'sdsOrdemServico_Terc'
    end
    object cdsOrdemServico_ItensOBS_CONDENTRADA: TMemoField
      FieldName = 'OBS_CONDENTRADA'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensDESCRICAO_SERVICO: TStringField
      FieldName = 'DESCRICAO_SERVICO'
      Size = 100
    end
    object cdsOrdemServico_ItensTIPO_REVESTIMENTO: TStringField
      FieldName = 'TIPO_REVESTIMENTO'
      Size = 3
    end
    object cdsOrdemServico_ItensQTD_MES_GARANTIA: TIntegerField
      FieldName = 'QTD_MES_GARANTIA'
    end
    object cdsOrdemServico_ItensPARALELO: TFloatField
      FieldName = 'PARALELO'
    end
    object cdsOrdemServico_ItensPARALELO_TOL: TFloatField
      FieldName = 'PARALELO_TOL'
    end
    object cdsOrdemServico_ItensDIAMETRO: TFloatField
      FieldName = 'DIAMETRO'
    end
    object cdsOrdemServico_ItensDIAMETRO_TOL: TFloatField
      FieldName = 'DIAMETRO_TOL'
    end
    object cdsOrdemServico_ItensBATIMENTO: TFloatField
      FieldName = 'BATIMENTO'
    end
    object cdsOrdemServico_ItensBATIMENTO_TOL: TFloatField
      FieldName = 'BATIMENTO_TOL'
    end
    object cdsOrdemServico_ItensCOMPRIMENTO: TFloatField
      FieldName = 'COMPRIMENTO'
    end
    object cdsOrdemServico_ItensCOMPRIMENTO_TOL: TFloatField
      FieldName = 'COMPRIMENTO_TOL'
    end
    object cdsOrdemServico_ItensRUGOSIDADE: TFloatField
      FieldName = 'RUGOSIDADE'
    end
    object cdsOrdemServico_ItensRUGOSIDADE_DES: TFloatField
      FieldName = 'RUGOSIDADE_DES'
    end
    object cdsOrdemServico_ItensSMETAL: TFloatField
      FieldName = 'SMETAL'
    end
    object cdsOrdemServico_ItensVALIDADE_DIAS: TIntegerField
      FieldName = 'VALIDADE_DIAS'
    end
    object cdsOrdemServico_ItenssdsOrdemServico_Setor: TDataSetField
      FieldName = 'sdsOrdemServico_Setor'
    end
    object cdsOrdemServico_ItenssdsOrdemServico_Ensaio: TDataSetField
      FieldName = 'sdsOrdemServico_Ensaio'
    end
    object cdsOrdemServico_ItensTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItensALTURA: TFloatField
      FieldName = 'ALTURA'
    end
    object cdsOrdemServico_ItensLARGURA: TFloatField
      FieldName = 'LARGURA'
    end
    object cdsOrdemServico_ItensESCOPO: TMemoField
      FieldName = 'ESCOPO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ItensCALCULA_PI: TStringField
      FieldName = 'CALCULA_PI'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItensCAMADA: TStringField
      FieldName = 'CAMADA'
      Size = 25
    end
    object cdsOrdemServico_ItensPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ItenssdsOrdemServico_Lib: TDataSetField
      FieldName = 'sdsOrdemServico_Lib'
    end
    object cdsOrdemServico_ItensQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsOrdemServico_ItensQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrdemServico_ItensQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrdemServico_ItensQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrdemServico_ItensQTD_NOTA: TFloatField
      FieldName = 'QTD_NOTA'
    end
  end
  object dsOrdemServico_Itens: TDataSource
    DataSet = cdsOrdemServico_Itens
    Left = 152
    Top = 80
  end
  object qProximo_Num: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUM_OS) NUM_OS'
      'FROM ORDEMSERVICO')
    SQLConnection = dmDatabase.scoDados
    Left = 712
    Top = 403
    object qProximo_NumNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 339
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosID_CONTA_PADRAO: TIntegerField
      FieldName = 'ID_CONTA_PADRAO'
    end
    object qParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField
      FieldName = 'ID_TIPO_COBRANCA_PADRAO'
    end
    object qParametrosIMP_MEIA_FOLHA_PED: TStringField
      FieldName = 'IMP_MEIA_FOLHA_PED'
      FixedChar = True
      Size = 1
    end
    object qParametrosNUMERO_SERIE_INTERNO: TStringField
      FieldName = 'NUMERO_SERIE_INTERNO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_SERVICO_MOTOR: TStringField
      FieldName = 'USA_SERVICO_MOTOR'
      Size = 1
    end
  end
  object sdsFilial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FILIAL'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 241
  end
  object dspFilial: TDataSetProvider
    DataSet = sdsFilial
    Left = 336
    Top = 241
  end
  object cdsFilial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFilial'
    Left = 368
    Top = 241
    object cdsFilialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsFilialNOME_INTERNO: TStringField
      FieldName = 'NOME_INTERNO'
      Size = 30
    end
    object cdsFilialENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsFilialCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsFilialNUM_END: TStringField
      FieldName = 'NUM_END'
      Size = 15
    end
    object cdsFilialBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsFilialCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object cdsFilialID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsFilialCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsFilialUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object cdsFilialDDD1: TIntegerField
      FieldName = 'DDD1'
    end
    object cdsFilialFONE1: TStringField
      FieldName = 'FONE1'
      Size = 15
    end
    object cdsFilialDDD2: TIntegerField
      FieldName = 'DDD2'
    end
    object cdsFilialFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object cdsFilialDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsFilialFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsFilialPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsFilialCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsFilialINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsFilialSIMPLES: TStringField
      FieldName = 'SIMPLES'
      FixedChar = True
      Size = 1
    end
    object cdsFilialENDLOGO: TStringField
      FieldName = 'ENDLOGO'
      Size = 250
    end
    object cdsFilialHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 250
    end
    object cdsFilialEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 40
    end
    object cdsFilialLICENCA_FEPAM: TStringField
      FieldName = 'LICENCA_FEPAM'
      Size = 15
    end
    object cdsFilialsdsFilialRelatorios: TDataSetField
      FieldName = 'sdsFilialRelatorios'
    end
    object cdsFilialPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsFilialPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsFilialPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
    end
  end
  object dsFilial: TDataSource
    DataSet = cdsFilial
    Left = 408
    Top = 241
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM FUNCIONARIO'#13#10'WHERE INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 182
    object sdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsFuncionarioCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object sdsFuncionarioNUM_CONSELHO: TStringField
      FieldName = 'NUM_CONSELHO'
      Size = 10
    end
    object sdsFuncionarioMOSTRAR_ORC: TStringField
      FieldName = 'MOSTRAR_ORC'
      FixedChar = True
      Size = 1
    end
    object sdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 336
    Top = 182
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 368
    Top = 182
    object cdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionarioCONSELHO: TStringField
      FieldName = 'CONSELHO'
      Size = 10
    end
    object cdsFuncionarioNUM_CONSELHO: TStringField
      FieldName = 'NUM_CONSELHO'
      Size = 10
    end
    object cdsFuncionarioMOSTRAR_ORC: TStringField
      FieldName = 'MOSTRAR_ORC'
      FixedChar = True
      Size = 1
    end
    object cdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 408
    Top = 182
  end
  object sdsOrdemServico_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OM.*'#13#10'FROM ORDEMSERVICO_MAT OM'#13#10'WHERE OM.ID = :ID'#13#10' AND O' +
      'M.ITEM = :ITEM'#13#10
    DataSource = dsOrdemServicoItens_Mestre
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
    object sdsOrdemServico_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOrdemServico_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrdemServico_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsOrdemServico_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServico_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsOrdemServico_MatQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsOrdemServico_MatFATURAR: TStringField
      FieldName = 'FATURAR'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_MatQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object sdsOrdemServico_MatQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
    end
    object sdsOrdemServico_MatTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsOrdemServico_MatDTTIPO: TDateField
      FieldName = 'DTTIPO'
    end
    object sdsOrdemServico_MatUSUARIO_TIPO: TStringField
      FieldName = 'USUARIO_TIPO'
      Size = 15
    end
  end
  object cdsOrdemServico_Mat: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_ItenssdsOrdemServico_Mat
    IndexFieldNames = 'ID;ITEM;ITEM_MAT'
    Params = <>
    OnCalcFields = cdsOrdemServico_MatCalcFields
    OnNewRecord = cdsOrdemServico_MatNewRecord
    Left = 120
    Top = 136
    object cdsOrdemServico_MatID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_MatITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrdemServico_MatQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000##'
    end
    object cdsOrdemServico_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrdemServico_MatQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrdemServico_MatFATURAR: TStringField
      FieldName = 'FATURAR'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_MatQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsOrdemServico_MatlkNomeProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = cdsMaterial
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ID_PRODUTO'
      Size = 50
      Lookup = True
    end
    object cdsOrdemServico_MatlkReferencia: TStringField
      FieldKind = fkLookup
      FieldName = 'lkReferencia'
      LookupDataSet = cdsMaterial
      LookupKeyFields = 'ID'
      LookupResultField = 'REFERENCIA'
      KeyFields = 'ID_PRODUTO'
      Size = 30
      Lookup = True
    end
    object cdsOrdemServico_MatlkUnidade: TStringField
      FieldKind = fkCalculated
      FieldName = 'lkUnidade'
      Size = 6
      Calculated = True
    end
    object cdsOrdemServico_MatQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
      DisplayFormat = '0.000##'
    end
    object cdsOrdemServico_MatclQtdEstoque_Pend: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clQtdEstoque_Pend'
      ProviderFlags = []
      DisplayFormat = '0.000##'
      Calculated = True
    end
    object cdsOrdemServico_MatTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsOrdemServico_MatDTTIPO: TDateField
      FieldName = 'DTTIPO'
    end
    object cdsOrdemServico_MatUSUARIO_TIPO: TStringField
      FieldName = 'USUARIO_TIPO'
      Size = 15
    end
    object cdsOrdemServico_MatclPerc_Preco: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_Preco'
      Calculated = True
    end
  end
  object dsOrdemServico_Mat: TDataSource
    DataSet = cdsOrdemServico_Mat
    Left = 152
    Top = 136
  end
  object sdsMaterial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39#13#10'  and TIPO_REG = '#39'M' +
      #39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 337
    object sdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsMaterialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsMaterialPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsMaterialCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
  object dspMaterial: TDataSetProvider
    DataSet = sdsMaterial
    Left = 336
    Top = 337
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterial'
    Left = 368
    Top = 337
    object cdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsMaterialINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsMaterialPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsMaterialCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 408
    Top = 337
  end
  object sdsConsulta_Itens: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.num_os, os.dtemissao, os.dtentrega, os.id_cliente, os.' +
      'num_nota, os.serie_nota, os.num_oc,'#13#10'CLI.NOME NOME_CLIENTE, IT.i' +
      'd_produto,  IT.nome_produto, IT.marca, IT.modelo, IT.num_serie,'#13 +
      #10'IT.defeito_alegado, IT.obs, IT.acessorios, it.concluido, it.dtc' +
      'oncluido, it.tipo_garantia,'#13#10'IT.NUM_SERIE_TROCA,'#13#10' CASE IT.TIPO_' +
      'APROV'#13#10'           WHEN '#39'A'#39' THEN '#39'Aprovado'#39#13#10'           WHEN '#39'R'#39' ' +
      'THEN '#39'Reprovado'#39#13#10'            ELSE '#39#39#13#10' END AS TIPO_APROV'#13#10'FROM ' +
      'ORDEMSERVICO OS'#13#10'INNER JOIN ORDEMSERVICO_ITENS IT'#13#10'ON OS.id = IT' +
      '.ID'#13#10'INNER JOIN PESSOA CLI'#13#10'ON OS.ID_CLIENTE = CLI.CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 72
  end
  object cdsConsulta_Itens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Itens'
    Left = 560
    Top = 71
    object cdsConsulta_ItensNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsConsulta_ItensDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsulta_ItensDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsulta_ItensID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsulta_ItensNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsConsulta_ItensSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsConsulta_ItensNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsConsulta_ItensNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsulta_ItensID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_ItensNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_ItensMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsConsulta_ItensMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsConsulta_ItensNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsConsulta_ItensDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_ItensOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_ItensACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_ItensCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsConsulta_ItensTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_ItensNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object cdsConsulta_ItensTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      Required = True
      FixedChar = True
      Size = 9
    end
  end
  object dspConsulta_Itens: TDataSetProvider
    DataSet = sdsConsulta_Itens
    Left = 528
    Top = 72
  end
  object dsConsulta_Itens: TDataSource
    DataSet = cdsConsulta_Itens
    Left = 592
    Top = 72
  end
  object qOS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NUM_OS'
      'FROM ORDEMSERVICO'
      'WHERE NUM_OS = :NUM_OS')
    SQLConnection = dmDatabase.scoDados
    Left = 832
    Top = 339
    object qOSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qOSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
  end
  object sdsHistProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT IT.id, it.id_produto, it.item, it.nome_produto, it.marca,' +
      ' it.modelo, it.num_serie, it.dtentrada, '#13#10'it.dtconcluido, ord.dt' +
      'emissao, ord.id_cliente, ORD.NUM_OS, CLI.NOME NOME_CLIENTE, IT.N' +
      'UM_SERIE_TROCA'#13#10'FROM ORDEMSERVICO_ITENS IT'#13#10'INNER JOIN ORDEMSERV' +
      'ICO ORD'#13#10'ON IT.ID = ORD.ID'#13#10'LEFT JOIN PESSOA CLI'#13#10'ON ORD.ID_CLIE' +
      'NTE = CLI.CODIGO'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 620
  end
  object dspHistProduto: TDataSetProvider
    DataSet = sdsHistProduto
    Left = 472
    Top = 620
  end
  object cdsHistProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspHistProduto'
    Left = 504
    Top = 620
    object cdsHistProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsHistProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsHistProdutoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsHistProdutoNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsHistProdutoMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsHistProdutoMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsHistProdutoNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsHistProdutoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsHistProdutoDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsHistProdutoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsHistProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsHistProdutoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsHistProdutoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsHistProdutoNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
  end
  object dsHistProduto: TDataSource
    DataSet = cdsHistProduto
    Left = 536
    Top = 620
  end
  object qPesquisaOS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUM_SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUM_SERIE'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT PS.num_serie, PRO.nome NOME_PRODUTO, M.nome NOME_MARCA, C' +
        'AST('#39#39' AS VARCHAR(20)) Modelo, PRO.ID ID_PRODUTO,'
      'CAST('#39'P'#39' AS VARCHAR(20)) Tipo, PS.INATIVO'
      'FROM PRODUTO_SERIE PS'
      'INNER JOIN PRODUTO PRO'
      'ON PS.ID = PRO.ID'
      'LEFT JOIN MARCA M'
      'ON PRO.id_marca = M.id'
      'WHERE PS.NUM_SERIE = :NUM_SERIE'
      ''
      'UNION ALL'
      ''
      ''
      
        'SELECT IT.num_serie, IT.nome_produto, IT.marca NOME_MARCA, IT.mo' +
        'delo, IT.id_produto, CAST('#39'O'#39' AS VARCHAR(20)) Tipo,'
      'CAST('#39'N'#39' AS VARCHAR(20)) INATIVO'
      'FROM ORDEMSERVICO_ITENS IT'
      'WHERE (IT.NUM_SERIE = :NUM_SERIE)'
      '  or (IT.NUM_SERIE_TROCA = :NUM_SERIE)')
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 403
    object qPesquisaOSNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object qPesquisaOSNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object qPesquisaOSMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object qPesquisaOSID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object qPesquisaOSNOME_MARCA: TStringField
      FieldName = 'NOME_MARCA'
      Size = 40
    end
    object qPesquisaOSTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
    end
    object qPesquisaOSINATIVO: TStringField
      FieldName = 'INATIVO'
    end
  end
  object sdsCondPgto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, ENTRADA'#13#10'FROM CONDPGTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 433
  end
  object dspCondPgto: TDataSetProvider
    DataSet = sdsCondPgto
    Left = 336
    Top = 433
  end
  object cdsCondPgto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCondPgto'
    Left = 368
    Top = 433
    object cdsCondPgtoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCondPgtoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCondPgtoENTRADA: TStringField
      FieldName = 'ENTRADA'
      FixedChar = True
      Size = 1
    end
  end
  object dsCondPgto: TDataSource
    DataSet = cdsCondPgto
    Left = 408
    Top = 433
  end
  object sdsOSParametros: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORDEMSERVICO_SIMPLES_PARAM'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 221
    object sdsOSParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOSParametrosLAYOUT_IMPRESSAO: TSmallintField
      FieldName = 'LAYOUT_IMPRESSAO'
    end
    object sdsOSParametrosTAMANHO_PAPEL: TStringField
      FieldName = 'TAMANHO_PAPEL'
    end
    object sdsOSParametrosINFO_ADICIONAIS: TMemoField
      FieldName = 'INFO_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOSParametrosIMPRIMIR_VIAS: TSmallintField
      FieldName = 'IMPRIMIR_VIAS'
    end
  end
  object dspOSParametros: TDataSetProvider
    DataSet = sdsOSParametros
    Left = 528
    Top = 221
  end
  object cdsOSParametros: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOSParametros'
    Left = 560
    Top = 221
    object cdsOSParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOSParametrosLAYOUT_IMPRESSAO: TSmallintField
      FieldName = 'LAYOUT_IMPRESSAO'
    end
    object cdsOSParametrosTAMANHO_PAPEL: TStringField
      FieldName = 'TAMANHO_PAPEL'
    end
    object cdsOSParametrosINFO_ADICIONAIS: TMemoField
      FieldName = 'INFO_ADICIONAIS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOSParametrosIMPRIMIR_VIAS: TSmallintField
      FieldName = 'IMPRIMIR_VIAS'
    end
  end
  object dsOSParametros: TDataSource
    DataSet = cdsOSParametros
    Left = 592
    Top = 221
  end
  object dsmFilial: TDataSource
    DataSet = sdsFilial
    Left = 296
    Top = 288
  end
  object sdsFilialRelatorios: TSQLDataSet
    CommandText = 'SELECT * '#13#10'FROM FILIAL_RELATORIOS'#13#10'WHERE ID = :ID'
    DataSource = dsmFilial
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 336
    Top = 288
    object sdsFilialRelatoriosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsFilialRelatoriosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsFilialRelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object sdsFilialRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
  end
  object cdsFilialRelatorios: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 368
    Top = 288
    object cdsFilialRelatoriosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsFilialRelatoriosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsFilialRelatoriosTIPO: TSmallintField
      FieldName = 'TIPO'
    end
    object cdsFilialRelatoriosCAMINHO: TStringField
      FieldName = 'CAMINHO'
      Size = 150
    end
  end
  object dsFilialRelatorios: TDataSource
    DataSet = cdsFilialRelatorios
    Left = 408
    Top = 288
  end
  object dsOrdemServico_Mestre: TDataSource
    DataSet = sdsOrdemServico
    Left = 208
    Top = 24
  end
  object dsOrdemServicoItens_Mestre: TDataSource
    DataSet = sdsOrdemServico_Itens
    Left = 208
    Top = 96
  end
  object sdsConsulta_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OS.num_os, os.dtemissao, os.dtentrega, os.id_cliente, os.' +
      'num_nota, os.serie_nota, os.num_oc, OS.ID ID_OS,'#13#10'CLI.NOME NOME_' +
      'CLIENTE, IT.id_produto,  IT.nome_produto, IT.marca, IT.modelo, I' +
      'T.num_serie,'#13#10'IT.defeito_alegado, IT.obs, IT.acessorios, it.conc' +
      'luido, it.dtconcluido, it.tipo_garantia,'#13#10'IT.NUM_SERIE_TROCA, MA' +
      'T.item_mat, MAT.id_produto ID_PECA_USADA, P_MAT.NOME NOME_PECA,'#13 +
      #10'MAT.qtd QTD_MAT, MAT.qtd_restante QTD_RESTANTE_MAT , MAT.qtd_fa' +
      'turado QTD_FATURADO_MAT, MAT.vlr_unitario VLR_UNITARIO_MAT,'#13#10'MAT' +
      '.vlr_total VLR_TOTAL_MAT, MAT.faturar FATURAR_MAT, IT.ITEM ITEM_' +
      'OS,'#13#10' CASE IT.TIPO_APROV'#13#10'           WHEN '#39'A'#39' THEN '#39'Aprovado'#39#13#10' ' +
      '          WHEN '#39'R'#39' THEN '#39'Reprovado'#39#13#10'            ELSE '#39#39#13#10' END A' +
      'S TIPO_APROV'#13#10'FROM ORDEMSERVICO OS'#13#10'INNER JOIN ORDEMSERVICO_ITEN' +
      'S IT'#13#10'ON OS.id = IT.ID'#13#10'INNER JOIN ORDEMSERVICO_MAT MAT'#13#10'ON IT.i' +
      'd = MAT.ID'#13#10'AND IT.item = MAT.ITEM'#13#10'INNER JOIN PRODUTO P_MAT'#13#10'ON' +
      ' MAT.id_produto = P_MAT.id'#13#10'INNER JOIN PESSOA CLI'#13#10'ON OS.ID_CLIE' +
      'NTE = CLI.CODIGO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 8
  end
  object cdsConsulta_Mat: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsulta_Mat'
    Left = 560
    Top = 8
    object cdsConsulta_MatNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsConsulta_MatDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsulta_MatDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsulta_MatID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsConsulta_MatNUM_NOTA: TIntegerField
      FieldName = 'NUM_NOTA'
    end
    object cdsConsulta_MatSERIE_NOTA: TIntegerField
      FieldName = 'SERIE_NOTA'
    end
    object cdsConsulta_MatNUM_OC: TIntegerField
      FieldName = 'NUM_OC'
    end
    object cdsConsulta_MatNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsulta_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsulta_MatNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsulta_MatMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object cdsConsulta_MatMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object cdsConsulta_MatNUM_SERIE: TStringField
      FieldName = 'NUM_SERIE'
      Size = 30
    end
    object cdsConsulta_MatDEFEITO_ALEGADO: TMemoField
      FieldName = 'DEFEITO_ALEGADO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_MatOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_MatACESSORIOS: TMemoField
      FieldName = 'ACESSORIOS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsConsulta_MatCONCLUIDO: TStringField
      FieldName = 'CONCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_MatDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsConsulta_MatTIPO_GARANTIA: TStringField
      FieldName = 'TIPO_GARANTIA'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_MatNUM_SERIE_TROCA: TStringField
      FieldName = 'NUM_SERIE_TROCA'
      Size = 30
    end
    object cdsConsulta_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object cdsConsulta_MatID_PECA_USADA: TIntegerField
      FieldName = 'ID_PECA_USADA'
    end
    object cdsConsulta_MatNOME_PECA: TStringField
      FieldName = 'NOME_PECA'
      Size = 100
    end
    object cdsConsulta_MatQTD_MAT: TFloatField
      FieldName = 'QTD_MAT'
    end
    object cdsConsulta_MatQTD_RESTANTE_MAT: TFloatField
      FieldName = 'QTD_RESTANTE_MAT'
    end
    object cdsConsulta_MatQTD_FATURADO_MAT: TFloatField
      FieldName = 'QTD_FATURADO_MAT'
    end
    object cdsConsulta_MatVLR_UNITARIO_MAT: TFloatField
      FieldName = 'VLR_UNITARIO_MAT'
    end
    object cdsConsulta_MatVLR_TOTAL_MAT: TFloatField
      FieldName = 'VLR_TOTAL_MAT'
    end
    object cdsConsulta_MatFATURAR_MAT: TStringField
      FieldName = 'FATURAR_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsConsulta_MatTIPO_APROV: TStringField
      FieldName = 'TIPO_APROV'
      Required = True
      FixedChar = True
      Size = 9
    end
    object cdsConsulta_MatID_OS: TIntegerField
      FieldName = 'ID_OS'
      Required = True
    end
    object cdsConsulta_MatITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
      Required = True
    end
  end
  object dspConsulta_Mat: TDataSetProvider
    DataSet = sdsConsulta_Mat
    Left = 528
    Top = 8
  end
  object dsConsulta_Mat: TDataSource
    DataSet = cdsConsulta_Mat
    Left = 592
    Top = 8
  end
  object sdsOS_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT NP.ID ID_NOTA, NP.ITEM ITEM_NOTA,  NP.item_notaos, NP.qtd' +
      ', NP.num_os, NT.NUMNOTA, NT.DTEMISSAO,'#13#10'NT.SERIE, NT.TIPO_NOTA'#13#10 +
      'FROM NOTAFISCAL_OS NP'#13#10'INNER JOIN NOTAFISCAL NT'#13#10'ON NP.ID = NT.I' +
      'D'#13#10'WHERE NP.id_os = :ID_OS'#13#10'  AND NP.item_os = :ITEM_OS'#13#10'  AND N' +
      'P.item_os_mat = :ITEM_OS_MAT'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_OS_MAT'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 320
  end
  object cdsOS_Nota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOS_Nota'
    Left = 560
    Top = 320
    object cdsOS_NotaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
      Required = True
    end
    object cdsOS_NotaITEM_NOTA: TIntegerField
      FieldName = 'ITEM_NOTA'
      Required = True
    end
    object cdsOS_NotaITEM_NOTAOS: TIntegerField
      FieldName = 'ITEM_NOTAOS'
      Required = True
    end
    object cdsOS_NotaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOS_NotaNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOS_NotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsOS_NotaDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsOS_NotaSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object cdsOS_NotaTIPO_NOTA: TStringField
      FieldName = 'TIPO_NOTA'
      FixedChar = True
      Size = 1
    end
  end
  object dsOS_Nota: TDataSource
    DataSet = cdsOS_Nota
    Left = 592
    Top = 320
  end
  object dspOS_Nota: TDataSetProvider
    DataSet = sdsOS_Nota
    Left = 528
    Top = 320
  end
  object sdsVendedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PES.CODIGO, PES.NOME'#13#10'FROM PESSOA PES'#13#10'WHERE TP_VENDEDOR ' +
      '= '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 267
  end
  object dspVendedor: TDataSetProvider
    DataSet = sdsVendedor
    Left = 536
    Top = 267
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspVendedor'
    Left = 568
    Top = 267
  end
  object dsVendedor: TDataSource
    DataSet = cdsVendedor
    Left = 608
    Top = 267
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_SER'
      'WHERE ID = 1')
    SQLConnection = dmDatabase.scoDados
    Left = 792
    Top = 339
    object qParametros_SerID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_SerIMP_NA_OS_REF_PROD: TStringField
      FieldName = 'IMP_NA_OS_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerUSA_OS_REDUZIDA: TStringField
      FieldName = 'USA_OS_REDUZIDA'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRAR_SERIE_TROCA: TStringField
      FieldName = 'MOSTRAR_SERIE_TROCA'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRAR_STATUS: TStringField
      FieldName = 'MOSTRAR_STATUS'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRA_OS_DEFEITO_ALEG: TStringField
      FieldName = 'MOSTRA_OS_DEFEITO_ALEG'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRA_OS_DEFEITO_ENC: TStringField
      FieldName = 'MOSTRA_OS_DEFEITO_ENC'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRA_OS_ACESSORIOS: TStringField
      FieldName = 'MOSTRA_OS_ACESSORIOS'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerUSA_PROCESSO_OS: TStringField
      FieldName = 'USA_PROCESSO_OS'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerPRECO_CUSTO_MATERIAL: TStringField
      FieldName = 'PRECO_CUSTO_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerMOSTRAR_QTD_NOTA: TStringField
      FieldName = 'MOSTRAR_QTD_NOTA'
      FixedChar = True
      Size = 1
    end
    object qParametros_SerUSA_CALC_COMPLETO: TStringField
      FieldName = 'USA_CALC_COMPLETO'
      FixedChar = True
      Size = 1
    end
  end
  object mOS_Mat: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Referencia'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome_Produto'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Unitario'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    Left = 712
    Top = 216
    Data = {
      A50000009619E0BD010000001800000006000000000003000000A50004497465
      6D01004900000001000557494454480200020005000A5265666572656E636961
      01004900000001000557494454480200020014000C4E6F6D655F50726F647574
      6F01004900000001000557494454480200020064000351746408000400000000
      0008566C72546F74616C08000400000000000C566C725F556E69746172696F08
      000400000000000000}
    object mOS_MatItem: TStringField
      FieldName = 'Item'
      Size = 5
    end
    object mOS_MatReferencia: TStringField
      FieldName = 'Referencia'
    end
    object mOS_MatNome_Produto: TStringField
      FieldName = 'Nome_Produto'
      Size = 100
    end
    object mOS_MatQtd: TFloatField
      FieldName = 'Qtd'
    end
    object mOS_MatVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mOS_MatVlr_Unitario: TFloatField
      FieldName = 'Vlr_Unitario'
    end
  end
  object dsmOS_Mat: TDataSource
    DataSet = mOS_Mat
    Left = 744
    Top = 216
  end
  object mOS_Serv: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Nome_Servico'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'VlrTotal'
        DataType = ftFloat
      end
      item
        Name = 'Nome_Tecnico'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Item'
    Params = <>
    StoreDefs = True
    Left = 704
    Top = 456
    Data = {
      A80000009619E0BD010000001800000005000000000003000000A80004497465
      6D01004900000001000557494454480200020005000C4E6F6D655F5365727669
      636F010049000000010005574944544802000200640008566C72546F74616C08
      000400000000000C4E6F6D655F5465636E69636F010049000000010005574944
      544802000200640003517464080004000000000001000D44454641554C545F4F
      524445520200820000000000}
    object mOS_ServItem: TStringField
      FieldName = 'Item'
      Size = 5
    end
    object mOS_ServNome_Servico: TStringField
      FieldName = 'Nome_Servico'
      Size = 100
    end
    object mOS_ServVlrTotal: TFloatField
      FieldName = 'VlrTotal'
    end
    object mOS_ServNome_Tecnico: TStringField
      FieldName = 'Nome_Tecnico'
      Size = 100
    end
    object mOS_ServQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmOS_Serv: TDataSource
    DataSet = mOS_Serv
    Left = 744
    Top = 456
  end
  object sdsOrdemServico_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT O.*, cast(o.obs as varchar(1000)) OBSAUX'#13#10'FROM ORDEMSERVI' +
      'CO_PROC O'#13#10'WHERE O.ID = :ID'#13#10'      AND O.ITEM = :ITEM'#13#10
    DataSource = dsOrdemServicoItens_Mestre
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
    Top = 192
    object sdsOrdemServico_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsOrdemServico_ProcQTD_HORAS: TFloatField
      FieldName = 'QTD_HORAS'
    end
    object sdsOrdemServico_ProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsOrdemServico_ProcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ProcID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object sdsOrdemServico_ProcOBSAUX: TStringField
      FieldName = 'OBSAUX'
      ProviderFlags = []
      Size = 1000
    end
    object sdsOrdemServico_ProcDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsOrdemServico_ProcDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsOrdemServico_ProcHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsOrdemServico_ProcHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object sdsOrdemServico_ProcORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object sdsOrdemServico_ProcSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ProcNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsOrdemServico_ProcRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object sdsOrdemServico_ProcUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsOrdemServico_ProcQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrdemServico_ProcQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsOrdemServico_ProcQTD_CONCLUIDO: TFloatField
      FieldName = 'QTD_CONCLUIDO'
    end
  end
  object cdsOrdemServico_Proc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_ItenssdsOrdemServico_Proc
    IndexFieldNames = 'ID;ITEM;ORDEM;ITEM_PROC'
    Params = <>
    OnCalcFields = cdsOrdemServico_ProcCalcFields
    OnNewRecord = cdsOrdemServico_ProcNewRecord
    Left = 120
    Top = 192
    object cdsOrdemServico_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsOrdemServico_ProcQTD_HORAS: TFloatField
      FieldName = 'QTD_HORAS'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_ProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrdemServico_ProcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ProcID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object cdsOrdemServico_ProcOBSAUX: TStringField
      FieldName = 'OBSAUX'
      ProviderFlags = []
      Size = 1000
    end
    object cdsOrdemServico_ProcDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrdemServico_ProcDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsOrdemServico_ProcHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsOrdemServico_ProcHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOrdemServico_ProcORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsOrdemServico_ProcNOME_PROCESSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_PROCESSO'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsOrdemServico_ProcNOME_SERVICO_OS: TStringField
      FieldKind = fkCalculated
      FieldName = 'NOME_SERVICO_OS'
      ProviderFlags = []
      Size = 60
      Calculated = True
    end
    object cdsOrdemServico_ProcSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ProcNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOrdemServico_ProcRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object cdsOrdemServico_ProcUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsOrdemServico_ProcQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrdemServico_ProcQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrdemServico_ProcQTD_CONCLUIDO: TFloatField
      FieldName = 'QTD_CONCLUIDO'
    end
  end
  object dsOrdemServico_Proc: TDataSource
    DataSet = cdsOrdemServico_Proc
    Left = 160
    Top = 192
  end
  object sdsProcesso_Grupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM processo_grupo'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 417
  end
  object dspProcesso_Grupo: TDataSetProvider
    DataSet = sdsProcesso_Grupo
    Left = 544
    Top = 417
  end
  object cdsProcesso_Grupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProcesso_Grupo'
    Left = 576
    Top = 417
    object cdsProcesso_GrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcesso_GrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsProcesso_Grupo: TDataSource
    DataSet = cdsProcesso_Grupo
    Left = 616
    Top = 417
  end
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME, TERCEIRO, UNIDADE'#13#10'FROM PROCESSO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 473
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    Left = 544
    Top = 473
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 576
    Top = 473
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcessoTERCEIRO: TStringField
      FieldName = 'TERCEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsProcessoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 616
    Top = 473
  end
  object qProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT P.ID, P.NOME, P.REFERENCIA, p.UNIDADE, p.preco_custo'
      'FROM produto P')
    SQLConnection = dmDatabase.scoDados
    Left = 792
    Top = 400
    object qProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object qProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
  end
  object sdsServico_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM SERVICO_OS'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 528
  end
  object dspServico_OS: TDataSetProvider
    DataSet = sdsServico_OS
    Left = 544
    Top = 528
  end
  object cdsServico_OS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspServico_OS'
    Left = 584
    Top = 528
    object cdsServico_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsServico_OSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsServico_OS: TDataSource
    DataSet = cdsServico_OS
    Left = 624
    Top = 528
  end
  object sdsOrdemServico_Terc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT O.*'#13#10'FROM ORDEMSERVICO_TERC O'#13#10'WHERE O.ID = :ID'#13#10'  AND O.' +
      'ITEM = :ITEM'#13#10
    DataSource = dsOrdemServicoItens_Mestre
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
    Left = 64
    Top = 248
    object sdsOrdemServico_TercID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_TercITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_TercITEM_TERC: TIntegerField
      FieldName = 'ITEM_TERC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_TercVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsOrdemServico_TercNOME_TERCEIRO: TStringField
      FieldName = 'NOME_TERCEIRO'
      Size = 60
    end
  end
  object cdsOrdemServico_Terc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_ItenssdsOrdemServico_Terc
    IndexFieldNames = 'ID;ITEM;ITEM_TERC'
    Params = <>
    OnCalcFields = cdsOrdemServico_TercCalcFields
    Left = 120
    Top = 248
    object cdsOrdemServico_TercID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_TercITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_TercITEM_TERC: TIntegerField
      FieldName = 'ITEM_TERC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_TercVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_TercNOME_TERCEIRO: TStringField
      FieldName = 'NOME_TERCEIRO'
      Size = 60
    end
    object cdsOrdemServico_TercclPerc_Preco: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_Preco'
      ProviderFlags = []
      Calculated = True
    end
  end
  object dsOrdemServico_Terc: TDataSource
    DataSet = cdsOrdemServico_Terc
    Left = 160
    Top = 248
  end
  object qProcesso: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PROCESSO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 952
    Top = 440
    object qProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object qServico_OS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SERVICO_OS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 952
    Top = 488
    object qServico_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qServico_OSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object qVerifica_Baixa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ORDEM'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT COUNT(1) CONTADOR'
      'FROM baixa_os'
      '  WHERE NUM_OS = :NUM_OS'
      '    AND ORDEM = :ORDEM')
    SQLConnection = dmDatabase.scoDados
    Left = 960
    Top = 544
    object qVerifica_BaixaCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
  end
  object sdsCons_Baixa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT IT.dm, AUX.*,'#13#10'CASE'#13#10'  WHEN AUX.CALCULA_AREA = '#39'S'#39' THEN (' +
      '(AUX.TOTAL_HORAS - coalesce(AUX.TOTAL_HORAS_PAUSA,0)) * AUX.VLR_' +
      'HORA * (aux.qtd * coalesce(IT.DM,1)))'#13#10'  ELSE ((AUX.TOTAL_HORAS ' +
      '- coalesce(AUX.TOTAL_HORAS_PAUSA,0)) * AUX.VLR_HORA)'#13#10'  END VLR_' +
      'CUSTO'#13#10'FROM ('#13#10'SELECT B.id_os, B.num_os, B.ordem, B.item_proc, B' +
      '.dtentrada, B.hrentrada,'#13#10'B.dtsaida, B.hrsaida, B.id_funcionario' +
      ', B.qtd, B.id_processo,'#13#10'B.id_servico_os, B.total_horas, B.tipo_' +
      'baixa,'#13#10'f.nome nome_funcionario, f.num_cartao, p.nome nome_proce' +
      'sso,'#13#10's.nome nome_servico, P.calcula_area, S.vlr_hora, B.OBS, b.' +
      'retrabalho,'#13#10'(SELECT SUM(BP.total_horas) FROM BAIXA_OS_PAUSA BP'#13 +
      #10'   WHERE BP.id = B.ID) TOTAL_HORAS_PAUSA,'#13#10'case '#13#10'  when b.tipo' +
      '_baixa = '#39'M'#39' then null'#13#10'  else b.dtentrada'#13#10'  end dtEntrada2,'#13#10'c' +
      'ase '#13#10'  when b.tipo_baixa = '#39'M'#39' then null'#13#10'  else b.hrentrada'#13#10' ' +
      ' end hrEntrada2,'#13#10'case '#13#10'  when b.tipo_baixa = '#39'M'#39' then null'#13#10'  ' +
      'else b.dtsaida'#13#10'  end dtSaida2,'#13#10'case'#13#10'  when b.tipo_baixa = '#39'M'#39 +
      ' then null'#13#10'  else b.hrsaida'#13#10'  end hrSaida2, B.ID'#13#10'FROM baixa_o' +
      's B'#13#10'inner join funcionario f'#13#10'on b.id_funcionario = f.codigo'#13#10'i' +
      'nner join processo p'#13#10'on b.id_processo = p.id'#13#10'left join servico' +
      '_os s'#13#10'on b.id_servico_os = s.id'#13#10'WHERE b.id_os = :ID_OS) AUX'#13#10'i' +
      'nner JOIN ordemservico_itens IT'#13#10'ON AUX.ID_OS = IT.id'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OS'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 481
  end
  object dspCons_Baixa: TDataSetProvider
    DataSet = sdsCons_Baixa
    Left = 336
    Top = 481
  end
  object cdsCons_Baixa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORDEM;ID'
    Params = <>
    ProviderName = 'dspCons_Baixa'
    Left = 368
    Top = 481
    object cdsCons_BaixaID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsCons_BaixaNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsCons_BaixaORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsCons_BaixaITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
    object cdsCons_BaixaDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsCons_BaixaHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsCons_BaixaDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsCons_BaixaHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsCons_BaixaID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsCons_BaixaID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsCons_BaixaID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object cdsCons_BaixaTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
      DisplayFormat = '0.00'
    end
    object cdsCons_BaixaTIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsCons_BaixaNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 50
    end
    object cdsCons_BaixaNUM_CARTAO: TIntegerField
      FieldName = 'NUM_CARTAO'
    end
    object cdsCons_BaixaNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsCons_BaixaNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 50
    end
    object cdsCons_BaixaDTENTRADA2: TDateField
      FieldName = 'DTENTRADA2'
    end
    object cdsCons_BaixaHRENTRADA2: TTimeField
      FieldName = 'HRENTRADA2'
    end
    object cdsCons_BaixaDTSAIDA2: TDateField
      FieldName = 'DTSAIDA2'
    end
    object cdsCons_BaixaHRSAIDA2: TTimeField
      FieldName = 'HRSAIDA2'
    end
    object cdsCons_BaixaTOTAL_HORAS_PAUSA: TFloatField
      FieldName = 'TOTAL_HORAS_PAUSA'
      DisplayFormat = '0.00'
    end
    object cdsCons_BaixaDM: TFloatField
      FieldName = 'DM'
    end
    object cdsCons_BaixaCALCULA_AREA: TStringField
      FieldName = 'CALCULA_AREA'
      FixedChar = True
      Size = 1
    end
    object cdsCons_BaixaVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
    end
    object cdsCons_BaixaVLR_CUSTO: TFloatField
      FieldName = 'VLR_CUSTO'
    end
    object cdsCons_BaixaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsCons_BaixaRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object cdsCons_BaixaQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsCons_BaixaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object dsCons_Baixa: TDataSource
    DataSet = cdsCons_Baixa
    Left = 408
    Top = 481
  end
  object sdsCons_Pausa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT B.id_os, B.id_parada, B.item, B.id, B.dtinicio, B.hrinici' +
      'o,'#13#10'B.dtfinal, B.hrfinal, B.obs, B.ordem, B.total_horas, p.nome ' +
      'nome_processo,'#13#10's.nome nome_servico_os'#13#10'FROM baixa_os_pausa B'#13#10'i' +
      'nner join baixa_os bo'#13#10'on b.id = bo.id'#13#10'inner join processo p'#13#10'o' +
      'n bo.id_processo = p.id'#13#10'inner join servico_os s'#13#10'on bo.id_servi' +
      'co_os = s.id'#13#10'WHERE B.ID_OS = :ID_OS  '#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OS'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 529
  end
  object dspCons_Pausa: TDataSetProvider
    DataSet = sdsCons_Pausa
    Left = 336
    Top = 529
  end
  object cdsCons_Pausa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORDEM;ITEM'
    Params = <>
    ProviderName = 'dspCons_Pausa'
    Left = 368
    Top = 529
    object cdsCons_PausaID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsCons_PausaID_PARADA: TIntegerField
      FieldName = 'ID_PARADA'
    end
    object cdsCons_PausaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsCons_PausaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCons_PausaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsCons_PausaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object cdsCons_PausaDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsCons_PausaHRFINAL: TTimeField
      FieldName = 'HRFINAL'
    end
    object cdsCons_PausaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsCons_PausaORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsCons_PausaTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object cdsCons_PausaNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsCons_PausaNOME_SERVICO_OS: TStringField
      FieldName = 'NOME_SERVICO_OS'
      Size = 50
    end
  end
  object dsCons_Pausa: TDataSource
    DataSet = cdsCons_Pausa
    Left = 408
    Top = 529
  end
  object qVerBaixaOS: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT (select count(1) from baixa_os b where b.id_os = :id  ) C' +
        'ont_Baixas,'
      
        '(select count(1) from baixa_mat_os b2 where b2.id_os = :id ) Con' +
        't_Mat'
      'FROM ordemservico o'
      'WHERE o.id = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 872
    Top = 568
    object qVerBaixaOSCONT_BAIXAS: TIntegerField
      FieldName = 'CONT_BAIXAS'
    end
    object qVerBaixaOSCONT_MAT: TIntegerField
      FieldName = 'CONT_MAT'
    end
  end
  object sdsPRC_Atualiza_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'PRC_ATUALIZA_OS'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 897
    Top = 56
  end
  object qParametros_Usuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_USUARIO'
      'WHERE USUARIO = :USUARIO')
    SQLConnection = dmDatabase.scoDados
    Left = 544
    Top = 128
    object qParametros_UsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 30
    end
    object qParametros_UsuarioMOSTRAR_CUSTO_OS: TStringField
      FieldName = 'MOSTRAR_CUSTO_OS'
      FixedChar = True
      Size = 1
    end
  end
  object sdsOrdemServico_Enc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT E.*'#13#10'FROM ORDEMSERVICO_ENC E'#13#10'WHERE E.ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 624
    object sdsOrdemServico_EncID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_EncDTPROCESSO: TDateField
      FieldName = 'DTPROCESSO'
    end
    object sdsOrdemServico_EncHRPROCESSO: TTimeField
      FieldName = 'HRPROCESSO'
    end
    object sdsOrdemServico_EncDTMATERIAL: TDateField
      FieldName = 'DTMATERIAL'
    end
    object sdsOrdemServico_EncHRMATERIAL: TTimeField
      FieldName = 'HRMATERIAL'
    end
    object sdsOrdemServico_EncID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsOrdemServico_EncUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 15
    end
    object sdsOrdemServico_EncPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_EncMATERIAL: TStringField
      FieldName = 'MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_EncOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspOrdemServico_Enc: TDataSetProvider
    DataSet = sdsOrdemServico_Enc
    Left = 104
    Top = 624
  end
  object cdsOrdemServico_Enc: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemServico_Enc'
    BeforePost = cdsOrdemServico_EncBeforePost
    Left = 160
    Top = 624
    object cdsOrdemServico_EncID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_EncDTPROCESSO: TDateField
      FieldName = 'DTPROCESSO'
    end
    object cdsOrdemServico_EncHRPROCESSO: TTimeField
      FieldName = 'HRPROCESSO'
    end
    object cdsOrdemServico_EncDTMATERIAL: TDateField
      FieldName = 'DTMATERIAL'
    end
    object cdsOrdemServico_EncHRMATERIAL: TTimeField
      FieldName = 'HRMATERIAL'
    end
    object cdsOrdemServico_EncID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsOrdemServico_EncUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 15
    end
    object cdsOrdemServico_EncPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_EncMATERIAL: TStringField
      FieldName = 'MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_EncOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dsOrdemServico_Enc: TDataSource
    DataSet = cdsOrdemServico_Enc
    Left = 200
    Top = 624
  end
  object sdsOrdemServico_Setor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM ORDEMSERVICO_SETOR'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = ' +
      ':ITEM'
    DataSource = dsOrdemServicoItens_Mestre
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
    Top = 296
    object sdsOrdemServico_SetorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_SetorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_SetorITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_SetorID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object sdsOrdemServico_SetorTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
    end
    object sdsOrdemServico_SetorVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServico_SetorUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object cdsOrdemServico_Setor: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_ItenssdsOrdemServico_Setor
    IndexFieldNames = 'ID;ITEM;ITEM_SETOR'
    Params = <>
    OnCalcFields = cdsOrdemServico_SetorCalcFields
    Left = 120
    Top = 296
    object cdsOrdemServico_SetorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_SetorITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_SetorITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_SetorID_SETOR: TIntegerField
      FieldName = 'ID_SETOR'
    end
    object cdsOrdemServico_SetorTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_SetorVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_SetorsdsOrdemServico_Setor_Proc: TDataSetField
      FieldName = 'sdsOrdemServico_Setor_Proc'
    end
    object cdsOrdemServico_SetorclNome_Setor: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Setor'
      Size = 40
      Calculated = True
    end
    object cdsOrdemServico_SetorclPerc_Preco: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_Preco'
      Calculated = True
    end
    object cdsOrdemServico_SetorUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsOrdemServico_Setor: TDataSource
    DataSet = cdsOrdemServico_Setor
    Left = 160
    Top = 296
  end
  object dsOrdemServicoSetor_Mestre: TDataSource
    DataSet = sdsOrdemServico_Setor
    Left = 40
    Top = 336
  end
  object sdsOrdemServico_Setor_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM ORDEMSERVICO_SETOR_PROC'#13#10'WHERE ID = :ID'#13#10'  AND IT' +
      'EM = :ITEM'#13#10'  AND ITEM_SETOR = :ITEM_SETOR'
    DataSource = dsOrdemServicoSetor_Mestre
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
    Top = 384
    object sdsOrdemServico_Setor_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_Setor_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_Setor_ProcITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_Setor_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_Setor_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsOrdemServico_Setor_ProcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object sdsOrdemServico_Setor_ProcTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
    end
    object sdsOrdemServico_Setor_ProcVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
    end
    object sdsOrdemServico_Setor_ProcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOrdemServico_Setor_ProcUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object cdsOrdemServico_Setor_Proc: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_SetorsdsOrdemServico_Setor_Proc
    IndexFieldNames = 'ID;ITEM;ITEM_SETOR;ITEM_PROC'
    Params = <>
    OnCalcFields = cdsOrdemServico_Setor_ProcCalcFields
    Left = 128
    Top = 384
    object cdsOrdemServico_Setor_ProcID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_Setor_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_Setor_ProcITEM_SETOR: TIntegerField
      FieldName = 'ITEM_SETOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_Setor_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_Setor_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsOrdemServico_Setor_ProcDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object cdsOrdemServico_Setor_ProcTOTAL_HORA: TFloatField
      FieldName = 'TOTAL_HORA'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_Setor_ProcVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
      DisplayFormat = '0.00#'
    end
    object cdsOrdemServico_Setor_ProcVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsOrdemServico_Setor_ProcclNome_Processo: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Processo'
      Size = 60
      Calculated = True
    end
    object cdsOrdemServico_Setor_ProcclPerc_Preco: TFloatField
      FieldKind = fkCalculated
      FieldName = 'clPerc_Preco'
      Calculated = True
    end
    object cdsOrdemServico_Setor_ProcUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsOrdemServico_Setor_Proc: TDataSource
    DataSet = cdsOrdemServico_Setor_Proc
    Left = 192
    Top = 384
  end
  object qSetor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SETOR'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 712
    Top = 339
    object qSetorID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qSetorNOME: TStringField
      FieldName = 'NOME'
    end
  end
  object sdsEnsaio_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ENSAIO_OS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 704
    Top = 160
  end
  object cdsEnsaio_OS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEnsaio_OS'
    Left = 768
    Top = 160
    object cdsEnsaio_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEnsaio_OSNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEnsaio_OSINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsEnsaio_OS: TDataSource
    DataSet = cdsEnsaio_OS
    Left = 800
    Top = 160
  end
  object dspEnsaio_OS: TDataSetProvider
    DataSet = sdsEnsaio_OS
    Left = 736
    Top = 160
  end
  object sdsOrdemServico_Ensaio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM ORDEMSERVICO_ENSAIO'#13#10'WHERE ID = :ID'#13#10'  AND ITEM =' +
      ' :ITEM'
    DataSource = dsOrdemServicoItens_Mestre
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
    Top = 432
    object sdsOrdemServico_EnsaioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_EnsaioITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_EnsaioITEM_ENSAIO: TIntegerField
      FieldName = 'ITEM_ENSAIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_EnsaioID_ENSAIO: TIntegerField
      FieldName = 'ID_ENSAIO'
    end
    object sdsOrdemServico_EnsaioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object sdsOrdemServico_EnsaioCONFIRMADO: TStringField
      FieldName = 'CONFIRMADO'
      FixedChar = True
      Size = 1
    end
  end
  object cdsOrdemServico_Ensaio: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_ItenssdsOrdemServico_Ensaio
    Params = <>
    OnCalcFields = cdsOrdemServico_EnsaioCalcFields
    Left = 120
    Top = 432
    object cdsOrdemServico_EnsaioID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_EnsaioITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_EnsaioITEM_ENSAIO: TIntegerField
      FieldName = 'ITEM_ENSAIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_EnsaioID_ENSAIO: TIntegerField
      FieldName = 'ID_ENSAIO'
    end
    object cdsOrdemServico_EnsaioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object cdsOrdemServico_EnsaioclNome_Ensaio: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNome_Ensaio'
      Size = 60
      Calculated = True
    end
    object cdsOrdemServico_EnsaioCONFIRMADO: TStringField
      FieldName = 'CONFIRMADO'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrdemServico_Ensaio: TDataSource
    DataSet = cdsOrdemServico_Ensaio
    Left = 184
    Top = 432
  end
  object qFilial_Custo: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FILIAL_CUSTO'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 832
    Top = 400
    object qFilial_CustoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qFilial_CustoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object qFilial_CustoPERC_MARK_UP: TFloatField
      FieldName = 'PERC_MARK_UP'
    end
    object qFilial_CustoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object qFilial_CustoPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
    end
    object qFilial_CustoPERC_IR_CONTRSOCIAL: TFloatField
      FieldName = 'PERC_IR_CONTRSOCIAL'
    end
    object qFilial_CustoPERC_MARGEM_OPE: TFloatField
      FieldName = 'PERC_MARGEM_OPE'
    end
    object qFilial_CustoPERC_CUSTO_FINANCEIRO: TFloatField
      FieldName = 'PERC_CUSTO_FINANCEIRO'
    end
    object qFilial_CustoPRAZO_BASE: TIntegerField
      FieldName = 'PRAZO_BASE'
    end
    object qFilial_CustoPERC_IR_PJ: TFloatField
      FieldName = 'PERC_IR_PJ'
    end
  end
  object sdsOrdemServico_Custo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORDEMSERVICO_CUSTO'#13#10'WHERE ID = :ID'
    DataSource = dsOrdemServico_Mestre
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
    Top = 480
    object sdsOrdemServico_CustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_CustoVLR_MATERIAIS: TFloatField
      FieldName = 'VLR_MATERIAIS'
    end
    object sdsOrdemServico_CustoVLR_PROCESSO: TFloatField
      FieldName = 'VLR_PROCESSO'
    end
    object sdsOrdemServico_CustoVLR_TERCEIRO: TFloatField
      FieldName = 'VLR_TERCEIRO'
    end
    object sdsOrdemServico_CustoVLR_SETOR: TFloatField
      FieldName = 'VLR_SETOR'
    end
    object sdsOrdemServico_CustoTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
    end
    object sdsOrdemServico_CustoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsOrdemServico_CustoPERC_MARKUP: TFloatField
      FieldName = 'PERC_MARKUP'
    end
    object sdsOrdemServico_CustoPERC_PISCOFINS: TFloatField
      FieldName = 'PERC_PISCOFINS'
    end
    object sdsOrdemServico_CustoPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object sdsOrdemServico_CustoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsOrdemServico_CustoPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
    end
    object sdsOrdemServico_CustoPERC_IR_CSOCIAL: TFloatField
      FieldName = 'PERC_IR_CSOCIAL'
    end
    object sdsOrdemServico_CustoPERC_MARG1: TFloatField
      FieldName = 'PERC_MARG1'
    end
    object sdsOrdemServico_CustoPERC_MARG2: TFloatField
      FieldName = 'PERC_MARG2'
    end
    object sdsOrdemServico_CustoPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object sdsOrdemServico_CustoVLR_PROPOSTA: TFloatField
      FieldName = 'VLR_PROPOSTA'
    end
    object sdsOrdemServico_CustoPERC_CUSTO_FINANCEIRO: TFloatField
      FieldName = 'PERC_CUSTO_FINANCEIRO'
    end
    object sdsOrdemServico_CustoPRAZO_DIAS: TIntegerField
      FieldName = 'PRAZO_DIAS'
    end
    object sdsOrdemServico_CustoPERC_CUSTO_PERIODO: TFloatField
      FieldName = 'PERC_CUSTO_PERIODO'
    end
    object sdsOrdemServico_CustoVLR_MARGEM: TFloatField
      FieldName = 'VLR_MARGEM'
    end
    object sdsOrdemServico_CustoVLR_IR_PJ: TFloatField
      FieldName = 'VLR_IR_PJ'
    end
    object sdsOrdemServico_CustoVLR_MARGEM_LIQ: TFloatField
      FieldName = 'VLR_MARGEM_LIQ'
    end
    object sdsOrdemServico_CustoPERC_MARGEM_LIQ: TFloatField
      FieldName = 'PERC_MARGEM_LIQ'
    end
  end
  object cdsOrdemServico_Custo: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServicosdsOrdemServico_Custo
    Params = <>
    OnCalcFields = cdsOrdemServico_EnsaioCalcFields
    Left = 120
    Top = 480
    object cdsOrdemServico_CustoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_CustoVLR_MATERIAIS: TFloatField
      FieldName = 'VLR_MATERIAIS'
    end
    object cdsOrdemServico_CustoVLR_PROCESSO: TFloatField
      FieldName = 'VLR_PROCESSO'
    end
    object cdsOrdemServico_CustoVLR_TERCEIRO: TFloatField
      FieldName = 'VLR_TERCEIRO'
    end
    object cdsOrdemServico_CustoVLR_SETOR: TFloatField
      FieldName = 'VLR_SETOR'
    end
    object cdsOrdemServico_CustoTOTAL_CUSTO: TFloatField
      FieldName = 'TOTAL_CUSTO'
    end
    object cdsOrdemServico_CustoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsOrdemServico_CustoPERC_MARKUP: TFloatField
      FieldName = 'PERC_MARKUP'
    end
    object cdsOrdemServico_CustoPERC_PISCOFINS: TFloatField
      FieldName = 'PERC_PISCOFINS'
      DisplayFormat = '0.00%'
    end
    object cdsOrdemServico_CustoPERC_ISSQN: TFloatField
      FieldName = 'PERC_ISSQN'
    end
    object cdsOrdemServico_CustoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsOrdemServico_CustoPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
    end
    object cdsOrdemServico_CustoPERC_IR_CSOCIAL: TFloatField
      FieldName = 'PERC_IR_CSOCIAL'
    end
    object cdsOrdemServico_CustoPERC_MARG1: TFloatField
      FieldName = 'PERC_MARG1'
    end
    object cdsOrdemServico_CustoPERC_MARG2: TFloatField
      FieldName = 'PERC_MARG2'
    end
    object cdsOrdemServico_CustoPRECO: TFloatField
      FieldName = 'PRECO'
    end
    object cdsOrdemServico_CustoVLR_PROPOSTA: TFloatField
      FieldName = 'VLR_PROPOSTA'
    end
    object cdsOrdemServico_CustoPERC_CUSTO_FINANCEIRO: TFloatField
      FieldName = 'PERC_CUSTO_FINANCEIRO'
    end
    object cdsOrdemServico_CustoPRAZO_DIAS: TIntegerField
      FieldName = 'PRAZO_DIAS'
    end
    object cdsOrdemServico_CustoPERC_CUSTO_PERIODO: TFloatField
      FieldName = 'PERC_CUSTO_PERIODO'
    end
    object cdsOrdemServico_CustoVLR_MARGEM: TFloatField
      FieldName = 'VLR_MARGEM'
    end
    object cdsOrdemServico_CustoVLR_IR_PJ: TFloatField
      FieldName = 'VLR_IR_PJ'
    end
    object cdsOrdemServico_CustoVLR_MARGEM_LIQ: TFloatField
      FieldName = 'VLR_MARGEM_LIQ'
    end
    object cdsOrdemServico_CustoPERC_MARGEM_LIQ: TFloatField
      FieldName = 'PERC_MARGEM_LIQ'
    end
  end
  object dsOrdemServico_Custo: TDataSource
    DataSet = cdsOrdemServico_Custo
    Left = 184
    Top = 480
  end
  object qProximo_NumOrc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT MAX(NUM_ORCAMENTO) NUM_ORCAMENTO'
      'FROM ORDEMSERVICO'
      'WHERE TP_ORCAMENTO = '#39'R'#39)
    SQLConnection = dmDatabase.scoDados
    Left = 760
    Top = 507
    object qProximo_NumOrcNUM_ORCAMENTO: TIntegerField
      FieldName = 'NUM_ORCAMENTO'
    end
  end
  object qVerAprov: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select O.TIPO'
      'from ordemservico_aprov O'
      'WHERE O.ID = :ID'
      '  AND (O.TIPO = '#39'A'#39' or O.TIPO = '#39'N'#39')')
    SQLConnection = dmDatabase.scoDados
    Left = 752
    Top = 571
    object qVerAprovTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
  end
  object qEnsaio: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ENSAIO_OS'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 712
    Top = 280
    object qEnsaioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qEnsaioNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qEnsaioINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object qUsuario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'USUARIO_LOG'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT F.CODIGO'
      'FROM FUNCIONARIO F'
      'WHERE F.USUARIO_LOG = :USUARIO_LOG')
    SQLConnection = dmDatabase.scoDados
    Left = 744
    Top = 278
    object qUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object sdsOrdemServico_Ass: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORDEMSERVICO_ASS'#13#10'WHERE ID = :ID'
    DataSource = dsOrdemServico_Mestre
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
    Top = 528
    object sdsOrdemServico_AssID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_AssITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_AssID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
  end
  object cdsOrdemServico_Ass: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServicosdsOrdemServico_Ass
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    OnCalcFields = cdsOrdemServico_AssCalcFields
    Left = 120
    Top = 528
    object cdsOrdemServico_AssID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_AssITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_AssID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsOrdemServico_AssclNomeFuncionario: TStringField
      FieldKind = fkCalculated
      FieldName = 'clNomeFuncionario'
      Size = 60
      Calculated = True
    end
    object cdsOrdemServico_AssclFuncao: TStringField
      FieldKind = fkCalculated
      FieldName = 'clFuncao'
      Calculated = True
    end
  end
  object dsOrdemServico_Ass: TDataSource
    DataSet = cdsOrdemServico_Ass
    Left = 184
    Top = 528
  end
  object sdsTransp: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.CODIGO, P.NOME, P.FANTASIA, P.CIDADE'#13#10'FROM PESSOA P'#13#10'WH' +
      'ERE P.TP_TRANSPORTADORA = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 304
    Top = 576
  end
  object dspTransp: TDataSetProvider
    DataSet = sdsTransp
    Left = 344
    Top = 576
  end
  object cdsTransp: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspTransp'
    Left = 376
    Top = 576
    object cdsTranspCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsTranspNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsTranspFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsTranspCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
  end
  object dsTransp: TDataSource
    DataSet = cdsTransp
    Left = 416
    Top = 576
  end
  object sdsOrdemServico_Lib: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM ORDEMSERVICO_LIB'#13#10'WHERE ID = :ID'#13#10'   AND ITEM = :' +
      'ITEM'
    DataSource = dsOrdemServicoItens_Mestre
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
    Left = 58
    Top = 576
    object sdsOrdemServico_LibID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_LibITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_LibITEM_LIB: TIntegerField
      FieldName = 'ITEM_LIB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_LibQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrdemServico_LibDTLIBERADA: TDateField
      FieldName = 'DTLIBERADA'
    end
    object sdsOrdemServico_LibHRLIBERADA: TTimeField
      FieldName = 'HRLIBERADA'
    end
    object sdsOrdemServico_LibQTD_LIB_PED: TFloatField
      FieldName = 'QTD_LIB_PED'
    end
    object sdsOrdemServico_LibID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object cdsOrdemServico_Lib: TClientDataSet
    Aggregates = <>
    DataSetField = cdsOrdemServico_ItenssdsOrdemServico_Lib
    IndexFieldNames = 'ID;ITEM;ITEM_LIB'
    Params = <>
    Left = 120
    Top = 575
    object cdsOrdemServico_LibID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_LibITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_LibITEM_LIB: TIntegerField
      FieldName = 'ITEM_LIB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_LibQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrdemServico_LibDTLIBERADA: TDateField
      FieldName = 'DTLIBERADA'
    end
    object cdsOrdemServico_LibHRLIBERADA: TTimeField
      FieldName = 'HRLIBERADA'
    end
    object cdsOrdemServico_LibQTD_LIB_PED: TFloatField
      FieldName = 'QTD_LIB_PED'
    end
    object cdsOrdemServico_LibID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dsOrdemServico_Lib: TDataSource
    DataSet = cdsOrdemServico_Lib
    Left = 192
    Top = 576
  end
  object sdsPedido_Item: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT I.ID, I.ITEM, I.qtd, I.qtd_faturado, I.qtd_restante, I.qt' +
      'd_liberada, P.num_pedido, P.pedido_cliente, i.vlr_unitario,'#13#10'i.p' +
      'erc_tribicms, i.perc_icms, i.perc_ipi'#13#10'FROM PEDIDO_ITEM I'#13#10'INNER' +
      ' JOIN PEDIDO P'#13#10'ON I.ID = P.ID'#13#10'WHERE I.ID_OS_SERV = :ID_OS_SERV' +
      #13#10'  AND I.TIPO_REG = '#39'P'#39#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OS_SERV'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 616
    Top = 628
    object sdsPedido_ItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPedido_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsPedido_ItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsPedido_ItemQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsPedido_ItemQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsPedido_ItemQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object sdsPedido_ItemNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsPedido_ItemPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object sdsPedido_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsPedido_ItemPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object sdsPedido_ItemPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsPedido_ItemPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
  end
  object dspPedido_Item: TDataSetProvider
    DataSet = sdsPedido_Item
    Left = 648
    Top = 628
  end
  object cdsPedido_Item: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedido_Item'
    Left = 680
    Top = 628
    object cdsPedido_ItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPedido_ItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsPedido_ItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsPedido_ItemQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsPedido_ItemQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsPedido_ItemQTD_LIBERADA: TFloatField
      FieldName = 'QTD_LIBERADA'
    end
    object cdsPedido_ItemNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsPedido_ItemPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsPedido_ItemVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsPedido_ItemPERC_TRIBICMS: TFloatField
      FieldName = 'PERC_TRIBICMS'
    end
    object cdsPedido_ItemPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsPedido_ItemPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
  end
  object dsPedido_Item: TDataSource
    DataSet = cdsPedido_Item
    Left = 712
    Top = 628
  end
  object sdsBaixa_Pedido: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BAIXA_PEDIDO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 824
    Top = 624
    object sdsBaixa_PedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBaixa_PedidoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsBaixa_PedidoITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object sdsBaixa_PedidoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsBaixa_PedidoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsBaixa_PedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsBaixa_PedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
      Size = 30
    end
    object sdsBaixa_PedidoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object sdsBaixa_PedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object sdsBaixa_PedidoTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 1
    end
    object sdsBaixa_PedidoID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object sdsBaixa_PedidoITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
    end
    object sdsBaixa_PedidoITEM_LIB_OS: TIntegerField
      FieldName = 'ITEM_LIB_OS'
    end
  end
  object dspBaixa_Pedido: TDataSetProvider
    DataSet = sdsBaixa_Pedido
    Left = 856
    Top = 624
  end
  object cdsBaixa_Pedido: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspBaixa_Pedido'
    Left = 888
    Top = 624
    object cdsBaixa_PedidoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBaixa_PedidoID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsBaixa_PedidoITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object cdsBaixa_PedidoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsBaixa_PedidoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsBaixa_PedidoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsBaixa_PedidoPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
      Size = 30
    end
    object cdsBaixa_PedidoID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
    object cdsBaixa_PedidoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      Size = 3
    end
    object cdsBaixa_PedidoTIPO_MOV: TStringField
      FieldName = 'TIPO_MOV'
      Size = 1
    end
    object cdsBaixa_PedidoID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsBaixa_PedidoITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
    end
    object cdsBaixa_PedidoITEM_LIB_OS: TIntegerField
      FieldName = 'ITEM_LIB_OS'
    end
  end
  object dsBaixa_Pedido: TDataSource
    DataSet = cdsBaixa_Pedido
    Left = 928
    Top = 624
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 128
    object qParametros_ProdUSA_PRODUTO_FILIAL: TStringField
      FieldName = 'USA_PRODUTO_FILIAL'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdSENHA_ALT_PROD_MOV: TStringField
      FieldName = 'SENHA_ALT_PROD_MOV'
      Size = 15
    end
    object qParametros_ProdMOSTRAR_OBS_CONSULTA: TStringField
      FieldName = 'MOSTRAR_OBS_CONSULTA'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT: TStringField
      FieldName = 'MARCAR_BAIXAR_ESTOQUE_MAT'
      Size = 1
    end
    object qParametros_ProdUSA_MEDIDA: TStringField
      FieldName = 'USA_MEDIDA'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_QTD_EMBALAGEM: TStringField
      FieldName = 'USA_QTD_EMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdOPCAO_APLICAR_MARGEM: TStringField
      FieldName = 'OPCAO_APLICAR_MARGEM'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdOPCAO_PRECO_CONSUMO: TStringField
      FieldName = 'OPCAO_PRECO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdGRAVA_CONSUMO_PRVENDA: TStringField
      FieldName = 'GRAVA_CONSUMO_PRVENDA'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_DESC_MAXIMO: TStringField
      FieldName = 'USA_DESC_MAXIMO'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdPRODUTO_PRECO_COR: TStringField
      FieldName = 'PRODUTO_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdUSA_CONSUMO_COMB: TStringField
      FieldName = 'USA_CONSUMO_COMB'
      FixedChar = True
      Size = 1
    end
    object qParametros_ProdGERADORES_ELETRICOS: TStringField
      FieldName = 'GERADORES_ELETRICOS'
      FixedChar = True
      Size = 1
    end
  end
  object sdsMarca_Montadora: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM MARCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 704
    Top = 7
  end
  object dspMarca_Montadora: TDataSetProvider
    DataSet = sdsMarca_Montadora
    Left = 736
    Top = 7
  end
  object cdsMarca_Montadora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMarca_Montadora'
    Left = 768
    Top = 7
    object cdsMarca_MontadoraID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMarca_MontadoraNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsMarca_Montadora: TDataSource
    DataSet = cdsMarca_Montadora
    Left = 800
    Top = 7
  end
  object sdsFabricanteMotor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM MARCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 704
    Top = 55
  end
  object dspFabricanteMotor: TDataSetProvider
    DataSet = sdsFabricanteMotor
    Left = 736
    Top = 55
  end
  object cdsFabricanteMotor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFabricanteMotor'
    Left = 768
    Top = 55
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsFabricanteMotor: TDataSource
    DataSet = cdsFabricanteMotor
    Left = 800
    Top = 55
  end
  object sdsFabricanteGerador: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM MARCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 704
    Top = 103
  end
  object dspFabricanteGerador: TDataSetProvider
    DataSet = sdsFabricanteGerador
    Left = 736
    Top = 103
  end
  object cdsFabricanteGerador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFabricanteGerador'
    Left = 768
    Top = 103
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsFabricanteGerador: TDataSource
    DataSet = cdsFabricanteGerador
    Left = 800
    Top = 103
  end
  object dsmProduto: TDataSource
    DataSet = sdsProduto
    Left = 1024
    Top = 161
  end
  object sdsProdutoGerador: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PRODUTO_GERADOR WHERE ID = :ID'
    DataSource = dsmProduto
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 888
    Top = 216
  end
  object cdsProdutoGerador: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsProdutoGerador
    Params = <>
    Left = 936
    Top = 216
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
  end
  object dsProdutoGerador: TDataSource
    DataSet = cdsProdutoGerador
    Left = 968
    Top = 216
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, REFERENCIA, INATIVO'#13#10'FROM PRODUTO'#13#10'WHERE INATIV' +
      'O = '#39'N'#39#13#10'  AND TIPO_REG = '#39'P'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 888
    Top = 161
    object IntegerField3: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField3: TStringField
      FieldName = 'REFERENCIA'
    end
    object StringField4: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object StringField5: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 928
    Top = 161
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    AfterOpen = cdsProdutoAfterOpen
    Left = 960
    Top = 161
    object cdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosdsProdutoGerador: TDataSetField
      FieldName = 'sdsProdutoGerador'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 992
    Top = 161
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT UNIDADE, NOME FROM UNIDADE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 368
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 560
    Top = 368
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 592
    Top = 368
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 528
    Top = 368
  end
  object sdsBaixa_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT B.*'#13#10'FROM BAIXA_OS B'#13#10'WHERE B.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 960
    Top = 276
    object sdsBaixa_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBaixa_OSDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsBaixa_OSHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsBaixa_OSDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsBaixa_OSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object sdsBaixa_OSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsBaixa_OSITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
    object sdsBaixa_OSID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsBaixa_OSID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsBaixa_OSID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object sdsBaixa_OSHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsBaixa_OSORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object sdsBaixa_OSTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object sdsBaixa_OSTIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      FixedChar = True
      Size = 1
    end
    object sdsBaixa_OSOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsBaixa_OSRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object sdsBaixa_OSQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dspBaixa_OS: TDataSetProvider
    DataSet = sdsBaixa_OS
    Left = 992
    Top = 276
  end
  object cdsBaixa_OS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspBaixa_OS'
    Left = 1024
    Top = 276
    object cdsBaixa_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBaixa_OSDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsBaixa_OSHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsBaixa_OSDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsBaixa_OSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsBaixa_OSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsBaixa_OSITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
    object cdsBaixa_OSID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsBaixa_OSID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsBaixa_OSID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object cdsBaixa_OSHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsBaixa_OSORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsBaixa_OSTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object cdsBaixa_OSTIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsBaixa_OSOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsBaixa_OSRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object cdsBaixa_OSQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object sdsBaixa_OS_Pausa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT B.*'#13#10'FROM BAIXA_OS_PAUSA B'#13#10'WHERE B.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 960
    Top = 324
    object sdsBaixa_OS_PausaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBaixa_OS_PausaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsBaixa_OS_PausaID_PARADA: TIntegerField
      FieldName = 'ID_PARADA'
    end
    object sdsBaixa_OS_PausaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object sdsBaixa_OS_PausaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object sdsBaixa_OS_PausaDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object sdsBaixa_OS_PausaHRFINAL: TTimeField
      FieldName = 'HRFINAL'
    end
    object sdsBaixa_OS_PausaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsBaixa_OS_PausaID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object sdsBaixa_OS_PausaORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object sdsBaixa_OS_PausaTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object sdsBaixa_OS_PausaITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
  end
  object dspBaixa_OS_Pausa: TDataSetProvider
    DataSet = sdsBaixa_OS_Pausa
    Left = 992
    Top = 324
  end
  object cdsBaixa_OS_Pausa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspBaixa_OS_Pausa'
    Left = 1024
    Top = 324
    object cdsBaixa_OS_PausaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBaixa_OS_PausaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsBaixa_OS_PausaID_PARADA: TIntegerField
      FieldName = 'ID_PARADA'
    end
    object cdsBaixa_OS_PausaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsBaixa_OS_PausaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object cdsBaixa_OS_PausaDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsBaixa_OS_PausaHRFINAL: TTimeField
      FieldName = 'HRFINAL'
    end
    object cdsBaixa_OS_PausaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsBaixa_OS_PausaID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsBaixa_OS_PausaORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsBaixa_OS_PausaTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object cdsBaixa_OS_PausaITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
  end
end
