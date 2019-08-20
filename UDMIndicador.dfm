object DMIndicador: TDMIndicador
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 437
  Top = 124
  Height = 325
  Width = 799
  object sdsPrazoEntrega: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT N.ID ID_NOTA, N.numnota, N.dtemissao dtemissa_nota, I.ITE' +
      'M ITEM_NOTA,'#13#10'pite.id_os_serv, o.num_os, o.dtrecebimento, o.dt_a' +
      'genda,'#13#10'oi.referencia, oi.nome_produto,'#13#10'o.id_cliente, cli.nome ' +
      'nome_cliente, i.qtd, i.unidade'#13#10'FROM NOTAFISCAL N'#13#10'INNER JOIN no' +
      'tafiscal_itens I'#13#10'ON N.ID = I.ID'#13#10'INNER JOIN PEDIDO_ITEM PITE'#13#10' ' +
      ' ON I.id_pedido = PITE.ID'#13#10' AND I.item_pedido = PITE.item'#13#10'inner' +
      ' join ordemservico o'#13#10'on pite.id_os_serv = o.id'#13#10'inner join orde' +
      'mservico_itens oi'#13#10'on o.id = oi.id'#13#10'inner join pessoa cli'#13#10'on o.' +
      'id_cliente = cli.codigo'#13#10'WHERE N.dtemissao between :DATA1 AND :D' +
      'ATA2'#13#10'  AND N.nfedenegada = '#39'N'#39#13#10'  AND N.cancelada = '#39'N'#39#13#10'  AND ' +
      'N.tipo_reg = '#39'NTS'#39#13#10'  AND N.tipo_nota = '#39'S'#39#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 64
    Top = 57
  end
  object dspPrazoEntrega: TDataSetProvider
    DataSet = sdsPrazoEntrega
    Left = 103
    Top = 57
  end
  object cdsPrazoEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrazoEntrega'
    Left = 156
    Top = 54
    object cdsPrazoEntregaID_NOTA: TIntegerField
      DisplayLabel = 'ID Nota'
      FieldName = 'ID_NOTA'
      Required = True
    end
    object cdsPrazoEntregaNUMNOTA: TIntegerField
      DisplayLabel = 'N'#186' Nota'
      FieldName = 'NUMNOTA'
    end
    object cdsPrazoEntregaDTEMISSA_NOTA: TDateField
      DisplayLabel = 'Dt. Faturamento'
      FieldName = 'DTEMISSA_NOTA'
    end
    object cdsPrazoEntregaITEM_NOTA: TIntegerField
      DisplayLabel = 'Item Nota'
      FieldName = 'ITEM_NOTA'
      Required = True
    end
    object cdsPrazoEntregaID_OS_SERV: TIntegerField
      DisplayLabel = 'ID OS'
      FieldName = 'ID_OS_SERV'
    end
    object cdsPrazoEntregaNUM_OS: TIntegerField
      DisplayLabel = 'N'#186' OS'
      FieldName = 'NUM_OS'
    end
    object cdsPrazoEntregaDTRECEBIMENTO: TDateField
      DisplayLabel = 'Dt. Recebimento'
      FieldName = 'DTRECEBIMENTO'
    end
    object cdsPrazoEntregaDT_AGENDA: TDateField
      DisplayLabel = 'Dt. Prazo Entrega'
      FieldName = 'DT_AGENDA'
    end
    object cdsPrazoEntregaREFERENCIA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'REFERENCIA'
    end
    object cdsPrazoEntregaNOME_PRODUTO: TStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOME_PRODUTO'
      Size = 100
    end
    object cdsPrazoEntregaID_CLIENTE: TIntegerField
      DisplayLabel = 'ID Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsPrazoEntregaNOME_CLIENTE: TStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPrazoEntregaQTD: TFloatField
      DisplayLabel = 'Qtd.'
      FieldName = 'QTD'
    end
    object cdsPrazoEntregaUNIDADE: TStringField
      DisplayLabel = 'Unid.'
      FieldName = 'UNIDADE'
      Size = 6
    end
  end
  object dsPrazoEntrega: TDataSource
    DataSet = cdsPrazoEntrega
    Left = 197
    Top = 57
  end
  object sdsPrazoCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'select aux.contador,'#13#10'aux.id_cliente, aux.nome_cliente, cast(aux' +
      '.qtd_foraprazo as double precision) qtd_foraprazo,'#13#10'cast(aux.qtd' +
      '_noprazo as double precision) qtd_noprazo ,'#13#10#13#10'Case'#13#10'  when aux.' +
      'qtd_foraprazo <= 0 then 100'#13#10'  when aux.qtd_noprazo <= 0 then 0'#13 +
      #10'  else (cast(aux.qtd_noprazo as double precision) / cast(aux.co' +
      'ntador as double precision) ) * 100'#13#10'  end PERC_ENTREGA'#13#10'from ('#13 +
      #10'SELECT count(1) contador,'#13#10'o.id_cliente, cli.nome nome_cliente,' +
      #13#10'sum(case'#13#10'  when n.dtemissao > o.dt_agenda then 1'#13#10'  else 0'#13#10' ' +
      ' end) Qtd_ForaPrazo,'#13#10'sum(case'#13#10'  when n.dtemissao <= o.dt_agend' +
      'a then 1'#13#10'  else 0'#13#10'  end) Qtd_noPrazo'#13#10'FROM NOTAFISCAL N'#13#10'INNER' +
      ' JOIN notafiscal_itens I'#13#10'ON N.ID = I.ID'#13#10'INNER JOIN PEDIDO_ITEM' +
      ' PITE'#13#10'  ON I.id_pedido = PITE.ID'#13#10' AND I.item_pedido = PITE.ite' +
      'm'#13#10'inner join ordemservico o'#13#10'on pite.id_os_serv = o.id'#13#10'inner j' +
      'oin ordemservico_itens oi'#13#10'on o.id = oi.id'#13#10'inner join pessoa cl' +
      'i'#13#10'on o.id_cliente = cli.codigo'#13#10'WHERE N.dtemissao between :DATA' +
      '1 AND :DATA2'#13#10'  AND N.nfedenegada = '#39'N'#39#13#10'  AND N.cancelada = '#39'N'#39 +
      #13#10'  AND N.tipo_reg = '#39'NTS'#39#13#10'  AND N.tipo_nota = '#39'S'#39#13#10'group by o.' +
      'id_cliente, cli.nome) aux'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DATA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA2'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 334
    Top = 57
  end
  object dspPrazoCliente: TDataSetProvider
    DataSet = sdsPrazoCliente
    Left = 373
    Top = 57
  end
  object cdsPrazoCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPrazoCliente'
    Left = 428
    Top = 54
    object cdsPrazoClienteCONTADOR: TIntegerField
      FieldName = 'CONTADOR'
      Required = True
    end
    object cdsPrazoClienteID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsPrazoClienteNOME_CLIENTE: TStringField
      FieldName = 'NOME_CLIENTE'
      Size = 60
    end
    object cdsPrazoClienteQTD_FORAPRAZO: TFloatField
      FieldName = 'QTD_FORAPRAZO'
    end
    object cdsPrazoClienteQTD_NOPRAZO: TFloatField
      FieldName = 'QTD_NOPRAZO'
    end
    object cdsPrazoClientePERC_ENTREGA: TFloatField
      FieldName = 'PERC_ENTREGA'
      DisplayFormat = '0.00'
    end
  end
  object dsPrazoCliente: TDataSource
    DataSet = cdsPrazoCliente
    Left = 467
    Top = 57
  end
end
