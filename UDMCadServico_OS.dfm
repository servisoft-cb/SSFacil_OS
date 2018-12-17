object DMCadServico_OS: TDMCadServico_OS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 295
  Top = 220
  Height = 328
  Width = 777
  object sdsServico_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM SERVICO_OS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 32
    object sdsServico_OSID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsServico_OSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object sdsServico_OSVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
    end
    object sdsServico_OSINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsServico_OSTERCEIRO: TStringField
      FieldName = 'TERCEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object dspServico_OS: TDataSetProvider
    DataSet = sdsServico_OS
    UpdateMode = upWhereKeyOnly
    OnUpdateError = dspServico_OSUpdateError
    Left = 168
    Top = 32
  end
  object cdsServico_OS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspServico_OS'
    OnNewRecord = cdsServico_OSNewRecord
    Left = 240
    Top = 32
    object cdsServico_OSID: TIntegerField
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsServico_OSNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsServico_OSVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
      DisplayFormat = '0.00'
    end
    object cdsServico_OSINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsServico_OSTERCEIRO: TStringField
      FieldName = 'TERCEIRO'
      FixedChar = True
      Size = 1
    end
  end
  object dsServico_OS: TDataSource
    DataSet = cdsServico_OS
    Left = 304
    Top = 32
  end
end
