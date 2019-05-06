object DMSel_Setor_Proc: TDMSel_Setor_Proc
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 360
  Top = 211
  Height = 378
  Width = 611
  object sdsSetor_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT S.ID, S.NOME NOME_SETOR, SP.item, SP.ordem, SP.id_process' +
      'o, SP.vlr_hora,S.ORDEM_ORC,'#13#10'P.NOME NOME_PROCESSO, SP.UNIDADE'#13#10'F' +
      'ROM SETOR S'#13#10'INNER JOIN SETOR_PROC SP ON (S.ID = SP.ID)'#13#10'INNER J' +
      'OIN PROCESSO P ON (SP.ID_PROCESSO = P.ID)'#13#10'WHERE S.MOSTRAR_ORC =' +
      ' '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 192
    Top = 24
  end
  object cdsSetor_Proc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORDEM_ORC;NOME_SETOR;NOME_PROCESSO'
    Params = <>
    ProviderName = 'dspSetor_Proc'
    Left = 256
    Top = 24
    object cdsSetor_ProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsSetor_ProcNOME_SETOR: TStringField
      FieldName = 'NOME_SETOR'
    end
    object cdsSetor_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsSetor_ProcORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsSetor_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsSetor_ProcVLR_HORA: TFloatField
      FieldName = 'VLR_HORA'
    end
    object cdsSetor_ProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsSetor_ProcORDEM_ORC: TIntegerField
      FieldName = 'ORDEM_ORC'
    end
    object cdsSetor_ProcUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dspSetor_Proc: TDataSetProvider
    DataSet = sdsSetor_Proc
    Left = 224
    Top = 24
  end
  object dsSetor_Proc: TDataSource
    DataSet = cdsSetor_Proc
    Left = 288
    Top = 24
  end
  object mAuxiliar: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID_SETOR'
        DataType = ftInteger
      end
      item
        Name = 'NOME_SETOR'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ITEM'
        DataType = ftInteger
      end
      item
        Name = 'ORDEM'
        DataType = ftInteger
      end
      item
        Name = 'ID_PROCESSO'
        DataType = ftInteger
      end
      item
        Name = 'VLR_HORA'
        DataType = ftFloat
      end
      item
        Name = 'NOME_PROCESSO'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Selecionado'
        DataType = ftBoolean
      end
      item
        Name = 'Total_Hora'
        DataType = ftFloat
      end
      item
        Name = 'Vlr_Hora_Ori'
        DataType = ftFloat
      end
      item
        Name = 'Selecionado_Ori'
        DataType = ftBoolean
      end
      item
        Name = 'Descricao'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'Flag'
        DataType = ftInteger
      end
      item
        Name = 'ID_Ensaio'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Ensaio'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ID_Funcionario'
        DataType = ftInteger
      end
      item
        Name = 'Nome_Funcionario'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Funcao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'UNIDADE'
        DataType = ftString
        Size = 6
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 240
    Top = 120
    Data = {
      D00100009619E0BD010000001800000013000000000003000000D0010849445F
      5345544F5204000100000000000A4E4F4D455F5345544F520100490000000100
      055749445448020002003C00044954454D0400010000000000054F5244454D04
      000100000000000B49445F50524F434553534F040001000000000008564C525F
      484F524108000400000000000D4E4F4D455F50524F434553534F010049000000
      0100055749445448020002003C000B53656C6563696F6E61646F020003000000
      00000A546F74616C5F486F726108000400000000000C566C725F486F72615F4F
      726908000400000000000F53656C6563696F6E61646F5F4F7269020003000000
      00000944657363726963616F0100490000000100055749445448020002009600
      04466C616704000100000000000949445F456E7361696F04000100000000000B
      4E6F6D655F456E7361696F0100490000000100055749445448020002003C000E
      49445F46756E63696F6E6172696F0400010000000000104E6F6D655F46756E63
      696F6E6172696F0100490000000100055749445448020002003C000646756E63
      616F010049000000010005574944544802000200140007554E49444144450100
      4900000001000557494454480200020006000000}
    object mAuxiliarID_SETOR: TIntegerField
      DisplayLabel = 'ID Setor'
      FieldName = 'ID_SETOR'
    end
    object mAuxiliarNOME_SETOR: TStringField
      DisplayLabel = 'Nome Setor'
      FieldName = 'NOME_SETOR'
      Size = 60
    end
    object mAuxiliarITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
    end
    object mAuxiliarORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
    end
    object mAuxiliarID_PROCESSO: TIntegerField
      DisplayLabel = 'ID Processo'
      FieldName = 'ID_PROCESSO'
    end
    object mAuxiliarVLR_HORA: TFloatField
      DisplayLabel = 'Vlr. Hora'
      FieldName = 'VLR_HORA'
      DisplayFormat = '0.00#'
    end
    object mAuxiliarNOME_PROCESSO: TStringField
      DisplayLabel = 'Nome Processo'
      FieldName = 'NOME_PROCESSO'
      Size = 60
    end
    object mAuxiliarSelecionado: TBooleanField
      FieldName = 'Selecionado'
    end
    object mAuxiliarTotal_Hora: TFloatField
      DisplayLabel = 'Total Hora'
      FieldName = 'Total_Hora'
    end
    object mAuxiliarVlr_Hora_Ori: TFloatField
      FieldName = 'Vlr_Hora_Ori'
    end
    object mAuxiliarSelecionado_Ori: TBooleanField
      FieldName = 'Selecionado_Ori'
    end
    object mAuxiliarDescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'Descricao'
      Size = 150
    end
    object mAuxiliarFlag: TIntegerField
      FieldName = 'Flag'
    end
    object mAuxiliarID_Ensaio: TIntegerField
      FieldName = 'ID_Ensaio'
    end
    object mAuxiliarNome_Ensaio: TStringField
      FieldName = 'Nome_Ensaio'
      Size = 60
    end
    object mAuxiliarID_Funcionario: TIntegerField
      FieldName = 'ID_Funcionario'
    end
    object mAuxiliarNome_Funcionario: TStringField
      FieldName = 'Nome_Funcionario'
      Size = 60
    end
    object mAuxiliarFuncao: TStringField
      FieldName = 'Funcao'
    end
    object mAuxiliarUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsmAuxiliar: TDataSource
    DataSet = mAuxiliar
    Left = 288
    Top = 120
  end
  object sdsEnsaio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT E.ID, E.NOME'#13#10'FROM ENSAIO_OS E'#13#10'WHERE INATIVO = '#39'N'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 192
    Top = 192
  end
  object cdsEnsaio: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspEnsaio'
    Left = 256
    Top = 192
    object cdsEnsaioID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsEnsaioNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
  end
  object dspEnsaio: TDataSetProvider
    DataSet = sdsEnsaio
    Left = 224
    Top = 192
  end
  object dsEnsaio: TDataSource
    DataSet = cdsEnsaio
    Left = 288
    Top = 192
  end
  object sdsFuncionario: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT F.CODIGO, F.NOME, F.FUNCAO'#13#10'FROM FUNCIONARIO F'#13#10'WHERE F.I' +
      'NATIVO = '#39'N'#39#13#10'  AND F.MOSTRAR_ORC = '#39'S'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 192
    Top = 248
  end
  object cdsFuncionario: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspFuncionario'
    Left = 256
    Top = 248
    object cdsFuncionarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsFuncionarioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsFuncionarioFUNCAO: TStringField
      FieldName = 'FUNCAO'
    end
  end
  object dspFuncionario: TDataSetProvider
    DataSet = sdsFuncionario
    Left = 224
    Top = 248
  end
  object dsFuncionario: TDataSource
    DataSet = cdsFuncionario
    Left = 288
    Top = 248
  end
end
