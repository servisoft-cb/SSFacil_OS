object DMConsOrdemServico: TDMConsOrdemServico
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 381
  Top = 193
  Height = 397
  Width = 847
  object sdsOrdemServico_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select i2.id, i2.item, i2.qtd QTD_OS, n2.numnota, ip2.id id_pedi' +
      'do, ip2.item item_pedido,'#13#10'in2.id id_nota, P2.num_pedido, P2.ped' +
      'ido_cliente, P2.dtemissao DTPEDIDO,'#13#10'N2.dtemissao DTNOTA, IN2.qt' +
      'd QTD_NOTA, IP2.qtd QTD_PEDIDO, IP2.qtd_restante,'#13#10'cli.nome nome' +
      '_cliente, cli.cnpj_cpf, cli.cidade, cli.uf, O2.num_os, o2.dtemis' +
      'sao data_os,'#13#10'o2.dtrecebimento, o2.dt_agenda, i2.qtd_nota QTD_OS' +
      '_NOTA, N2.dtemissao DTEMISSAO_NOTA,'#13#10'O2.faturado_nota, O2.copiad' +
      'o_pedido, O2.produzido'#13#10'from ordemservico_itens i2'#13#10'inner join o' +
      'rdemservico o2'#13#10'on i2.id = o2.id'#13#10'inner join pessoa cli'#13#10'on o2.i' +
      'd_cliente = cli.codigo'#13#10'left join pedido_item ip2'#13#10'on i2.id = ip' +
      '2.id_os_serv'#13#10'left JOIN PEDIDO P2'#13#10'ON IP2.ID = P2.ID'#13#10'left join ' +
      'notafiscal_itens in2'#13#10'on ip2.id = in2.id_pedido'#13#10'and ip2.item = ' +
      'in2.item_pedido'#13#10'left join notafiscal n2'#13#10'on in2.id = n2.id'#13#10'WHE' +
      'RE O2.TP_SIMPLES = '#39'N'#39#13#10'      AND O2.TP_ORCAMENTO = '#39'1'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 54
    Top = 23
  end
  object dspOrdemServico_Nota: TDataSetProvider
    DataSet = sdsOrdemServico_Nota
    Left = 89
    Top = 22
  end
  object cdsOrdemServico_Nota: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemServico_Nota'
    Left = 133
    Top = 23
    object cdsOrdemServico_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrdemServico_NotaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrdemServico_NotaNUMNOTA: TIntegerField
      FieldName = 'NUMNOTA'
    end
    object cdsOrdemServico_NotaID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsOrdemServico_NotaITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsOrdemServico_NotaID_NOTA: TIntegerField
      FieldName = 'ID_NOTA'
    end
    object cdsOrdemServico_NotaNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsOrdemServico_NotaPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsOrdemServico_NotaDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object cdsOrdemServico_NotaDTNOTA: TDateField
      FieldName = 'DTNOTA'
    end
    object cdsOrdemServico_NotaQTD_NOTA: TFloatField
      FieldName = 'QTD_NOTA'
    end
    object cdsOrdemServico_NotaQTD_PEDIDO: TFloatField
      FieldName = 'QTD_PEDIDO'
    end
    object cdsOrdemServico_NotaQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrdemServico_NotaNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsOrdemServico_NotaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsOrdemServico_NotaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsOrdemServico_NotaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsOrdemServico_NotaNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOrdemServico_NotaDATA_OS: TDateField
      FieldName = 'DATA_OS'
    end
    object cdsOrdemServico_NotaDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsOrdemServico_NotaQTD_OS: TFloatField
      FieldName = 'QTD_OS'
    end
    object cdsOrdemServico_NotaDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object cdsOrdemServico_NotaQTD_OS_NOTA: TFloatField
      FieldName = 'QTD_OS_NOTA'
    end
    object cdsOrdemServico_NotaDTEMISSAO_NOTA: TDateField
      FieldName = 'DTEMISSAO_NOTA'
    end
    object cdsOrdemServico_NotaFATURADO_NOTA: TStringField
      FieldName = 'FATURADO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_NotaCOPIADO_PEDIDO: TStringField
      FieldName = 'COPIADO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_NotaPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrdemServico_Nota: TDataSource
    DataSet = cdsOrdemServico_Nota
    Left = 173
    Top = 24
  end
  object sdsOrdemServico_Ped: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select i2.id, i2.item, i2.qtd QTD_OS, ip2.id id_pedido, ip2.item' +
      ' item_pedido,'#13#10'P2.num_pedido, P2.pedido_cliente, P2.dtemissao DT' +
      'PEDIDO,'#13#10'IP2.qtd QTD_PEDIDO, IP2.qtd_restante,'#13#10'cli.nome nome_cl' +
      'iente, cli.cnpj_cpf, cli.cidade, cli.uf, O2.num_os,'#13#10'ip2.qtd_fat' +
      'urado, o2.dtemissao data_os, o2.dtrecebimento, o2.dt_agenda,'#13#10'i2' +
      '.qtd_nota, O2.faturado_nota, O2.copiado_pedido, O2.produzido'#13#10'fr' +
      'om ordemservico_itens i2'#13#10'inner join ordemservico o2'#13#10'on i2.id =' +
      ' o2.id'#13#10'inner join pessoa cli'#13#10'on o2.id_cliente = cli.codigo'#13#10'le' +
      'ft join pedido_item ip2'#13#10'on i2.id = ip2.id_os_serv'#13#10'left JOIN PE' +
      'DIDO P2'#13#10'ON IP2.ID = P2.ID'#13#10'WHERE O2.TP_SIMPLES = '#39'N'#39#13#10'      AND' +
      ' O2.TP_ORCAMENTO = '#39'1'#39#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 87
  end
  object dspOrdemServico_Ped: TDataSetProvider
    DataSet = sdsOrdemServico_Ped
    Left = 92
    Top = 85
  end
  object cdsOrdemServico_Ped: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemServico_Ped'
    Left = 131
    Top = 86
    object cdsOrdemServico_PedID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrdemServico_PedITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrdemServico_PedID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      Required = True
    end
    object cdsOrdemServico_PedITEM_PEDIDO: TIntegerField
      FieldName = 'ITEM_PEDIDO'
      Required = True
    end
    object cdsOrdemServico_PedNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsOrdemServico_PedPEDIDO_CLIENTE: TStringField
      FieldName = 'PEDIDO_CLIENTE'
    end
    object cdsOrdemServico_PedDTPEDIDO: TDateField
      FieldName = 'DTPEDIDO'
    end
    object cdsOrdemServico_PedQTD_PEDIDO: TFloatField
      FieldName = 'QTD_PEDIDO'
    end
    object cdsOrdemServico_PedQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrdemServico_PedNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsOrdemServico_PedCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsOrdemServico_PedCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsOrdemServico_PedUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsOrdemServico_PedNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOrdemServico_PedQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrdemServico_PedDATA_OS: TDateField
      FieldName = 'DATA_OS'
    end
    object cdsOrdemServico_PedDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsOrdemServico_PedQTD_OS: TFloatField
      FieldName = 'QTD_OS'
    end
    object cdsOrdemServico_PedDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object cdsOrdemServico_PedQTD_NOTA: TFloatField
      FieldName = 'QTD_NOTA'
    end
    object cdsOrdemServico_PedFATURADO_NOTA: TStringField
      FieldName = 'FATURADO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_PedCOPIADO_PEDIDO: TStringField
      FieldName = 'COPIADO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServico_PedPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrdemServico_Ped: TDataSource
    DataSet = cdsOrdemServico_Ped
    Left = 176
    Top = 87
  end
  object sdsOrdemServico: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select i2.id, i2.item, i2.qtd QTD_OS, SUM(IP2.qtd) QTD_PEDIDO,'#13#10 +
      'SUM(IP2.qtd_restante) qtd_restante, SUM(ip2.qtd_faturado) qtd_fa' +
      'turado,'#13#10'cli.nome nome_cliente, cli.cnpj_cpf, cli.cidade, cli.uf' +
      ', O2.num_os,'#13#10'o2.dtemissao data_os, o2.dtrecebimento, o2.dt_agen' +
      'da, i2.qtd_nota,'#13#10'O2.faturado_nota, O2.copiado_pedido, O2.produz' +
      'ido'#13#10'from ordemservico_itens i2'#13#10'inner join ordemservico o2'#13#10'on ' +
      'i2.id = o2.id'#13#10'inner join pessoa cli'#13#10'on o2.id_cliente = cli.cod' +
      'igo'#13#10'left join pedido_item ip2'#13#10'on i2.id = ip2.id_os_serv'#13#10'left ' +
      'JOIN PEDIDO P2'#13#10'ON IP2.ID = P2.ID'#13#10'WHERE O2.TP_SIMPLES = '#39'N'#39#13#10'  ' +
      '    AND O2.TP_ORCAMENTO = '#39'1'#39#13#10'GROUP BY i2.id, i2.item, i2.qtd, ' +
      'cli.nome, cli.cnpj_cpf,'#13#10'cli.cidade, cli.uf, O2.num_os, o2.dtemi' +
      'ssao, o2.dtrecebimento, o2.dt_agenda,'#13#10'i2.qtd_nota, O2.faturado_' +
      'nota, O2.copiado_pedido, O2.produzido'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 319
    Top = 28
  end
  object dspOrdemServico: TDataSetProvider
    DataSet = sdsOrdemServico
    Left = 355
    Top = 26
  end
  object cdsOrdemServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemServico'
    Left = 394
    Top = 27
    object cdsOrdemServicoQTD_FATURADO: TFloatField
      FieldName = 'QTD_FATURADO'
    end
    object cdsOrdemServicoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrdemServicoITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrdemServicoQTD_PEDIDO: TFloatField
      FieldName = 'QTD_PEDIDO'
    end
    object cdsOrdemServicoQTD_RESTANTE: TFloatField
      FieldName = 'QTD_RESTANTE'
    end
    object cdsOrdemServicoNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsOrdemServicoCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
    end
    object cdsOrdemServicoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsOrdemServicoUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsOrdemServicoNUM_OS: TIntegerField
      FieldName = 'NUM_OS'
    end
    object cdsOrdemServicoDATA_OS: TDateField
      FieldName = 'DATA_OS'
    end
    object cdsOrdemServicoDTRECEBIMENTO: TDateField
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsOrdemServicoQTD_OS: TFloatField
      FieldName = 'QTD_OS'
    end
    object cdsOrdemServicoDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
    end
    object cdsOrdemServicoQTD_NOTA: TFloatField
      FieldName = 'QTD_NOTA'
    end
    object cdsOrdemServicoFATURADO_NOTA: TStringField
      FieldName = 'FATURADO_NOTA'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoCOPIADO_PEDIDO: TStringField
      FieldName = 'COPIADO_PEDIDO'
      FixedChar = True
      Size = 1
    end
    object cdsOrdemServicoPRODUZIDO: TStringField
      FieldName = 'PRODUZIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsOrdemServico: TDataSource
    DataSet = cdsOrdemServico
    Left = 439
    Top = 28
  end
  object sdsConsCancelada: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select C.ID, C.ITEM, C.ITEM_CANC, C.DATA, C.DTUSUARIO, C.HRUSUAR' +
      'IO, C.USUARIO, C.QTD, C.MOTIVO, CLI.NOME NOME_CLIENTE,'#13#10'       I' +
      '.ID_PRODUTO, I.NOME_PRODUTO, I.REFERENCIA, O.NUM_OS'#13#10'from ORDEMS' +
      'ERVICO_CANC C'#13#10'inner join ORDEMSERVICO O on C.ID = O.ID'#13#10'inner j' +
      'oin ORDEMSERVICO_ITENS I on C.ID = I.ID and C.ITEM = I.ITEM'#13#10'inn' +
      'er join PESSOA CLI on O.ID_CLIENTE = CLI.CODIGO  '#13#10'WHERE O.TP_OR' +
      'CAMENTO = 1'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 322
    Top = 110
  end
  object dspConsCancelada: TDataSetProvider
    DataSet = sdsConsCancelada
    Left = 358
    Top = 108
  end
  object cdsConsCancelada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspConsCancelada'
    Left = 397
    Top = 109
    object cdsConsCanceladaREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsConsCanceladaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsConsCanceladaITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsConsCanceladaITEM_CANC: TIntegerField
      DisplayLabel = 'Item Canc.'
      FieldName = 'ITEM_CANC'
      Required = True
    end
    object cdsConsCanceladaDATA: TDateField
      DisplayLabel = 'Dt. Cancelamento'
      FieldName = 'DATA'
    end
    object cdsConsCanceladaDTUSUARIO: TDateField
      DisplayLabel = 'Dt. Usu'#225'rio'
      FieldName = 'DTUSUARIO'
    end
    object cdsConsCanceladaHRUSUARIO: TTimeField
      DisplayLabel = 'Hr Usu'#225'rio'
      FieldName = 'HRUSUARIO'
    end
    object cdsConsCanceladaUSUARIO: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsConsCanceladaQTD: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'QTD'
    end
    object cdsConsCanceladaMOTIVO: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Size = 200
    end
    object cdsConsCanceladaNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsConsCanceladaID_PRODUTO: TIntegerField
      DisplayLabel = 'ID Produto'
      FieldName = 'ID_PRODUTO'
    end
    object cdsConsCanceladaNOME_PRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsConsCanceladaNUM_OS: TIntegerField
      DisplayLabel = 'N'#186' OS'
      FieldName = 'NUM_OS'
    end
  end
  object dsConsCancelada: TDataSource
    DataSet = cdsConsCancelada
    Left = 442
    Top = 110
  end
end
