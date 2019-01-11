object dmCadProduto: TdmCadProduto
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 74
  Top = 12
  Height = 662
  Width = 1097
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT PRO.*'#13#10'FROM PRODUTO PRO'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 9
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
    end
    object sdsProdutoPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_CSTIPI: TIntegerField
      FieldName = 'ID_CSTIPI'
    end
    object sdsProdutoPERC_IPI: TFloatField
      FieldName = 'PERC_IPI'
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPOSSE_MATERIAL: TStringField
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMATERIAL_OUTROS: TStringField
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsProdutoDTCAD: TDateField
      FieldName = 'DTCAD'
    end
    object sdsProdutoHRCAD: TTimeField
      FieldName = 'HRCAD'
    end
    object sdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object sdsProdutoCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object sdsProdutoID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object sdsProdutoORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutoCODSITCF: TStringField
      FieldName = 'CODSITCF'
      Size = 5
    end
    object sdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object sdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object sdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object sdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object sdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object sdsProdutoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
    end
    object sdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object sdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object sdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object sdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object sdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
    end
    object sdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object sdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField
      FieldName = 'USA_PERC_IMP_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField
      FieldName = 'IMPRIMIR_ETIQUETA_NAV'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object sdsProdutoPERC_QUEBRAMAT: TFloatField
      FieldName = 'PERC_QUEBRAMAT'
    end
    object sdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object sdsProdutoQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
    end
    object sdsProdutoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object sdsProdutoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object sdsProdutoPERC_ICMS_IMP: TFloatField
      FieldName = 'PERC_ICMS_IMP'
    end
    object sdsProdutoPERC_IPI_IMP: TFloatField
      FieldName = 'PERC_IPI_IMP'
    end
    object sdsProdutoREFERENCIA_PADRAO: TStringField
      FieldName = 'REFERENCIA_PADRAO'
    end
    object sdsProdutoNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object sdsProdutoPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
    object sdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object sdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object sdsProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsProdutoPRECO_REVENDA: TFMTBCDField
      FieldName = 'PRECO_REVENDA'
      Precision = 15
      Size = 10
    end
    object sdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField
      FieldName = 'PRECO_INDUSTRIALIZACAO'
      Precision = 15
      Size = 10
    end
    object sdsProdutoPRECO_CONSUMO: TFMTBCDField
      FieldName = 'PRECO_CONSUMO'
      Precision = 15
      Size = 10
    end
    object sdsProdutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object sdsProdutoREFERENCIA_SEQ: TIntegerField
      FieldName = 'REFERENCIA_SEQ'
    end
    object sdsProdutoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object sdsProdutoCALCULAR_2_LADOS: TStringField
      FieldName = 'CALCULAR_2_LADOS'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPERC_VIDRO: TFloatField
      FieldName = 'PERC_VIDRO'
    end
    object sdsProdutoID_LINHA: TIntegerField
      FieldName = 'ID_LINHA'
    end
    object sdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
    object sdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object sdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
    object sdsProdutoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object sdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object sdsProdutoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object sdsProdutoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object sdsProdutoLANCA_LOTE_CONTROLE: TStringField
      FieldName = 'LANCA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object sdsProdutoPICTOGRAMA: TStringField
      FieldName = 'PICTOGRAMA'
      Size = 150
    end
    object sdsProdutoPICTO_CABEDAL: TStringField
      FieldName = 'PICTO_CABEDAL'
      FixedChar = True
      Size = 4
    end
    object sdsProdutoPICTO_INTERIOR: TStringField
      FieldName = 'PICTO_INTERIOR'
      FixedChar = True
      Size = 4
    end
    object sdsProdutoPICTO_SOLA: TStringField
      FieldName = 'PICTO_SOLA'
      FixedChar = True
      Size = 4
    end
    object sdsProdutoCOD_PRODUTO_CLI: TStringField
      FieldName = 'COD_PRODUTO_CLI'
      Size = 15
    end
    object sdsProdutoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsProdutoBAIXA_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXA_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object sdsProdutoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoNUM_MS: TStringField
      FieldName = 'NUM_MS'
    end
    object sdsProdutoIMP_CONSUMO_NFE: TStringField
      FieldName = 'IMP_CONSUMO_NFE'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoGERAR_FCI: TStringField
      FieldName = 'GERAR_FCI'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMEDIDA: TStringField
      FieldName = 'MEDIDA'
    end
    object sdsProdutoQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object sdsProdutoDT_ALT_PRECOCUSTO: TDateField
      FieldName = 'DT_ALT_PRECOCUSTO'
    end
    object sdsProdutoUSA_CARIMBO_OC: TStringField
      FieldName = 'USA_CARIMBO_OC'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoUSA_NA_BALANCA: TStringField
      FieldName = 'USA_NA_BALANCA'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 250
    end
    object sdsProdutoPERC_DESC_MAX: TFloatField
      FieldName = 'PERC_DESC_MAX'
    end
    object sdsProdutoID_CSTICMS_BRED: TIntegerField
      FieldName = 'ID_CSTICMS_BRED'
    end
    object sdsProdutoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      Size = 1
    end
    object sdsProdutoID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object sdsProdutoTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      Size = 1
    end
    object sdsProdutoCRIADO_OS: TStringField
      FieldName = 'CRIADO_OS'
      Size = 1
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspProdutoUpdateError
    Left = 82
    Top = 9
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspProduto'
    BeforePost = cdsProdutoBeforePost
    OnNewRecord = cdsProdutoNewRecord
    OnReconcileError = cdsProdutoReconcileError
    Left = 114
    Top = 9
    object cdsProdutoID: TIntegerField
      Alignment = taCenter
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsProdutoREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsProdutoNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProdutoPESOLIQUIDO: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'PESOLIQUIDO'
    end
    object cdsProdutoPESOBRUTO: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'PESOBRUTO'
    end
    object cdsProdutoINATIVO: TStringField
      DisplayLabel = 'Inativo'
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_CSTIPI: TIntegerField
      DisplayLabel = 'ID IPI'
      FieldName = 'ID_CSTIPI'
    end
    object cdsProdutoPERC_IPI: TFloatField
      DisplayLabel = '% IPI'
      FieldName = 'PERC_IPI'
    end
    object cdsProdutoPRECO_CUSTO: TFloatField
      DisplayLabel = 'Pre'#231'o Custo'
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.000###'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      DisplayLabel = 'Pre'#231'o Venda'
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.000###'
    end
    object cdsProdutoTIPO_REG: TStringField
      DisplayLabel = 'Tipo Reg.'
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPOSSE_MATERIAL: TStringField
      DisplayLabel = 'Posso Material'
      FieldName = 'POSSE_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoESTOQUE: TStringField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMATERIAL_OUTROS: TStringField
      DisplayLabel = 'Material/Outros'
      FieldName = 'MATERIAL_OUTROS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsProdutoDTCAD: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'DTCAD'
    end
    object cdsProdutoHRCAD: TTimeField
      DisplayLabel = 'Hora Cadastro'
      FieldName = 'HRCAD'
    end
    object cdsProdutoCA: TStringField
      FieldName = 'CA'
    end
    object cdsProdutoCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProdutoID_NCM: TIntegerField
      DisplayLabel = 'ID NCM'
      FieldName = 'ID_NCM'
    end
    object cdsProdutoORIGEM_PROD: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutoCODSITCF: TStringField
      DisplayLabel = 'C'#243'd. SIT Cupom Fiscal'
      FieldName = 'CODSITCF'
      Size = 5
    end
    object cdsProdutoPERC_REDUCAOICMS: TFloatField
      FieldName = 'PERC_REDUCAOICMS'
    end
    object cdsProdutoTIPO_VENDA: TStringField
      FieldName = 'TIPO_VENDA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProdutoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProdutoDT_ALTPRECO: TDateField
      FieldName = 'DT_ALTPRECO'
    end
    object cdsProdutoLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsProdutoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
    end
    object cdsProdutoID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsProdutoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProdutoPERC_IMPORTACAO: TFloatField
      FieldName = 'PERC_IMPORTACAO'
    end
    object cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField
      FieldName = 'PERC_REDUCAOICMSSUBST'
    end
    object cdsProdutoUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoID_GRADE: TIntegerField
      FieldName = 'ID_GRADE'
    end
    object cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField
      FieldName = 'USA_PERC_IMP_INTERESTADUAL'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField
      FieldName = 'IMPRIMIR_ETIQUETA_NAV'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCARIMBO: TStringField
      FieldName = 'CARIMBO'
      Size = 25
    end
    object cdsProdutoPERC_QUEBRAMAT: TFloatField
      FieldName = 'PERC_QUEBRAMAT'
      DisplayFormat = '0.00'
    end
    object cdsProdutoSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsProdutoQTD_ESTOQUE_MIN: TFloatField
      FieldName = 'QTD_ESTOQUE_MIN'
    end
    object cdsProdutoPERC_PIS: TFloatField
      FieldName = 'PERC_PIS'
    end
    object cdsProdutoPERC_COFINS: TFloatField
      FieldName = 'PERC_COFINS'
    end
    object cdsProdutoPERC_ICMS_IMP: TFloatField
      FieldName = 'PERC_ICMS_IMP'
    end
    object cdsProdutoPERC_IPI_IMP: TFloatField
      FieldName = 'PERC_IPI_IMP'
    end
    object cdsProdutoREFERENCIA_PADRAO: TStringField
      FieldName = 'REFERENCIA_PADRAO'
    end
    object cdsProdutoNUM_FCI: TStringField
      FieldName = 'NUM_FCI'
      Size = 40
    end
    object cdsProdutoPERC_USADO_FCI: TFloatField
      FieldName = 'PERC_USADO_FCI'
    end
    object cdsProdutoNCM_EX: TStringField
      FieldName = 'NCM_EX'
      Size = 2
    end
    object cdsProdutoID_SITTRIB_CF: TIntegerField
      FieldName = 'ID_SITTRIB_CF'
    end
    object cdsProdutoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsProdutoPRECO_REVENDA: TFMTBCDField
      FieldName = 'PRECO_REVENDA'
      DisplayFormat = '0.00000'
      Precision = 15
      Size = 10
    end
    object cdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField
      FieldName = 'PRECO_INDUSTRIALIZACAO'
      DisplayFormat = '0.00000'
      Precision = 15
      Size = 10
    end
    object cdsProdutoPRECO_CONSUMO: TFMTBCDField
      FieldName = 'PRECO_CONSUMO'
      DisplayFormat = '0.00000'
      Precision = 15
      Size = 10
    end
    object cdsProdutoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 150
    end
    object cdsProdutoREFERENCIA_SEQ: TIntegerField
      FieldName = 'REFERENCIA_SEQ'
    end
    object cdsProdutoID_COR: TIntegerField
      FieldName = 'ID_COR'
    end
    object cdsProdutoNCM: TStringField
      FieldKind = fkCalculated
      FieldName = 'NCM'
      ProviderFlags = []
      Size = 10
      Calculated = True
    end
    object cdsProdutoCALCULAR_2_LADOS: TStringField
      FieldName = 'CALCULAR_2_LADOS'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPERC_VIDRO: TFloatField
      FieldName = 'PERC_VIDRO'
    end
    object cdsProdutoID_LINHA: TIntegerField
      FieldName = 'ID_LINHA'
    end
    object cdsProdutoCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
    object cdsProdutoID_CFOP_NFCE: TIntegerField
      FieldName = 'ID_CFOP_NFCE'
    end
    object cdsProdutoUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSA_COR: TStringField
      FieldName = 'USA_COR'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoTRANSFER: TStringField
      FieldName = 'TRANSFER'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsProdutoID_CONTA_ORCAMENTO: TIntegerField
      FieldName = 'ID_CONTA_ORCAMENTO'
    end
    object cdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object cdsProdutoPERC_COMISSAO: TFloatField
      FieldName = 'PERC_COMISSAO'
    end
    object cdsProdutoID_ENQIPI: TIntegerField
      FieldName = 'ID_ENQIPI'
    end
    object cdsProdutoLANCA_LOTE_CONTROLE: TStringField
      FieldName = 'LANCA_LOTE_CONTROLE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoCOD_CEST: TStringField
      FieldName = 'COD_CEST'
      Size = 7
    end
    object cdsProdutoPICTOGRAMA: TStringField
      FieldName = 'PICTOGRAMA'
      Size = 150
    end
    object cdsProdutoPICTO_CABEDAL: TStringField
      FieldName = 'PICTO_CABEDAL'
      FixedChar = True
      Size = 4
    end
    object cdsProdutoPICTO_INTERIOR: TStringField
      FieldName = 'PICTO_INTERIOR'
      FixedChar = True
      Size = 4
    end
    object cdsProdutoPICTO_SOLA: TStringField
      FieldName = 'PICTO_SOLA'
      FixedChar = True
      Size = 4
    end
    object cdsProdutoCOD_PRODUTO_CLI: TStringField
      FieldName = 'COD_PRODUTO_CLI'
      Size = 15
    end
    object cdsProdutoFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsProdutoBAIXA_ESTOQUE_MAT: TStringField
      FieldName = 'BAIXA_ESTOQUE_MAT'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoNOME_ORIGINAL: TStringField
      FieldName = 'NOME_ORIGINAL'
      Size = 100
    end
    object cdsProdutoIMP_ROTULO: TStringField
      FieldName = 'IMP_ROTULO'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoNUM_MS: TStringField
      FieldName = 'NUM_MS'
    end
    object cdsProdutoIMP_CONSUMO_NFE: TStringField
      FieldName = 'IMP_CONSUMO_NFE'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoGERAR_FCI: TStringField
      FieldName = 'GERAR_FCI'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMEDIDA: TStringField
      FieldName = 'MEDIDA'
    end
    object cdsProdutoQTD_EMBALAGEM: TFloatField
      FieldName = 'QTD_EMBALAGEM'
    end
    object cdsProdutoDT_ALT_PRECOCUSTO: TDateField
      FieldName = 'DT_ALT_PRECOCUSTO'
    end
    object cdsProdutoUSA_CARIMBO_OC: TStringField
      FieldName = 'USA_CARIMBO_OC'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoUSA_NA_BALANCA: TStringField
      FieldName = 'USA_NA_BALANCA'
      FixedChar = True
      Size = 1
    end
    object cdsProdutoMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 250
    end
    object cdsProdutoPERC_DESC_MAX: TFloatField
      FieldName = 'PERC_DESC_MAX'
    end
    object cdsProdutoID_CSTICMS_BRED: TIntegerField
      FieldName = 'ID_CSTICMS_BRED'
    end
    object cdsProdutoTIPO_MAT: TStringField
      FieldName = 'TIPO_MAT'
      Size = 1
    end
    object cdsProdutoID_PROCESSO_GRUPO: TIntegerField
      FieldName = 'ID_PROCESSO_GRUPO'
    end
    object cdsProdutoTIPO_PRODUCAO: TStringField
      FieldName = 'TIPO_PRODUCAO'
      Size = 1
    end
    object cdsProdutoCRIADO_OS: TStringField
      FieldName = 'CRIADO_OS'
      Size = 1
    end
    object cdsProdutosdsProdutoGerador: TDataSetField
      FieldName = 'sdsProdutoGerador'
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 146
    Top = 9
  end
  object sdsUnidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UNIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 448
  end
  object dspUnidade: TDataSetProvider
    DataSet = sdsUnidade
    Left = 664
    Top = 448
  end
  object cdsUnidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UNIDADE'
    Params = <>
    ProviderName = 'dspUnidade'
    Left = 696
    Top = 448
    object cdsUnidadeUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object cdsUnidadeCONVERSOR: TFloatField
      FieldName = 'CONVERSOR'
    end
    object cdsUnidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsUnidade: TDataSource
    DataSet = cdsUnidade
    Left = 728
    Top = 448
  end
  object sdsNCM: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM TAB_NCM'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 3
  end
  object dspNCM: TDataSetProvider
    DataSet = sdsNCM
    Left = 664
    Top = 3
  end
  object cdsNCM: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NCM'
    Params = <>
    ProviderName = 'dspNCM'
    Left = 696
    Top = 3
    object cdsNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsNCMNOME: TStringField
      FieldName = 'NOME'
      Size = 250
    end
  end
  object dsNCM: TDataSource
    DataSet = cdsNCM
    Left = 728
    Top = 3
  end
  object sdsOrigem_Prod: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ORIGEM_PROD'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 88
  end
  object dspOrigem_Prod: TDataSetProvider
    DataSet = sdsOrigem_Prod
    Left = 664
    Top = 88
  end
  object cdsOrigem_Prod: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORIGEM'
    Params = <>
    ProviderName = 'dspOrigem_Prod'
    Left = 696
    Top = 88
    object cdsOrigem_ProdORIGEM: TStringField
      FieldName = 'ORIGEM'
      Required = True
      Size = 1
    end
    object cdsOrigem_ProdNOME: TStringField
      FieldName = 'NOME'
      Size = 90
    end
  end
  object dsOrigem_Prod: TDataSource
    DataSet = cdsOrigem_Prod
    Left = 728
    Top = 88
  end
  object qReferencia: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'REFERENCIA'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT REFERENCIA, ID'
      'FROM PRODUTO '
      'WHERE REFERENCIA = :REFERENCIA'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 808
    Top = 72
    object qReferenciaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qReferenciaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
  end
  object sdsFornecedor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE TP_FORNECEDOR = '#39'S'#39#13#10'   ' +
      ' OR TP_CLIENTE = '#39'S'#39#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 132
  end
  object dspFornecedor: TDataSetProvider
    DataSet = sdsFornecedor
    Left = 664
    Top = 132
  end
  object cdsFornecedor: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFornecedor'
    Left = 696
    Top = 132
    object cdsFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsFornecedor: TDataSource
    DataSet = cdsFornecedor
    Left = 728
    Top = 132
  end
  object sdsMaterial: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT ID, NOME, UNIDADE, REFERENCIA, PRECO_CUSTO, PRECO_CUSTO_T' +
      'OTAL'#13#10'FROM PRODUTO'#13#10'WHERE ((TIPO_REG = '#39'M'#39') OR (TIPO_REG = '#39'S'#39'))' +
      #13#10'      AND  INATIVO = '#39'N'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 180
  end
  object dspMaterial: TDataSetProvider
    DataSet = sdsMaterial
    Left = 664
    Top = 180
  end
  object cdsMaterial: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMaterial'
    Left = 696
    Top = 180
    object cdsMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 65
    end
    object cdsMaterialUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 3
    end
    object cdsMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsMaterialPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsMaterialPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object dsMaterial: TDataSource
    DataSet = cdsMaterial
    Left = 728
    Top = 180
  end
  object qParametros: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS')
    SQLConnection = dmDatabase.scoDados
    Left = 816
    Top = 280
    object qParametrosID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametrosATUALIZAR_PRECO: TStringField
      FieldName = 'ATUALIZAR_PRECO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_VENDEDOR: TStringField
      FieldName = 'USA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CONSUMO: TStringField
      FieldName = 'USA_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosCADASTRAR_REF_DUP: TStringField
      FieldName = 'CADASTRAR_REF_DUP'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_NO_CONSUMO: TStringField
      FieldName = 'MOSTRAR_NO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_COD_BARRAS: TStringField
      FieldName = 'USA_COD_BARRAS'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_VEICULO: TStringField
      FieldName = 'EMPRESA_VEICULO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_GRADE: TStringField
      FieldName = 'USA_GRADE'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_NOME_ETIQUETA: TStringField
      FieldName = 'MOSTRAR_NOME_ETIQUETA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_POSICAO_CONSUMO: TStringField
      FieldName = 'USA_POSICAO_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_INJETADO: TStringField
      FieldName = 'EMPRESA_INJETADO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_CARTONAGEM: TStringField
      FieldName = 'EMPRESA_CARTONAGEM'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_NUM_SERIE_PROD: TStringField
      FieldName = 'USA_NUM_SERIE_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosPERC_IPI_PADRAO: TFloatField
      FieldName = 'PERC_IPI_PADRAO'
    end
    object qParametrosID_NCM_PADRAO: TIntegerField
      FieldName = 'ID_NCM_PADRAO'
    end
    object qParametrosUSA_EDI: TStringField
      FieldName = 'USA_EDI'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_SPED: TStringField
      FieldName = 'USA_SPED'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_FCI: TStringField
      FieldName = 'USA_FCI'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PRODUTO_CLIENTE: TStringField
      FieldName = 'USA_PRODUTO_CLIENTE'
      FixedChar = True
      Size = 1
    end
    object qParametrosPRODUTO_PRECO_POR_FINALIDADE: TStringField
      FieldName = 'PRODUTO_PRECO_POR_FINALIDADE'
      FixedChar = True
      Size = 1
    end
    object qParametrosTIPO_REG_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_REG_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosTIPO_CONSULTA_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_CONSULTA_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_MATERIAL: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qParametrosNUMERO_SERIE_INTERNO: TStringField
      FieldName = 'NUMERO_SERIE_INTERNO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_AMBIENTES: TStringField
      FieldName = 'EMPRESA_AMBIENTES'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_PROD: TStringField
      FieldName = 'INFORMAR_COR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_MARCAR_PROD: TStringField
      FieldName = 'MOSTRAR_MARCAR_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_LINHA_PROD: TStringField
      FieldName = 'MOSTRAR_LINHA_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_EMBALAGEM: TStringField
      FieldName = 'MOSTRAR_EMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_SETOR_CONSUMO: TStringField
      FieldName = 'USA_SETOR_CONSUMO'
      FixedChar = True
      Size = 1
    end
    object qParametrosMOSTRAR_ATELIER_PROD: TStringField
      FieldName = 'MOSTRAR_ATELIER_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_COD_BARRAS_PROPRIO: TStringField
      FieldName = 'USA_COD_BARRAS_PROPRIO'
      FixedChar = True
      Size = 1
    end
    object qParametrosOPCAO_ESCOLHER_PRECO_COR: TStringField
      FieldName = 'OPCAO_ESCOLHER_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object qParametrosINFORMAR_COR_MATERIAL_RZ: TStringField
      FieldName = 'INFORMAR_COR_MATERIAL_RZ'
      FixedChar = True
      Size = 1
    end
    object qParametrosGRAVAR_CONSUMO_NOTA: TStringField
      FieldName = 'GRAVAR_CONSUMO_NOTA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PRODUTO_FORNECEDOR: TStringField
      FieldName = 'USA_PRODUTO_FORNECEDOR'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_PRODUTO_LOCALIZACAO: TStringField
      FieldName = 'USA_PRODUTO_LOCALIZACAO'
      FixedChar = True
      Size = 1
    end
    object qParametrosEMPRESA_LIVRARIA: TStringField
      FieldName = 'EMPRESA_LIVRARIA'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_CONTA_ORCAMENTO: TStringField
      FieldName = 'USA_CONTA_ORCAMENTO'
      FixedChar = True
      Size = 1
    end
    object qParametrosUSA_LOCAL_ESTOQUE: TStringField
      FieldName = 'USA_LOCAL_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object qParametrosTIPO_COMISSAO_PROD: TStringField
      FieldName = 'TIPO_COMISSAO_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosID_LOCAL_ESTOQUE_PROD: TIntegerField
      FieldName = 'ID_LOCAL_ESTOQUE_PROD'
    end
    object qParametrosUSA_CARIMBO: TStringField
      FieldName = 'USA_CARIMBO'
      FixedChar = True
      Size = 1
    end
    object qParametrosIMP_NFE_REF_PROD: TStringField
      FieldName = 'IMP_NFE_REF_PROD'
      FixedChar = True
      Size = 1
    end
    object qParametrosGERAR_TALAO_AUXILIAR: TStringField
      FieldName = 'GERAR_TALAO_AUXILIAR'
      FixedChar = True
      Size = 1
    end
    object qParametrosCALCULAR_PESO_CONSUMO: TStringField
      FieldName = 'CALCULAR_PESO_CONSUMO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsGrupo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT G.ID, G.NOME, G.TIPO, G.CODIGO, G.NIVEL, G.SUPERIOR, G.CO' +
      'D_PRINCIPAL, G.TIPO_PROD , CASE NIVEL'#13#10'           WHEN 5 THEN '#39' ' +
      '         '#39' ||  NOME'#13#10'           WHEN 4 THEN '#39'        '#39' ||  NOME'#13 +
      #10'           WHEN 3 THEN '#39'      '#39' ||  NOME'#13#10'           WHEN 2 THE' +
      'N '#39'    '#39' ||  NOME'#13#10'           WHEN 1 THEN NOME'#13#10'           ELSE ' +
      'G.NOME'#13#10'           END AS NOME_AUX'#13#10'FROM GRUPO G'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 632
    Top = 233
  end
  object dspGrupo: TDataSetProvider
    DataSet = sdsGrupo
    Left = 664
    Top = 233
  end
  object cdsGrupo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspGrupo'
    Left = 696
    Top = 233
    object cdsGrupoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsGrupoNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsGrupoTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsGrupoNOME_AUX: TStringField
      FieldName = 'NOME_AUX'
      Size = 40
    end
    object cdsGrupoCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object cdsGrupoTIPO_PROD: TStringField
      FieldName = 'TIPO_PROD'
      FixedChar = True
      Size = 1
    end
  end
  object dsGrupo: TDataSource
    DataSet = cdsGrupo
    Left = 728
    Top = 233
  end
  object sdsProduto_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT PRO.id, PRO.nome, PRO.referencia, PRO.referencia_padrao, ' +
      'PRO.complemento, PRO.preco_custo,'#13#10'PRO.preco_venda, PRO.unidade,' +
      'PRO.ca, PRO.INATIVO, PRO.ID_GRUPO, PRO.TIPO_REG, PRO.ESTOQUE, PR' +
      'O.ID_NCM,'#13#10'PRO.ORIGEM_PROD, PRO.PERC_MARGEMLUCRO, PRO.LOCALIZACA' +
      'O, PRO.ID_MARCA, PRO.COD_BARRA, PRO.SPED_TIPO_ITEM,'#13#10'PRO.cod_ANT' +
      ', PRO.OBS, PRO.PRECO_CUSTO_TOTAL, NCM.NCM, MARCA.NOME NOMEMARCA,' +
      ' GRUPO.NOME NOMEGRUPO,'#13#10'GRUPO.CODIGO COD_GRUPO, GRUPO.COD_PRINCI' +
      'PAL,'#13#10#13#10'CASE'#13#10'   WHEN (PRO.TIPO_REG = '#39'P'#39') then '#39'Produto'#39#13#10'   WH' +
      'EN (PRO.TIPO_REG = '#39'M'#39') THEN '#39'Material'#39#13#10'   WHEN (PRO.TIPO_REG =' +
      ' '#39'N'#39') THEN '#39'Outros'#39#13#10'   WHEN (PRO.TIPO_REG = '#39'C'#39') THEN '#39'Material' +
      ' Consumo'#39#13#10'   WHEN (PRO.TIPO_REG = '#39'I'#39') THEN '#39'Imobilizado'#39#13#10'   W' +
      'HEN (PRO.TIPO_REG = '#39'S'#39') THEN '#39'Semiacabado'#39#13#10'ELSE '#39#39#13#10' END AS TI' +
      'PO_REG_DESCRICAO, P.NOME NOME_CLIENTE,'#13#10#13#10'(SELECT SUM(E2.QTD) QT' +
      'DGERAL FROM ESTOQUE_ATUAL E2'#13#10'                    WHERE E2.ID_PR' +
      'ODUTO = PRO.ID) QTD_ESTOQUE'#13#10'FROM PRODUTO PRO'#13#10'LEFT JOIN TAB_NCM' +
      ' NCM ON (PRO.ID_NCM = NCM.ID)'#13#10'LEFT JOIN MARCA ON (PRO.ID_MARCA ' +
      '= MARCA.ID)'#13#10'LEFT JOIN GRUPO ON (PRO.ID_GRUPO = GRUPO.ID)'#13#10'LEFT ' +
      'JOIN PESSOA P ON (P.CODIGO = PRO.ID_CLIENTE)'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 432
  end
  object dspProduto_Consulta: TDataSetProvider
    DataSet = sdsProduto_Consulta
    OnUpdateError = dspProdutoUpdateError
    Left = 466
  end
  object cdsProduto_Consulta: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'REFERENCIA'
    Params = <>
    ProviderName = 'dspProduto_Consulta'
    Left = 496
    object cdsProduto_ConsultaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProduto_ConsultaREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsProduto_ConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 100
    end
    object cdsProduto_ConsultaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsultaPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
      DisplayFormat = '0.000##'
    end
    object cdsProduto_ConsultaPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = '0.000##'
    end
    object cdsProduto_ConsultaTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsultaESTOQUE: TStringField
      FieldName = 'ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsultaCA: TStringField
      FieldName = 'CA'
    end
    object cdsProduto_ConsultaCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 200
    end
    object cdsProduto_ConsultaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
    object cdsProduto_ConsultaORIGEM_PROD: TStringField
      FieldName = 'ORIGEM_PROD'
      FixedChar = True
      Size = 1
    end
    object cdsProduto_ConsultaPERC_MARGEMLUCRO: TFloatField
      FieldName = 'PERC_MARGEMLUCRO'
    end
    object cdsProduto_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsProduto_ConsultaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 30
    end
    object cdsProduto_ConsultaID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
    end
    object cdsProduto_ConsultaID_MARCA: TIntegerField
      FieldName = 'ID_MARCA'
    end
    object cdsProduto_ConsultaNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
    object cdsProduto_ConsultaNOMEMARCA: TStringField
      FieldName = 'NOMEMARCA'
      Size = 40
    end
    object cdsProduto_ConsultaCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
    object cdsProduto_ConsultaQTD_ESTOQUE: TFMTBCDField
      FieldName = 'QTD_ESTOQUE'
      DisplayFormat = '0.000##'
      Precision = 15
      Size = 6
    end
    object cdsProduto_ConsultaNOMEGRUPO: TStringField
      FieldName = 'NOMEGRUPO'
      Size = 40
    end
    object cdsProduto_ConsultaCOD_GRUPO: TStringField
      FieldName = 'COD_GRUPO'
    end
    object cdsProduto_ConsultaREFERENCIA_PADRAO: TStringField
      FieldName = 'REFERENCIA_PADRAO'
    end
    object cdsProduto_ConsultaSPED_TIPO_ITEM: TStringField
      FieldName = 'SPED_TIPO_ITEM'
      Size = 2
    end
    object cdsProduto_ConsultaCOD_PRINCIPAL: TIntegerField
      FieldName = 'COD_PRINCIPAL'
    end
    object cdsProduto_ConsultaTIPO_REG_DESCRICAO: TStringField
      FieldName = 'TIPO_REG_DESCRICAO'
      Required = True
      FixedChar = True
      Size = 16
    end
    object cdsProduto_ConsultaCOD_ANT: TStringField
      FieldName = 'COD_ANT'
      Size = 10
    end
    object cdsProduto_ConsultaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProduto_ConsultaPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
      DisplayFormat = '0.000##'
    end
    object cdsProduto_ConsultaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
  end
  object dsProduto_Consulta: TDataSource
    DataSet = cdsProduto_Consulta
    Left = 528
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CODIGO, NOME'#13#10'FROM PESSOA'#13#10'WHERE TP_CLIENTE = '#39'S'#39#13#10'    AN' +
      'D INATIVO = '#39'N'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 318
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 512
    Top = 318
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCliente'
    Left = 544
    Top = 318
    object cdsClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 576
    Top = 318
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
    Left = 880
    Top = 312
    object qParametros_UsuarioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_UsuarioUSUARIO: TStringField
      FieldName = 'USUARIO'
      Required = True
      Size = 30
    end
    object qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_REG_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField
      FieldName = 'TIPO_CONSULTA_PRODUTO_PADRAO'
      FixedChar = True
      Size = 1
    end
    object qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField
      FieldName = 'MOSTRAR_CODIGO_PROD_ANT'
      FixedChar = True
      Size = 1
    end
  end
  object qFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO, NOME'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 904
    Top = 176
    object qFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qFornecedorNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object qMaterial: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT P.ID, P.NOME, P.REFERENCIA, P.PRECO_CUSTO PRECO_CUSTO_MAT' +
        ', P.usa_preco_cor, C.preco_custo PRECO_CUSTO_COR, P.PRECO_VENDA,' +
        ' P.TIPO_REG,'
      'PRECO_CUSTO_TOTAL'
      'FROM PRODUTO P'
      'LEFT JOIN produto_comb C'
      'ON P.id = C.id'
      'WHERE P.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 864
    Top = 216
    object qMaterialID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qMaterialNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object qMaterialREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object qMaterialPRECO_CUSTO_MAT: TFloatField
      FieldName = 'PRECO_CUSTO_MAT'
    end
    object qMaterialUSA_PRECO_COR: TStringField
      FieldName = 'USA_PRECO_COR'
      FixedChar = True
      Size = 1
    end
    object qMaterialPRECO_CUSTO_COR: TFloatField
      FieldName = 'PRECO_CUSTO_COR'
    end
    object qMaterialPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object qMaterialTIPO_REG: TStringField
      FieldName = 'TIPO_REG'
      FixedChar = True
      Size = 1
    end
    object qMaterialPRECO_CUSTO_TOTAL: TFloatField
      FieldName = 'PRECO_CUSTO_TOTAL'
    end
  end
  object qNCM: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT ID, NCM'
      'FROM TAB_NCM'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 904
    Top = 128
    object qNCMID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qNCMNCM: TStringField
      FieldName = 'NCM'
      Size = 10
    end
  end
  object sdsLinha: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, CODIGO, NOME, UNIDADE, ID_NCM'#13#10'FROM LINHA'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 471
  end
  object dspLinha: TDataSetProvider
    DataSet = sdsLinha
    Left = 240
    Top = 471
  end
  object cdsLinha: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspLinha'
    Left = 272
    Top = 471
    object cdsLinhaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsLinhaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object cdsLinhaNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsLinhaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsLinhaID_NCM: TIntegerField
      FieldName = 'ID_NCM'
    end
  end
  object dsLinha: TDataSource
    DataSet = cdsLinha
    Left = 304
    Top = 471
  end
  object qParametros_Est: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_EST')
    SQLConnection = dmDatabase.scoDados
    Left = 960
    Top = 336
    object qParametros_EstID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_EstGERAR_LOTE_AUT: TStringField
      FieldName = 'GERAR_LOTE_AUT'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_NFe: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT ID, USA_OPCAO_IMP_COD_CLI, GRAVAR_TAB_TAMANHO'
      'FROM PARAMETROS_NFE')
    SQLConnection = dmDatabase.scoDados
    Left = 976
    Top = 280
    object qParametros_NFeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField
      FieldName = 'USA_OPCAO_IMP_COD_CLI'
      FixedChar = True
      Size = 1
    end
    object qParametros_NFeGRAVAR_TAB_TAMANHO: TStringField
      FieldName = 'GRAVAR_TAB_TAMANHO'
      FixedChar = True
      Size = 1
    end
  end
  object qParametros_Prod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_PROD')
    SQLConnection = dmDatabase.scoDados
    Left = 1000
    Top = 152
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
  object qParametros_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_GERAL')
    SQLConnection = dmDatabase.scoDados
    Left = 848
    Top = 440
    object qParametros_GeralID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParametros_GeralEMPRESA_VAREJO: TStringField
      FieldName = 'EMPRESA_VAREJO'
      FixedChar = True
      Size = 1
    end
  end
  object sdsProdutoGerador: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT * FROM PRODUTO_GERADOR'
    DataSource = dsmProduto
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 50
    Top = 112
    object sdsProdutoGeradorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsProdutoGeradorID_MOTADORA: TIntegerField
      FieldName = 'ID_MOTADORA'
    end
    object sdsProdutoGeradorID_FABRICANTE_MOTOR: TIntegerField
      FieldName = 'ID_FABRICANTE_MOTOR'
    end
    object sdsProdutoGeradorMODELO: TStringField
      FieldName = 'MODELO'
      Size = 30
    end
    object sdsProdutoGeradorNRO_SERIE: TStringField
      FieldName = 'NRO_SERIE'
      Size = 30
    end
    object sdsProdutoGeradorPOTENCIA: TStringField
      FieldName = 'POTENCIA'
    end
    object sdsProdutoGeradorANO_FABR: TSmallintField
      FieldName = 'ANO_FABR'
    end
    object sdsProdutoGeradorNRO_SERIE_EQUIP: TStringField
      FieldName = 'NRO_SERIE_EQUIP'
      Size = 30
    end
    object sdsProdutoGeradorID_FABRICANTE_GERADOR: TIntegerField
      FieldName = 'ID_FABRICANTE_GERADOR'
    end
    object sdsProdutoGeradorMODELO_GERADOR: TStringField
      FieldName = 'MODELO_GERADOR'
      Size = 30
    end
    object sdsProdutoGeradorNRO_SERIE_GERADOR: TStringField
      FieldName = 'NRO_SERIE_GERADOR'
      Size = 30
    end
    object sdsProdutoGeradorMODELO_USCA: TStringField
      FieldName = 'MODELO_USCA'
    end
    object sdsProdutoGeradorTENSAO: TStringField
      FieldName = 'TENSAO'
      Size = 10
    end
  end
  object dsmProduto: TDataSource
    DataSet = sdsProduto
    Left = 16
    Top = 64
  end
  object cdsProdutoGerador: TClientDataSet
    Aggregates = <>
    DataSetField = cdsProdutosdsProdutoGerador
    Params = <>
    Left = 114
    Top = 112
    object cdsProdutoGeradorID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    Left = 146
    Top = 112
  end
  object sdsMarca_Montadora: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM MARCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 191
  end
  object dspMarca_Montadora: TDataSetProvider
    DataSet = sdsMarca_Montadora
    Left = 80
    Top = 191
  end
  object cdsMarca_Montadora: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspMarca_Montadora'
    Left = 112
    Top = 191
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
    Left = 144
    Top = 191
  end
  object sdsFabricanteMotor: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM MARCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 239
  end
  object dspFabricanteMotor: TDataSetProvider
    DataSet = sdsFabricanteMotor
    Left = 80
    Top = 239
  end
  object cdsFabricanteMotor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFabricanteMotor'
    Left = 112
    Top = 239
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
    Left = 144
    Top = 239
  end
  object sdsFabircanteGerador: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME FROM MARCA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 287
  end
  object dspFabircanteGerador: TDataSetProvider
    DataSet = sdsFabircanteGerador
    Left = 80
    Top = 287
  end
  object cdsFabircanteGerador: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFabircanteGerador'
    Left = 112
    Top = 287
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object StringField2: TStringField
      FieldName = 'NOME'
      Size = 40
    end
  end
  object dsFabircanteGerador: TDataSource
    DataSet = cdsFabircanteGerador
    Left = 144
    Top = 287
  end
end
