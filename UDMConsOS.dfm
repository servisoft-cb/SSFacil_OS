object DMConsOS: TDMConsOS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 292
  Top = 204
  Height = 419
  Width = 598
  object sdsConsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OPR.ID, OPR.item, OPR.item_proc, OPR.id_processo, OPR.id_' +
      'servico_os,'#13#10'OPR.qtd_horas, OPR.dtentrega, OPR.qtd, OPR.dtentrad' +
      'a, OPR.dtconcluido,'#13#10'OPR.hrentrada, OPR.hrconcluido, OPR.num_os,' +
      ' OPR.ordem, OPR.status,'#13#10'CASE'#13#10'  WHEN OPR.STATUS = '#39'I'#39' THEN '#39'Ini' +
      'ciado'#39#13#10'  WHEN OPR.STATUS = '#39'F'#39' THEN '#39'Finalizado'#39#13#10'  WHEN OPR.ST' +
      'ATUS = '#39'P'#39' THEN '#39'Pausa'#39#13#10'  ELSE '#39#39#13#10'  END DESC_STATUS,'#13#10'P.nome N' +
      'OME_PROCESSO, S.nome NOME_SERVICO, O.dtemissao, CLI.NOME NOME_CL' +
      'IENTE'#13#10'FROM ordemservico_proc OPR'#13#10'INNER JOIN ORDEMSERVICO O'#13#10'ON' +
      ' OPR.ID = O.ID'#13#10'left join processo p'#13#10'on opr.id_processo = p.id'#13 +
      #10'LEFT JOIN servico_os S'#13#10'ON OPR.id_servico_os = S.ID'#13#10'LEFT JOIN ' +
      'PESSOA CLI'#13#10'ON O.ID_CLIENTE = CLI.CODIGO'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 119
    Top = 25
  end
  object dspConsProcesso: TDataSetProvider
    DataSet = sdsConsProcesso
    Left = 172
    Top = 26
  end
  object cdsConsProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsProcesso'
    Left = 222
    Top = 21
    object cdsConsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsProcessoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsProcessoITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      Required = True
    end
    object cdsConsProcessoID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsConsProcessoID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object cdsConsProcessoQTD_HORAS: TFloatField
      FieldName = 'QTD_HORAS'
    end
    object cdsConsProcessoDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsConsProcessoDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsConsProcessoDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsConsProcessoHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsConsProcessoHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsConsProcessoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsConsProcessoORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsConsProcessoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsConsProcessoDESC_STATUS: TStringField
      FieldName = 'DESC_STATUS'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdsConsProcessoNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsConsProcessoNOME_SERVICO: TStringField
      FieldName = 'NOME_SERVICO'
      Size = 50
    end
    object cdsConsProcessoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsConsProcessoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsProcessoQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsConsProcesso: TDataSource
    DataSet = cdsConsProcesso
    Left = 279
    Top = 22
  end
  object sdsProcesso: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT ID, NOME'#13#10'FROM PROCESSO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 343
    Top = 114
  end
  object dspProcesso: TDataSetProvider
    DataSet = sdsProcesso
    Left = 396
    Top = 115
  end
  object cdsProcesso: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProcesso'
    Left = 446
    Top = 113
    object cdsProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object dsProcesso: TDataSource
    DataSet = cdsProcesso
    Left = 503
    Top = 111
  end
  object qCliente: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT CODIGO, NOME, CNPJ_CPF'
      'FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 480
    Top = 288
    object qClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object qClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qClienteCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
  end
end
