object DMCadParada: TDMCadParada
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 295
  Top = 220
  Height = 328
  Width = 777
  object sdsParada: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PARADA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 32
    object sdsParadaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsParadaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dspParada: TDataSetProvider
    DataSet = sdsParada
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspParadaUpdateError
    Left = 168
    Top = 32
  end
  object cdsParada: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspParada'
    Left = 240
    Top = 32
    object cdsParadaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsParadaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object dsParada: TDataSource
    DataSet = cdsParada
    Left = 304
    Top = 32
  end
end
