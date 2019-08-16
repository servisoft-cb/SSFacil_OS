object DMCanc_OS: TDMCanc_OS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 329
  Top = 182
  Height = 445
  Width = 593
  object sdsOrdemServico_Canc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT *'#13#10'FROM ORDEMSERVICO_CANC'#13#10'WHERE ID = :ID'#13#10'  AND ITEM = :' +
      'ITEM'
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
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 54
    Top = 29
    object sdsOrdemServico_CancID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_CancITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_CancITEM_CANC: TIntegerField
      FieldName = 'ITEM_CANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_CancDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsOrdemServico_CancDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object sdsOrdemServico_CancHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object sdsOrdemServico_CancUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsOrdemServico_CancQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrdemServico_CancMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object sdsOrdemServico_CancQTD_NOTA: TFloatField
      FieldName = 'QTD_NOTA'
    end
    object sdsOrdemServico_CancID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object sdsOrdemServico_CancITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
  end
  object dspOrdemServico_Canc: TDataSetProvider
    DataSet = sdsOrdemServico_Canc
    UpdateMode = upWhereKeyOnly
    Left = 100
    Top = 30
  end
  object cdsOrdemServico_Canc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM;ITEM_CANC'
    Params = <>
    ProviderName = 'dspOrdemServico_Canc'
    Left = 152
    Top = 30
    object cdsOrdemServico_CancID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_CancITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_CancITEM_CANC: TIntegerField
      FieldName = 'ITEM_CANC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_CancDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsOrdemServico_CancDTUSUARIO: TDateField
      FieldName = 'DTUSUARIO'
    end
    object cdsOrdemServico_CancHRUSUARIO: TTimeField
      FieldName = 'HRUSUARIO'
    end
    object cdsOrdemServico_CancUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsOrdemServico_CancQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrdemServico_CancMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Size = 200
    end
    object cdsOrdemServico_CancQTD_NOTA: TFloatField
      FieldName = 'QTD_NOTA'
    end
    object cdsOrdemServico_CancID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object cdsOrdemServico_CancITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
  end
  object dsOrdemServico_Canc: TDataSource
    DataSet = cdsOrdemServico_Canc
    Left = 201
    Top = 30
  end
  object qOSItem: TSQLQuery
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
      end>
    SQL.Strings = (
      
        'SELECT I.ID, I.item, I.qtd, I.qtd_nota, I.qtd_peca_canc, I.qtd_n' +
        'ota_canc,'
      'PITEM.ID ID_PEDIDO, PITEM.ITEM ITEM_PEDIDO, PITEM.qtd_restante,'
      'PITEM.qtd_faturado, PED.num_pedido'
      'FROM ORDEMSERVICO_ITENS I'
      'LEFT JOIN PEDIDO_ITEM PITEM'
      'ON I.ID = PITEM.id_os_serv'
      'LEFT JOIN PEDIDO PED'
      'ON PITEM.ID = PED.ID'
      'WHERE I.ID = :ID'
      '  AND I.ITEM = :ITEM')
    SQLConnection = dmDatabase.scoDados
    Left = 345
    Top = 40
    object qOSItemID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qOSItemITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qOSItemQTD: TFloatField
      FieldName = 'QTD'
    end
    object qOSItemQTD_NOTA: TFloatField
      FieldName = 'QTD_NOTA'
    end
    object qOSItemQTD_PECA_CANC: TFloatField
      FieldName = 'QTD_PECA_CANC'
    end
    object qOSItemQTD_NOTA_CANC: TFloatField
      FieldName = 'QTD_NOTA_CANC'
    end
    object qOSItemID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
    end
    object qOSItemITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
    end
    object qOSItemQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object qOSItemQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object qOSItemNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
  end
end
