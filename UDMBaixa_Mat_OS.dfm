object DMBaixa_Mat_OS: TDMBaixa_Mat_OS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 373
  Top = 202
  Height = 399
  Width = 666
  object sdsBaixa_Mat_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT B.*'#13#10'FROM BAIXA_MAT_OS B'#13#10'WHERE B.ID = :ID'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 28
    object sdsBaixa_Mat_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBaixa_Mat_OSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object sdsBaixa_Mat_OSITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
    end
    object sdsBaixa_Mat_OSITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
    end
    object sdsBaixa_Mat_OSID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsBaixa_Mat_OSQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsBaixa_Mat_OSID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsBaixa_Mat_OSDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsBaixa_Mat_OSHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsBaixa_Mat_OSID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dspBaixa_Mat_OS: TDataSetProvider
    DataSet = sdsBaixa_Mat_OS
    OnUpdateError = dspBaixa_Mat_OSUpdateError
    Left = 88
    Top = 28
  end
  object cdsBaixa_Mat_OS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspBaixa_Mat_OS'
    Left = 120
    Top = 28
    object cdsBaixa_Mat_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBaixa_Mat_OSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsBaixa_Mat_OSITEM_OS: TIntegerField
      FieldName = 'ITEM_OS'
    end
    object cdsBaixa_Mat_OSITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
    end
    object cdsBaixa_Mat_OSID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsBaixa_Mat_OSQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsBaixa_Mat_OSID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsBaixa_Mat_OSDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsBaixa_Mat_OSHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsBaixa_Mat_OSID_MOVESTOQUE: TIntegerField
      FieldName = 'ID_MOVESTOQUE'
    end
  end
  object dsBaixa_Mat_OS: TDataSource
    DataSet = cdsBaixa_Mat_OS
    Left = 152
    Top = 28
  end
  object qFuncionario: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_CARTAO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM FUNCIONARIO'
      'WHERE INATIVO = '#39'N'#39
      '  AND NUM_CARTAO = :NUM_CARTAO')
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 32
    object qFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qFuncionarioBAIXA_OS_MANUAL: TStringField
      FieldName = 'BAIXA_OS_MANUAL'
      FixedChar = True
      Size = 1
    end
    object qFuncionarioNUM_CARTAO: TIntegerField
      FieldName = 'NUM_CARTAO'
    end
  end
  object sdsOrdemServico_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OSM.*, P.nome, P.referencia, P.unidade, P.preco_custo,'#13#10'C' +
      'OALESCE(OSM.qtd,0) - COALESCE(OSM.qtd_estoque,0) QTD_ESTOQUE_PEN' +
      'D,'#13#10'O.filial, CASE'#13#10'  WHEN OSM.TIPO = '#39'N'#39' THEN '#39'NOVO'#39#13#10'  WHEN OS' +
      'M.TIPO = '#39'S'#39' THEN '#39'CONSUMO INICIAL'#39#13#10'  WHEN OSM.TIPO = '#39'X'#39' THEN ' +
      #39'N'#195'O UTILIZADO'#39#13#10'  END DESC_TIPO'#13#10'FROM ORDEMSERVICO_MAT OSM'#13#10'INN' +
      'ER JOIN ORDEMSERVICO O'#13#10'ON OSM.ID = O.ID'#13#10'INNER JOIN PRODUTO P'#13#10 +
      'ON OSM.id_produto = P.ID'#13#10'where OSM.id = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 92
    object sdsOrdemServico_MatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOrdemServico_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsOrdemServico_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
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
    object sdsOrdemServico_MatNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsOrdemServico_MatQTD_ESTOQUE_PEND: TFloatField
      FieldName = 'QTD_ESTOQUE_PEND'
    end
    object sdsOrdemServico_MatREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsOrdemServico_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object sdsOrdemServico_MatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsOrdemServico_MatFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object sdsOrdemServico_MatTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsOrdemServico_MatDESC_TIPO: TStringField
      FieldName = 'DESC_TIPO'
      FixedChar = True
      Size = 15
    end
    object sdsOrdemServico_MatDTTIPO: TDateField
      FieldName = 'DTTIPO'
    end
    object sdsOrdemServico_MatUSUARIO_TIPO: TStringField
      FieldName = 'USUARIO_TIPO'
      Size = 15
    end
  end
  object dspOrdemServico_Mat: TDataSetProvider
    DataSet = sdsOrdemServico_Mat
    OnUpdateError = dspOrdemServico_MatUpdateError
    Left = 88
    Top = 92
  end
  object cdsOrdemServico_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM_MAT'
    Params = <>
    ProviderName = 'dspOrdemServico_Mat'
    Left = 120
    Top = 92
    object cdsOrdemServico_MatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrdemServico_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrdemServico_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object cdsOrdemServico_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOrdemServico_MatQTD: TFloatField
      FieldName = 'QTD'
      DisplayFormat = '0.000###'
    end
    object cdsOrdemServico_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOrdemServico_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
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
    object cdsOrdemServico_MatQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
      DisplayFormat = '0.000###'
    end
    object cdsOrdemServico_MatNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object cdsOrdemServico_MatQTD_ESTOQUE_PEND: TFloatField
      FieldName = 'QTD_ESTOQUE_PEND'
      DisplayFormat = '0.000###'
    end
    object cdsOrdemServico_MatREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object cdsOrdemServico_MatUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object cdsOrdemServico_MatPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsOrdemServico_MatFILIAL: TIntegerField
      FieldName = 'FILIAL'
    end
    object cdsOrdemServico_MatTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsOrdemServico_MatDESC_TIPO: TStringField
      FieldName = 'DESC_TIPO'
      FixedChar = True
      Size = 15
    end
    object cdsOrdemServico_MatDTTIPO: TDateField
      FieldName = 'DTTIPO'
    end
    object cdsOrdemServico_MatUSUARIO_TIPO: TStringField
      FieldName = 'USUARIO_TIPO'
      Size = 15
    end
  end
  object dsOrdemServico_Mat: TDataSource
    DataSet = cdsOrdemServico_Mat
    Left = 152
    Top = 92
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
      'SELECT O.ID, O.num_os'
      'FROM ORDEMSERVICO O'
      'WHERE O.NUM_OS = :NUM_OS')
    SQLConnection = dmDatabase.scoDados
    Left = 384
    Top = 96
    object qOSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qOSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
  end
  object qVer_Enc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT E.processo, E.material, E.dtprocesso, E.dtmaterial, e.hrp' +
        'rocesso, e.hrmaterial'
      'FROM ordemservico_enc E'
      'WHERE E.ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 296
    Top = 136
    object qVer_EncPROCESSO: TStringField
      FieldName = 'PROCESSO'
      FixedChar = True
      Size = 1
    end
    object qVer_EncMATERIAL: TStringField
      FieldName = 'MATERIAL'
      FixedChar = True
      Size = 1
    end
    object qVer_EncDTPROCESSO: TDateField
      FieldName = 'DTPROCESSO'
    end
    object qVer_EncDTMATERIAL: TDateField
      FieldName = 'DTMATERIAL'
    end
    object qVer_EncHRPROCESSO: TTimeField
      FieldName = 'HRPROCESSO'
    end
    object qVer_EncHRMATERIAL: TTimeField
      FieldName = 'HRMATERIAL'
    end
  end
  object sdsOS_Mat: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT M.*'#13#10'FROM ORDEMSERVICO_MAT M'#13#10'WHERE M.id = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 196
    object sdsOS_MatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOS_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsOS_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object sdsOS_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object sdsOS_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOS_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsOS_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsOS_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsOS_MatQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object sdsOS_MatFATURAR: TStringField
      FieldName = 'FATURAR'
      FixedChar = True
      Size = 1
    end
    object sdsOS_MatQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object sdsOS_MatQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
    end
    object sdsOS_MatTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsOS_MatDTTIPO: TDateField
      FieldName = 'DTTIPO'
    end
    object sdsOS_MatUSUARIO_TIPO: TStringField
      FieldName = 'USUARIO_TIPO'
      Size = 15
    end
  end
  object dspOS_Mat: TDataSetProvider
    DataSet = sdsOS_Mat
    OnUpdateError = dspOrdemServico_MatUpdateError
    Left = 96
    Top = 196
  end
  object cdsOS_Mat: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;ITEM_MAT'
    Params = <>
    ProviderName = 'dspOS_Mat'
    Left = 128
    Top = 196
    object cdsOS_MatID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOS_MatITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOS_MatITEM_MAT: TIntegerField
      FieldName = 'ITEM_MAT'
      Required = True
    end
    object cdsOS_MatID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsOS_MatQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOS_MatVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsOS_MatVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsOS_MatQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOS_MatQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOS_MatFATURAR: TStringField
      FieldName = 'FATURAR'
      FixedChar = True
      Size = 1
    end
    object cdsOS_MatQTD_AFATURAR: TFloatField
      FieldName = 'QTD_AFATURAR'
    end
    object cdsOS_MatQTD_ESTOQUE: TFloatField
      FieldName = 'QTD_ESTOQUE'
    end
    object cdsOS_MatTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsOS_MatDTTIPO: TDateField
      FieldName = 'DTTIPO'
    end
    object cdsOS_MatUSUARIO_TIPO: TStringField
      FieldName = 'USUARIO_TIPO'
      Size = 15
    end
  end
  object dsOS_Mat: TDataSource
    DataSet = cdsOS_Mat
    Left = 160
    Top = 196
  end
  object sdsProduto: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM PRODUTO'#13#10'WHERE INATIVO = '#39'N'#39#13#10'  and TIPO_REG = '#39'M' +
      #39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 320
    Top = 233
    object sdsProdutoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsProdutoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object sdsProdutoNOME: TStringField
      FieldName = 'NOME'
      Size = 100
    end
    object sdsProdutoINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object sdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object sdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
  object dspProduto: TDataSetProvider
    DataSet = sdsProduto
    Left = 360
    Top = 233
  end
  object cdsProduto: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspProduto'
    Left = 392
    Top = 233
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
    object cdsProdutoPRECO_CUSTO: TFloatField
      FieldName = 'PRECO_CUSTO'
    end
    object cdsProdutoPRECO_VENDA: TFloatField
      FieldName = 'PRECO_VENDA'
    end
    object cdsProdutoCOD_BARRA: TStringField
      FieldName = 'COD_BARRA'
      Size = 14
    end
  end
  object dsProduto: TDataSource
    DataSet = cdsProduto
    Left = 432
    Top = 233
  end
end
