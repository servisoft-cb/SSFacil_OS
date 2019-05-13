object DMConsOrdemServico: TDMConsOrdemServico
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 368
  Top = 227
  Height = 291
  Width = 514
  object sdsOrdemServico_Nota: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select i2.id, i2.item, i2.qtd QTD_OS, n2.numnota, ip2.id id_pedi' +
      'do, ip2.item item_pedido,'#13#10'in2.id id_nota, P2.num_pedido, P2.ped' +
      'ido_cliente, P2.dtemissao DTPEDIDO,'#13#10'N2.dtemissao DTNOTA, IN2.qt' +
      'd QTD_NOTA, IP2.qtd QTD_PEDIDO, IP2.qtd_restante,'#13#10'cli.nome nome' +
      '_cliente, cli.cnpj_cpf, cli.cidade, cli.uf, O2.num_os, o2.dtemis' +
      'sao data_os,'#13#10'o2.dtrecebimento'#13#10'from ordemservico_itens i2'#13#10'inne' +
      'r join ordemservico o2'#13#10'on i2.id = o2.id'#13#10'inner join pessoa cli'#13 +
      #10'on o2.id_cliente = cli.codigo'#13#10'left join pedido_item ip2'#13#10'on i2' +
      '.id = ip2.id_os_serv'#13#10'left JOIN PEDIDO P2'#13#10'ON IP2.ID = P2.ID'#13#10'le' +
      'ft join notafiscal_itens in2'#13#10'on ip2.id = in2.id_pedido'#13#10'and ip2' +
      '.item = in2.item_pedido'#13#10'left join notafiscal n2'#13#10'on in2.id = n2' +
      '.id'#13#10'WHERE O2.TP_SIMPLES = '#39'N'#39#13#10'      AND O2.TP_ORCAMENTO = '#39'1'#39#13 +
      #10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 52
    Top = 24
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
    Left = 130
    Top = 23
    object cdsOrdemServico_NotaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsOrdemServico_NotaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsOrdemServico_NotaQTD_OS: TIntegerField
      FieldName = 'QTD_OS'
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
      'urado, o2.dtemissao data_os, o2.dtrecebimento'#13#10'from ordemservico' +
      '_itens i2'#13#10'inner join ordemservico o2'#13#10'on i2.id = o2.id'#13#10'inner j' +
      'oin pessoa cli'#13#10'on o2.id_cliente = cli.codigo'#13#10'left join pedido_' +
      'item ip2'#13#10'on i2.id = ip2.id_os_serv'#13#10'left JOIN PEDIDO P2'#13#10'ON IP2' +
      '.ID = P2.ID'#13#10'WHERE O2.TP_SIMPLES = '#39'N'#39#13#10'      AND O2.TP_ORCAMENT' +
      'O = '#39'1'#39#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10
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
    object cdsOrdemServico_PedQTD_OS: TIntegerField
      FieldName = 'QTD_OS'
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
      ', O2.num_os,'#13#10'o2.dtemissao data_os, o2.dtrecebimento'#13#10'from ordem' +
      'servico_itens i2'#13#10'inner join ordemservico o2'#13#10'on i2.id = o2.id'#13#10 +
      'inner join pessoa cli'#13#10'on o2.id_cliente = cli.codigo'#13#10'left join ' +
      'pedido_item ip2'#13#10'on i2.id = ip2.id_os_serv'#13#10'left JOIN PEDIDO P2'#13 +
      #10'ON IP2.ID = P2.ID'#13#10'WHERE O2.TP_SIMPLES = '#39'N'#39#13#10'      AND O2.TP_O' +
      'RCAMENTO = '#39'1'#39#13#10'GROUP BY i2.id, i2.item, i2.qtd, cli.nome, cli.c' +
      'npj_cpf,'#13#10'cli.cidade, cli.uf, O2.num_os, o2.dtemissao, o2.dtrece' +
      'bimento'#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 319
    Top = 36
  end
  object dspOrdemServico: TDataSetProvider
    DataSet = sdsOrdemServico
    Left = 355
    Top = 34
  end
  object cdsOrdemServico: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspOrdemServico'
    Left = 394
    Top = 35
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
    object cdsOrdemServicoQTD_OS: TIntegerField
      FieldName = 'QTD_OS'
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
  end
  object dsOrdemServico: TDataSource
    DataSet = cdsOrdemServico
    Left = 439
    Top = 36
  end
end
