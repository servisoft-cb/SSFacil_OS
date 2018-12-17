object DMAprova_Orc: TDMAprova_Orc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 313
  Top = 116
  Height = 363
  Width = 588
  object sdsOrdemServico_Aprov: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT E.*'#13#10'FROM ORDEMSERVICO_APROV E'#13#10'WHERE E.ID = :ID'#13#10'   AND ' +
      'E.ITEM = :ITEM'
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
    Left = 64
    Top = 40
    object sdsOrdemServico_AprovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_AprovITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsOrdemServico_AprovDATA: TDateField
      FieldName = 'DATA'
    end
    object sdsOrdemServico_AprovHORA: TTimeField
      FieldName = 'HORA'
    end
    object sdsOrdemServico_AprovUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsOrdemServico_AprovOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_AprovTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object sdsOrdemServico_AprovID_MOTIVO: TIntegerField
      FieldName = 'ID_MOTIVO'
    end
  end
  object dspOrdemServico_Aprov: TDataSetProvider
    DataSet = sdsOrdemServico_Aprov
    UpdateMode = upWhereKeyOnly
    Left = 120
    Top = 40
  end
  object cdsOrdemServico_Aprov: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspOrdemServico_Aprov'
    OnNewRecord = cdsOrdemServico_AprovNewRecord
    Left = 176
    Top = 40
    object cdsOrdemServico_AprovID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_AprovITEM: TIntegerField
      FieldName = 'ITEM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsOrdemServico_AprovDATA: TDateField
      FieldName = 'DATA'
    end
    object cdsOrdemServico_AprovHORA: TTimeField
      FieldName = 'HORA'
    end
    object cdsOrdemServico_AprovUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsOrdemServico_AprovOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_AprovTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object cdsOrdemServico_AprovID_MOTIVO: TIntegerField
      FieldName = 'ID_MOTIVO'
    end
  end
  object dsOrdemServico_Aprov: TDataSource
    DataSet = cdsOrdemServico_Aprov
    Left = 216
    Top = 40
  end
  object sdsMotivo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MOTIVO'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 288
    Top = 212
  end
  object dspMotivo: TDataSetProvider
    DataSet = sdsMotivo
    Left = 344
    Top = 212
  end
  object cdsMotivo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspMotivo'
    Left = 416
    Top = 212
    object cdsMotivoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsMotivoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dsMotivo: TDataSource
    DataSet = cdsMotivo
    Left = 480
    Top = 212
  end
end
