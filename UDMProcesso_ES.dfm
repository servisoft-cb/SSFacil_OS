object DMProcesso_ES: TDMProcesso_ES
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 392
  Top = 164
  Height = 478
  Width = 666
  object qOS_Proc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PROC'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'SELECT OSP.*, O.num_os, P.nome NOME_PROCESSO, IT.qtd QTD_ITEM, I' +
        'T.nome_produto,'
      
        '(select osp2.qtd_concluido qtd_concluido_ant from ordemservico_p' +
        'roc osp2'
      '   where osp2.id = osp.id and osp2.ordem = osp.ordem - 1)'
      'FROM ORDEMSERVICO_PROC OSP'
      'INNER JOIN ordemservico O'
      'ON OSP.id = O.ID'
      'INNER JOIN PROCESSO P'
      'ON OSP.id_processo = P.id'
      'INNER JOIN ORDEMSERVICO_ITENS IT'
      'ON OSP.ID = IT.ID'
      'AND OSP.ITEM = IT.ITEM'
      'where o.num_os = :NUM_OS'
      '  AND OSP.item_proc = :ITEM_PROC')
    SQLConnection = dmDatabase.scoDados
    Left = 511
    Top = 64
    object qOS_ProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qOS_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object qOS_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      Required = True
    end
    object qOS_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object qOS_ProcQTD_HORAS: TFloatField
      FieldName = 'QTD_HORAS'
    end
    object qOS_ProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object qOS_ProcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object qOS_ProcID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object qOS_ProcDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object qOS_ProcDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object qOS_ProcNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object qOS_ProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object qOS_ProcNOME_PRODUTO: TStringField
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object qOS_ProcHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object qOS_ProcHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object qOS_ProcORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object qOS_ProcSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qOS_ProcQTD: TFloatField
      FieldName = 'QTD'
    end
    object qOS_ProcQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object qOS_ProcQTD_CONCLUIDO: TFloatField
      FieldName = 'QTD_CONCLUIDO'
    end
    object qOS_ProcQTD_CONCLUIDO_ANT: TFloatField
      FieldName = 'QTD_CONCLUIDO_ANT'
    end
    object qOS_ProcQTD_ITEM: TFloatField
      FieldName = 'QTD_ITEM'
    end
  end
  object sdsBaixa_OS: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT B.*'#13#10'FROM BAIXA_OS B'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 28
    object sdsBaixa_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBaixa_OSDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsBaixa_OSHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsBaixa_OSDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object sdsBaixa_OSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object sdsBaixa_OSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object sdsBaixa_OSITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
    object sdsBaixa_OSID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object sdsBaixa_OSID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsBaixa_OSID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object sdsBaixa_OSHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object sdsBaixa_OSORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object sdsBaixa_OSTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object sdsBaixa_OSTIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      FixedChar = True
      Size = 1
    end
    object sdsBaixa_OSOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsBaixa_OSRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object sdsBaixa_OSQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dspBaixa_OS: TDataSetProvider
    DataSet = sdsBaixa_OS
    OnUpdateError = dspBaixa_OSUpdateError
    Left = 88
    Top = 28
  end
  object cdsBaixa_OS: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID'
    Params = <>
    ProviderName = 'dspBaixa_OS'
    BeforePost = cdsBaixa_OSBeforePost
    OnNewRecord = cdsBaixa_OSNewRecord
    Left = 120
    Top = 28
    object cdsBaixa_OSID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBaixa_OSDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsBaixa_OSHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsBaixa_OSDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object cdsBaixa_OSID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsBaixa_OSNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsBaixa_OSITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
    object cdsBaixa_OSID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object cdsBaixa_OSID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsBaixa_OSID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object cdsBaixa_OSHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object cdsBaixa_OSORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsBaixa_OSTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object cdsBaixa_OSTIPO_BAIXA: TStringField
      FieldName = 'TIPO_BAIXA'
      FixedChar = True
      Size = 1
    end
    object cdsBaixa_OSOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsBaixa_OSRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object cdsBaixa_OSQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object dsBaixa_OS: TDataSource
    DataSet = cdsBaixa_OS
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
    Top = 72
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
  object sdsOrdemServico_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT OSP.*'#13#10'FROM ORDEMSERVICO_PROC OSP'#13#10'where osp.id = :ID'#13#10'  ' +
      'AND OSP.item_proc = :ITEM_PROC'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PROC'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 92
    object sdsOrdemServico_ProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsOrdemServico_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsOrdemServico_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      Required = True
    end
    object sdsOrdemServico_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object sdsOrdemServico_ProcQTD_HORAS: TFloatField
      FieldName = 'QTD_HORAS'
    end
    object sdsOrdemServico_ProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object sdsOrdemServico_ProcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsOrdemServico_ProcID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object sdsOrdemServico_ProcDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object sdsOrdemServico_ProcDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object sdsOrdemServico_ProcHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object sdsOrdemServico_ProcHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object sdsOrdemServico_ProcORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object sdsOrdemServico_ProcSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object sdsOrdemServico_ProcQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsOrdemServico_ProcQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object sdsOrdemServico_ProcQTD_CONCLUIDO: TFloatField
      FieldName = 'QTD_CONCLUIDO'
    end
  end
  object dspOrdemServico_Proc: TDataSetProvider
    DataSet = sdsOrdemServico_Proc
    OnUpdateError = dspOrdemServico_ProcUpdateError
    Left = 88
    Top = 92
  end
  object cdsOrdemServico_Proc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM_PROC'
    Params = <>
    ProviderName = 'dspOrdemServico_Proc'
    Left = 120
    Top = 92
    object cdsOrdemServico_ProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrdemServico_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrdemServico_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      Required = True
    end
    object cdsOrdemServico_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsOrdemServico_ProcQTD_HORAS: TFloatField
      FieldName = 'QTD_HORAS'
    end
    object cdsOrdemServico_ProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOrdemServico_ProcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOrdemServico_ProcID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object cdsOrdemServico_ProcDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOrdemServico_ProcDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsOrdemServico_ProcHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsOrdemServico_ProcHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOrdemServico_ProcORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsOrdemServico_ProcSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_ProcQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOrdemServico_ProcQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrdemServico_ProcQTD_CONCLUIDO: TFloatField
      FieldName = 'QTD_CONCLUIDO'
    end
  end
  object dsOrdemServico_Proc: TDataSource
    DataSet = cdsOrdemServico_Proc
    Left = 152
    Top = 92
  end
  object qVerifica_Proc: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT B.*, p.nome nome_processo'
      'FROM BAIXA_OS B'
      'inner join processo p'
      'on b.id_processo = p.id'
      'WHERE B.num_os = :NUM_OS'
      '  AND B.DTENTRADA IS NOT NULL'
      '  AND B.dtsaida IS NULL')
    SQLConnection = dmDatabase.scoDados
    Left = 504
    Top = 136
    object qVerifica_ProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerifica_ProcDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object qVerifica_ProcHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object qVerifica_ProcDTSAIDA: TDateField
      FieldName = 'DTSAIDA'
    end
    object qVerifica_ProcID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object qVerifica_ProcNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object qVerifica_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
    object qVerifica_ProcID_FUNCIONARIO: TIntegerField
      FieldName = 'ID_FUNCIONARIO'
    end
    object qVerifica_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object qVerifica_ProcID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object qVerifica_ProcHRSAIDA: TTimeField
      FieldName = 'HRSAIDA'
    end
    object qVerifica_ProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object qVerifica_ProcQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object sdsBaixa_OS_Pausa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM BAIXA_OS_PAUSA'#13#10'WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 156
    object sdsBaixa_OS_PausaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsBaixa_OS_PausaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsBaixa_OS_PausaID_PARADA: TIntegerField
      FieldName = 'ID_PARADA'
    end
    object sdsBaixa_OS_PausaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object sdsBaixa_OS_PausaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object sdsBaixa_OS_PausaDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object sdsBaixa_OS_PausaHRFINAL: TTimeField
      FieldName = 'HRFINAL'
    end
    object sdsBaixa_OS_PausaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object sdsBaixa_OS_PausaID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object sdsBaixa_OS_PausaORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object sdsBaixa_OS_PausaTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object sdsBaixa_OS_PausaITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
  end
  object dspBaixa_OS_Pausa: TDataSetProvider
    DataSet = sdsBaixa_OS_Pausa
    OnUpdateError = dspOrdemServico_ProcUpdateError
    Left = 88
    Top = 156
  end
  object cdsBaixa_OS_Pausa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    ProviderName = 'dspBaixa_OS_Pausa'
    Left = 120
    Top = 156
    object cdsBaixa_OS_PausaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsBaixa_OS_PausaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsBaixa_OS_PausaID_PARADA: TIntegerField
      FieldName = 'ID_PARADA'
    end
    object cdsBaixa_OS_PausaDTINICIO: TDateField
      FieldName = 'DTINICIO'
    end
    object cdsBaixa_OS_PausaHRINICIO: TTimeField
      FieldName = 'HRINICIO'
    end
    object cdsBaixa_OS_PausaDTFINAL: TDateField
      FieldName = 'DTFINAL'
    end
    object cdsBaixa_OS_PausaHRFINAL: TTimeField
      FieldName = 'HRFINAL'
    end
    object cdsBaixa_OS_PausaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object cdsBaixa_OS_PausaID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object cdsBaixa_OS_PausaORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsBaixa_OS_PausaTOTAL_HORAS: TFloatField
      FieldName = 'TOTAL_HORAS'
    end
    object cdsBaixa_OS_PausaITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
  end
  object dsBaixa_OS_Pausa: TDataSource
    DataSet = cdsBaixa_OS_Pausa
    Left = 152
    Top = 156
  end
  object qParada: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM PARADA'
      'WHERE ID = :ID')
    SQLConnection = dmDatabase.scoDados
    Left = 496
    Top = 208
    object qParadaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qParadaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object qVer: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PROC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PROC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PROC'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PROC'
        ParamType = ptInput
      end>
    SQL.Strings = (
      
        'select aux.*, cast(aux.qtd - coalesce(aux.qtd_concluido,0) as Do' +
        'uble precision) qtd_restante,'
      
        ' cast(coalesce(aux.qtd_Concluida_ant2,0) - coalesce(aux.qtd_ja_c' +
        'oncluida,0) as Double precision) qtd_concluida_ant'
      '    from ('
      
        '    select proc.nome nome_processo, o.id_processo, o.status, o.q' +
        'td, o.ordem, os2.num_os,'
      '    o.item_proc, o.id_servico_os, O.ID, O.retrabalho,'
      
        '    (select CAST(sum(b.qtd) AS double precision) qtd_concluido f' +
        'rom baixa_os b'
      '      where b.num_os = :NUM_OS'
      '        and b.item_proc = :ITEM_PROC'
      '        and b.dtsaida is not null) qtd_concluido,'
      '       b2.qtd qtd_em_Aberto, b2.dtentrada, b2.hrentrada,'
      '    '
      '    (select first 1 b3.qtd from baixa_os b3'
      '      where b3.num_os = :NUM_OS'
      '        and b3.ordem = O.ordem - 1'
      '        and b3.dtsaida is null'
      '        and b3.dtentrada is not null) qtd_ant,'
      '    '
      
        '    (select CAST(sum(b4.qtd) AS DOUBLE PRECISION) from baixa_os ' +
        'b4'
      '      where b4.num_os = :NUM_OS'
      '        and b4.ordem = O.ordem - 1'
      '        and b4.dtsaida is not null'
      '        and b4.dtentrada is not null) qtd_Concluida_ant2,'
      ''
      
        '    (select CAST(sum(b4.qtd) AS DOUBLE PRECISION)  from baixa_os' +
        ' b4'
      '      where b4.num_os = :NUM_OS'
      '        and b4.item_proc = :ITEM_PROC'
      '        and b4.dtsaida is not null'
      '        and b4.dtentrada is not null) qtd_Ja_Concluida'
      ''
      '    from ordemservico_proc o'
      '    inner join ordemservico os2'
      '    on o.id = os2.id'
      '    inner join processo proc'
      '    on o.id_processo = proc.id'
      '    left join baixa_os b2'
      '    on b2.num_os = :NUM_OS'
      '    and b2.item_proc = :ITEM_PROC'
      '    and b2.dtsaida is null'
      '    where os2.num_os = :NUM_OS'
      '      and o.item_proc = :ITEM_PROC) aux')
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 272
    object qVerNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object qVerID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object qVerSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qVerORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object qVerNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object qVerITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      Required = True
    end
    object qVerID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object qVerID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qVerDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object qVerHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object qVerRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object qVerQTD: TFloatField
      FieldName = 'QTD'
    end
    object qVerQTD_CONCLUIDO: TFloatField
      FieldName = 'QTD_CONCLUIDO'
    end
    object qVerQTD_EM_ABERTO: TFloatField
      FieldName = 'QTD_EM_ABERTO'
    end
    object qVerQTD_ANT: TFloatField
      FieldName = 'QTD_ANT'
    end
    object qVerQTD_CONCLUIDA_ANT2: TFloatField
      FieldName = 'QTD_CONCLUIDA_ANT2'
    end
    object qVerQTD_JA_CONCLUIDA: TFloatField
      FieldName = 'QTD_JA_CONCLUIDA'
    end
    object qVerQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object qVerQTD_CONCLUIDA_ANT: TFloatField
      FieldName = 'QTD_CONCLUIDA_ANT'
    end
  end
  object sdsPRC_Atualiza_OS: TSQLDataSet
    CommandText = 'PRC_ATUALIZA_OS'
    CommandType = ctStoredProc
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'P_ID'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 321
    Top = 216
  end
  object qVer_Pausa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID_OS'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ITEM_PROC'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT P.*'
      'FROM BAIXA_OS_PAUSA P'
      'WHERE P.id_os = :ID_OS'
      '  AND P.item_proc = :ITEM_PROC'
      '  AND P.dtfinal IS NULL')
    SQLConnection = dmDatabase.scoDados
    Left = 512
    Top = 320
    object qVer_PausaID_PARADA: TIntegerField
      FieldName = 'ID_PARADA'
    end
    object qVer_PausaOBS: TStringField
      FieldName = 'OBS'
      Size = 250
    end
    object qVer_PausaID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object qVer_PausaITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
    end
  end
  object qProcesso: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select *'
      'from processo'
      'where id = :id')
    SQLConnection = dmDatabase.scoDados
    Left = 416
    Top = 296
    object qProcessoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object qProcessoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
  end
  object mBaixaAux: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'ID'
        DataType = ftInteger
      end
      item
        Name = 'ID_OS'
        DataType = ftInteger
      end
      item
        Name = 'Num_OS'
        DataType = ftInteger
      end
      item
        Name = 'Item_Proc'
        DataType = ftInteger
      end
      item
        Name = 'DtEntrada'
        DataType = ftDate
      end
      item
        Name = 'DtSaida'
        DataType = ftDate
      end
      item
        Name = 'HrEntrada'
        DataType = ftTime
      end
      item
        Name = 'HrSaida'
        DataType = ftTime
      end
      item
        Name = 'ID_Funcionario'
        DataType = ftInteger
      end
      item
        Name = 'ID_Processo'
        DataType = ftInteger
      end
      item
        Name = 'ID_Servico_OS'
        DataType = ftInteger
      end
      item
        Name = 'Ordem'
        DataType = ftInteger
      end
      item
        Name = 'Tipo_Baixa'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Obs'
        DataType = ftString
        Size = 250
      end
      item
        Name = 'Nome_Processo'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Total_Horas'
        DataType = ftFloat
      end
      item
        Name = 'RETRABALHO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Qtd'
        DataType = ftFloat
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 209
    Top = 264
    Data = {
      7F0100009619E0BD0100000018000000120000000000030000007F0102494404
      000100000000000549445F4F530400010000000000064E756D5F4F5304000100
      00000000094974656D5F50726F630400010000000000094474456E7472616461
      040006000000000007447453616964610400060000000000094872456E747261
      64610400070000000000074872536169646104000700000000000E49445F4675
      6E63696F6E6172696F04000100000000000B49445F50726F636573736F040001
      00000000000D49445F5365727669636F5F4F530400010000000000054F726465
      6D04000100000000000A5469706F5F4261697861010049000000010005574944
      5448020002000100034F6273010049000000010005574944544802000200FA00
      0D4E6F6D655F50726F636573736F010049000000010005574944544802000200
      3C000B546F74616C5F486F72617308000400000000000A524554524142414C48
      4F01004900000001000557494454480200020001000351746408000400000000
      000000}
    object mBaixaAuxID: TIntegerField
      FieldName = 'ID'
    end
    object mBaixaAuxID_OS: TIntegerField
      FieldName = 'ID_OS'
    end
    object mBaixaAuxNum_OS: TIntegerField
      FieldName = 'Num_OS'
    end
    object mBaixaAuxItem_Proc: TIntegerField
      FieldName = 'Item_Proc'
    end
    object mBaixaAuxDtEntrada: TDateField
      FieldName = 'DtEntrada'
    end
    object mBaixaAuxDtSaida: TDateField
      FieldName = 'DtSaida'
    end
    object mBaixaAuxHrEntrada: TTimeField
      FieldName = 'HrEntrada'
    end
    object mBaixaAuxHrSaida: TTimeField
      FieldName = 'HrSaida'
    end
    object mBaixaAuxID_Funcionario: TIntegerField
      FieldName = 'ID_Funcionario'
    end
    object mBaixaAuxID_Processo: TIntegerField
      FieldName = 'ID_Processo'
    end
    object mBaixaAuxID_Servico_OS: TIntegerField
      FieldName = 'ID_Servico_OS'
    end
    object mBaixaAuxOrdem: TIntegerField
      FieldName = 'Ordem'
    end
    object mBaixaAuxTipo_Baixa: TStringField
      FieldName = 'Tipo_Baixa'
      Size = 1
    end
    object mBaixaAuxObs: TStringField
      FieldName = 'Obs'
      Size = 250
    end
    object mBaixaAuxNome_Processo: TStringField
      FieldName = 'Nome_Processo'
      Size = 60
    end
    object mBaixaAuxTotal_Horas: TFloatField
      FieldName = 'Total_Horas'
      DisplayFormat = '0.00'
    end
    object mBaixaAuxRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object mBaixaAuxQtd: TFloatField
      FieldName = 'Qtd'
    end
  end
  object dsmBaixaAux: TDataSource
    DataSet = mBaixaAux
    Left = 240
    Top = 264
  end
  object qParametros_Ser: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT *'
      'FROM PARAMETROS_SER')
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 40
    object qParametros_SerCONTROLAR_PROCESSO_ANT: TStringField
      FieldName = 'CONTROLAR_PROCESSO_ANT'
      FixedChar = True
      Size = 1
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
    Left = 80
    Top = 240
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
  object sdsOS_Proc: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT O.*, P.NOME NOME_PROCESSO, S.NOME NOME_SERVICO_OS'#13#10'FROM O' +
      'RDEMSERVICO_PROC O'#13#10'INNER JOIN PROCESSO P'#13#10'ON O.id_processo = P.' +
      'id'#13#10'LEFT JOIN SERVICO_OS S'#13#10'ON O.ID_SERVICO_OS = S.ID'#13#10'WHERE O.N' +
      'UM_OS = :NUM_OS'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'NUM_OS'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 208
    Top = 372
  end
  object dspOS_Proc: TDataSetProvider
    DataSet = sdsOS_Proc
    OnUpdateError = dspOrdemServico_ProcUpdateError
    Left = 240
    Top = 372
  end
  object cdsOS_Proc: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'ORDEM'
    Params = <>
    ProviderName = 'dspOS_Proc'
    Left = 272
    Top = 372
    object cdsOS_ProcID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOS_ProcITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOS_ProcITEM_PROC: TIntegerField
      FieldName = 'ITEM_PROC'
      Required = True
    end
    object cdsOS_ProcID_PROCESSO: TIntegerField
      FieldName = 'ID_PROCESSO'
    end
    object cdsOS_ProcQTD_HORAS: TFloatField
      FieldName = 'QTD_HORAS'
    end
    object cdsOS_ProcDTENTREGA: TDateField
      FieldName = 'DTENTREGA'
    end
    object cdsOS_ProcOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsOS_ProcID_SERVICO_OS: TIntegerField
      FieldName = 'ID_SERVICO_OS'
    end
    object cdsOS_ProcDTCONCLUIDO: TDateField
      FieldName = 'DTCONCLUIDO'
    end
    object cdsOS_ProcDTENTRADA: TDateField
      FieldName = 'DTENTRADA'
    end
    object cdsOS_ProcHRENTRADA: TTimeField
      FieldName = 'HRENTRADA'
    end
    object cdsOS_ProcHRCONCLUIDO: TTimeField
      FieldName = 'HRCONCLUIDO'
    end
    object cdsOS_ProcORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsOS_ProcSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsOS_ProcNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOS_ProcRETRABALHO: TStringField
      FieldName = 'RETRABALHO'
      Size = 1
    end
    object cdsOS_ProcNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      Size = 30
    end
    object cdsOS_ProcNOME_SERVICO_OS: TStringField
      FieldName = 'NOME_SERVICO_OS'
      Size = 50
    end
    object cdsOS_ProcQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsOS_ProcQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOS_ProcQTD_CONCLUIDO: TFloatField
      FieldName = 'QTD_CONCLUIDO'
    end
  end
  object DSOS_Proc: TDataSource
    DataSet = cdsOS_Proc
    Left = 304
    Top = 372
  end
end
