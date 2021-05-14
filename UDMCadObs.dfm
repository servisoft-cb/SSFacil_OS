object DMCadObs: TDMCadObs
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 295
  Top = 220
  Height = 328
  Width = 777
  object sdsObs_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM OBS_OS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 94
    Top = 31
    object sdsObs_OSID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsObs_OSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsObs_OSOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
  end
  object dspObs_OS: TDataSetProvider
    DataSet = sdsObs_OS
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspObs_OSUpdateError
    Left = 168
    Top = 32
  end
  object cdsObs_OS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspObs_OS'
    Left = 240
    Top = 32
    object cdsObs_OSID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object dsObs_OS: TDataSource
    DataSet = cdsObs_OS
    Left = 304
    Top = 32
  end
end
