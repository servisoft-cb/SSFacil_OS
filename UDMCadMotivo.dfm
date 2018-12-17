object DMCadMotivo: TDMCadMotivo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 295
  Top = 220
  Height = 328
  Width = 777
  object sdsMotivo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM MOTIVO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 32
    object sdsMotivoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsMotivoNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspMotivo: TDataSetProvider
    DataSet = sdsMotivo
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspMotivoUpdateError
    Left = 168
    Top = 32
  end
  object cdsMotivo: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspMotivo'
    Left = 240
    Top = 32
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
    Left = 304
    Top = 32
  end
end
