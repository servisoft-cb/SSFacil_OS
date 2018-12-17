object DMCadEnsaio: TDMCadEnsaio
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 295
  Top = 220
  Height = 328
  Width = 777
  object sdsEnsaio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ENSAIO_OS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 32
    object sdsEnsaioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsEnsaioNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsEnsaioINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dspEnsaio: TDataSetProvider
    DataSet = sdsEnsaio
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspEnsaioUpdateError
    Left = 168
    Top = 32
  end
  object cdsEnsaio: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspEnsaio'
    OnNewRecord = cdsEnsaioNewRecord
    Left = 240
    Top = 32
    object cdsEnsaioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEnsaioNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsEnsaioINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
  end
  object dsEnsaio: TDataSource
    DataSet = cdsEnsaio
    Left = 304
    Top = 32
  end
end
