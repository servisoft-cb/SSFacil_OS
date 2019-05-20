unit UDMCadOrdemServico;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, LogTypes, dbXPress,Dialogs;

type
  TDMCadOrdemServico = class(TDataModule)
    sdsOrdemServico: TSQLDataSet;
    dspOrdemServico: TDataSetProvider;
    cdsOrdemServico: TClientDataSet;
    dsOrdemServico: TDataSource;
    sdsOrdemServico_Consulta: TSQLDataSet;
    dspOrdemServico_Consulta: TDataSetProvider;
    cdsOrdemServico_Consulta: TClientDataSet;
    dsOrdemServico_Consulta: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    cdsClienteFANTASIA: TStringField;
    cdsClienteENDERECO: TStringField;
    cdsClienteCOMPLEMENTO_END: TStringField;
    cdsClienteNUM_END: TStringField;
    cdsClienteBAIRRO: TStringField;
    cdsClienteID_CIDADE: TIntegerField;
    cdsClienteCIDADE: TStringField;
    cdsClienteUF: TStringField;
    cdsClienteCEP: TStringField;
    cdsClienteDDDFONE1: TIntegerField;
    cdsClienteTELEFONE1: TStringField;
    cdsClienteDDDFAX: TIntegerField;
    cdsClienteFAX: TStringField;
    cdsClientePESSOA: TStringField;
    cdsClienteCNPJ_CPF: TStringField;
    cdsClienteINSCR_EST: TStringField;
    cdsClienteID_VENDEDOR: TIntegerField;
    cdsClienteID_CONDPGTO: TIntegerField;
    cdsClienteID_CONTABOLETO: TIntegerField;
    cdsClienteID_TRANSPORTADORA: TIntegerField;
    cdsClienteID_TIPOCOBRANCA: TIntegerField;
    cdsClientePERC_COMISSAO: TFloatField;
    cdsClienteID_REDESPACHO: TIntegerField;
    cdsClienteID_PAIS: TIntegerField;
    dsCliente: TDataSource;
    sdsServico_Int: TSQLDataSet;
    sdsServico_IntID: TIntegerField;
    sdsServico_IntNOME: TStringField;
    sdsServico_IntVLR_UNITARIO: TFloatField;
    dspServico_Int: TDataSetProvider;
    cdsServico_Int: TClientDataSet;
    cdsServico_IntID: TIntegerField;
    cdsServico_IntNOME: TStringField;
    cdsServico_IntVLR_UNITARIO: TFloatField;
    dsServico_Int: TDataSource;
    cdsOrdemServico_Itens: TClientDataSet;
    dsOrdemServico_Itens: TDataSource;
    qProximo_Num: TSQLQuery;
    qParametros: TSQLQuery;
    qParametrosID_CONTA_PADRAO: TIntegerField;
    qParametrosID_TIPO_COBRANCA_PADRAO: TIntegerField;
    qParametrosID: TIntegerField;
    sdsFilial: TSQLDataSet;
    dspFilial: TDataSetProvider;
    cdsFilial: TClientDataSet;
    dsFilial: TDataSource;
    qProximo_NumNUM_OS: TIntegerField;
    sdsFuncionario: TSQLDataSet;
    dspFuncionario: TDataSetProvider;
    cdsFuncionario: TClientDataSet;
    dsFuncionario: TDataSource;
    sdsFuncionarioCODIGO: TIntegerField;
    sdsFuncionarioNOME: TStringField;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    sdsOrdemServicoID: TIntegerField;
    sdsOrdemServicoNUM_OS: TIntegerField;
    sdsOrdemServicoDTEMISSAO: TDateField;
    sdsOrdemServicoHREMISSAO: TTimeField;
    sdsOrdemServicoID_CLIENTE: TIntegerField;
    sdsOrdemServicoDTENTREGA: TDateField;
    sdsOrdemServicoHRENTREGA: TTimeField;
    sdsOrdemServicoNUM_NOTA: TIntegerField;
    sdsOrdemServicoSERIE_NOTA: TIntegerField;
    sdsOrdemServicoNUM_OC: TIntegerField;
    sdsOrdemServicoID_FUNCIONARIO: TIntegerField;
    sdsOrdemServicoENTREGUE: TStringField;
    sdsOrdemServicoCONCLUIDO: TStringField;
    sdsOrdemServicoDTCONCLUIDO: TDateField;
    sdsOrdemServicoFILIAL: TIntegerField;
    cdsOrdemServicoID: TIntegerField;
    cdsOrdemServicoNUM_OS: TIntegerField;
    cdsOrdemServicoDTEMISSAO: TDateField;
    cdsOrdemServicoHREMISSAO: TTimeField;
    cdsOrdemServicoID_CLIENTE: TIntegerField;
    cdsOrdemServicoDTENTREGA: TDateField;
    cdsOrdemServicoHRENTREGA: TTimeField;
    cdsOrdemServicoNUM_NOTA: TIntegerField;
    cdsOrdemServicoSERIE_NOTA: TIntegerField;
    cdsOrdemServicoNUM_OC: TIntegerField;
    cdsOrdemServicoID_FUNCIONARIO: TIntegerField;
    cdsOrdemServicoENTREGUE: TStringField;
    cdsOrdemServicoCONCLUIDO: TStringField;
    cdsOrdemServicoDTCONCLUIDO: TDateField;
    cdsOrdemServicoFILIAL: TIntegerField;
    sdsOrdemServico_ItensID: TIntegerField;
    sdsOrdemServico_ItensITEM: TIntegerField;
    sdsOrdemServico_ItensID_PRODUTO: TIntegerField;
    sdsOrdemServico_ItensNOME_PRODUTO: TStringField;
    sdsOrdemServico_ItensMARCA: TStringField;
    sdsOrdemServico_ItensMODELO: TStringField;
    sdsOrdemServico_ItensNUM_SERIE: TStringField;
    sdsOrdemServico_ItensDEFEITO_ALEGADO: TMemoField;
    sdsOrdemServico_ItensOBS: TMemoField;
    sdsOrdemServico_ItensACESSORIOS: TMemoField;
    sdsOrdemServico_ItensCONCLUIDO: TStringField;
    sdsOrdemServico_ItensDTCONCLUIDO: TDateField;
    sdsOrdemServico_ItensID_TECNICO: TIntegerField;
    cdsOrdemServico_ItensID: TIntegerField;
    cdsOrdemServico_ItensITEM: TIntegerField;
    cdsOrdemServico_ItensID_PRODUTO: TIntegerField;
    cdsOrdemServico_ItensNOME_PRODUTO: TStringField;
    cdsOrdemServico_ItensMARCA: TStringField;
    cdsOrdemServico_ItensMODELO: TStringField;
    cdsOrdemServico_ItensNUM_SERIE: TStringField;
    cdsOrdemServico_ItensDEFEITO_ALEGADO: TMemoField;
    cdsOrdemServico_ItensOBS: TMemoField;
    cdsOrdemServico_ItensACESSORIOS: TMemoField;
    cdsOrdemServico_ItensCONCLUIDO: TStringField;
    cdsOrdemServico_ItensDTCONCLUIDO: TDateField;
    cdsOrdemServico_ItensID_TECNICO: TIntegerField;
    sdsOrdemServico_Mat: TSQLDataSet;
    sdsOrdemServico_MatID: TIntegerField;
    sdsOrdemServico_MatITEM: TIntegerField;
    sdsOrdemServico_MatITEM_MAT: TIntegerField;
    sdsOrdemServico_MatID_PRODUTO: TIntegerField;
    sdsOrdemServico_MatQTD: TFloatField;
    sdsOrdemServico_MatVLR_UNITARIO: TFloatField;
    sdsOrdemServico_MatVLR_TOTAL: TFloatField;
    cdsOrdemServico_Mat: TClientDataSet;
    cdsOrdemServico_MatID: TIntegerField;
    cdsOrdemServico_MatITEM: TIntegerField;
    cdsOrdemServico_MatITEM_MAT: TIntegerField;
    cdsOrdemServico_MatID_PRODUTO: TIntegerField;
    cdsOrdemServico_MatQTD: TFloatField;
    cdsOrdemServico_MatVLR_UNITARIO: TFloatField;
    cdsOrdemServico_MatVLR_TOTAL: TFloatField;
    dsOrdemServico_Mat: TDataSource;
    cdsOrdemServico_ConsultaID: TIntegerField;
    cdsOrdemServico_ConsultaNUM_OS: TIntegerField;
    cdsOrdemServico_ConsultaDTEMISSAO: TDateField;
    cdsOrdemServico_ConsultaHREMISSAO: TTimeField;
    cdsOrdemServico_ConsultaID_CLIENTE: TIntegerField;
    cdsOrdemServico_ConsultaDTENTREGA: TDateField;
    cdsOrdemServico_ConsultaHRENTREGA: TTimeField;
    cdsOrdemServico_ConsultaNUM_NOTA: TIntegerField;
    cdsOrdemServico_ConsultaSERIE_NOTA: TIntegerField;
    cdsOrdemServico_ConsultaNUM_OC: TIntegerField;
    cdsOrdemServico_ConsultaID_FUNCIONARIO: TIntegerField;
    cdsOrdemServico_ConsultaENTREGUE: TStringField;
    cdsOrdemServico_ConsultaCONCLUIDO: TStringField;
    cdsOrdemServico_ConsultaDTCONCLUIDO: TDateField;
    cdsOrdemServico_ConsultaFILIAL: TIntegerField;
    cdsOrdemServico_ConsultaNOME_CLIENTE: TStringField;
    sdsOrdemServicoHRCONCLUIDO: TTimeField;
    cdsOrdemServicoHRCONCLUIDO: TTimeField;
    sdsOrdemServico_ItensTIPO_GARANTIA: TStringField;
    cdsOrdemServico_ItensTIPO_GARANTIA: TStringField;
    sdsMaterial: TSQLDataSet;
    dspMaterial: TDataSetProvider;
    cdsMaterial: TClientDataSet;
    dsMaterial: TDataSource;
    cdsFilialID: TIntegerField;
    cdsFilialNOME: TStringField;
    cdsFilialNOME_INTERNO: TStringField;
    cdsFilialENDERECO: TStringField;
    cdsFilialCOMPLEMENTO_END: TStringField;
    cdsFilialNUM_END: TStringField;
    cdsFilialBAIRRO: TStringField;
    cdsFilialCEP: TStringField;
    cdsFilialID_CIDADE: TIntegerField;
    cdsFilialCIDADE: TStringField;
    cdsFilialUF: TStringField;
    cdsFilialDDD1: TIntegerField;
    cdsFilialFONE1: TStringField;
    cdsFilialDDD2: TIntegerField;
    cdsFilialFONE: TStringField;
    cdsFilialDDDFAX: TIntegerField;
    cdsFilialFAX: TStringField;
    cdsFilialPESSOA: TStringField;
    cdsFilialCNPJ_CPF: TStringField;
    cdsFilialINSCR_EST: TStringField;
    cdsFilialSIMPLES: TStringField;
    cdsFilialENDLOGO: TStringField;
    sdsMaterialID: TIntegerField;
    sdsMaterialREFERENCIA: TStringField;
    sdsMaterialNOME: TStringField;
    sdsMaterialINATIVO: TStringField;
    sdsMaterialPRECO_CUSTO: TFloatField;
    sdsMaterialPRECO_VENDA: TFloatField;
    cdsMaterialID: TIntegerField;
    cdsMaterialREFERENCIA: TStringField;
    cdsMaterialNOME: TStringField;
    cdsMaterialINATIVO: TStringField;
    cdsMaterialPRECO_CUSTO: TFloatField;
    cdsMaterialPRECO_VENDA: TFloatField;
    sdsConsulta_Itens: TSQLDataSet;
    cdsConsulta_Itens: TClientDataSet;
    dspConsulta_Itens: TDataSetProvider;
    cdsConsulta_ItensNUM_OS: TIntegerField;
    cdsConsulta_ItensDTEMISSAO: TDateField;
    cdsConsulta_ItensDTENTREGA: TDateField;
    cdsConsulta_ItensID_CLIENTE: TIntegerField;
    cdsConsulta_ItensNUM_NOTA: TIntegerField;
    cdsConsulta_ItensSERIE_NOTA: TIntegerField;
    cdsConsulta_ItensNUM_OC: TIntegerField;
    cdsConsulta_ItensNOME_CLIENTE: TStringField;
    cdsConsulta_ItensID_PRODUTO: TIntegerField;
    cdsConsulta_ItensNOME_PRODUTO: TStringField;
    cdsConsulta_ItensMARCA: TStringField;
    cdsConsulta_ItensMODELO: TStringField;
    cdsConsulta_ItensNUM_SERIE: TStringField;
    cdsConsulta_ItensDEFEITO_ALEGADO: TMemoField;
    cdsConsulta_ItensOBS: TMemoField;
    cdsConsulta_ItensACESSORIOS: TMemoField;
    cdsConsulta_ItensCONCLUIDO: TStringField;
    cdsConsulta_ItensDTCONCLUIDO: TDateField;
    cdsConsulta_ItensTIPO_GARANTIA: TStringField;
    dsConsulta_Itens: TDataSource;
    sdsOrdemServicoNOME_CLIENTE: TStringField;
    cdsOrdemServicoNOME_CLIENTE: TStringField;
    qOS: TSQLQuery;
    qOSID: TIntegerField;
    qOSNUM_OS: TIntegerField;
    sdsOrdemServico_ItensDTENTRADA: TDateField;
    sdsOrdemServico_ItensHRENTRADA: TTimeField;
    cdsOrdemServico_ItensDTENTRADA: TDateField;
    cdsOrdemServico_ItensHRENTRADA: TTimeField;
    sdsOrdemServico_ItensHRCONCLUIDO: TTimeField;
    cdsOrdemServico_ItensHRCONCLUIDO: TTimeField;
    sdsOrdemServicoVLR_TOTAL: TFloatField;
    sdsOrdemServicoVLR_SERVICO: TFloatField;
    sdsOrdemServicoVLR_MATERIAL: TFloatField;
    cdsOrdemServicoVLR_TOTAL: TFloatField;
    cdsOrdemServicoVLR_SERVICO: TFloatField;
    cdsOrdemServicoVLR_MATERIAL: TFloatField;
    sdsOrdemServico_ItensVLR_TOTAL: TFloatField;
    sdsOrdemServico_ItensVLR_SERVICO: TFloatField;
    sdsOrdemServico_ItensVLR_MATERIAL: TFloatField;
    cdsOrdemServico_ItensVLR_TOTAL: TFloatField;
    cdsOrdemServico_ItensVLR_SERVICO: TFloatField;
    cdsOrdemServico_ItensVLR_MATERIAL: TFloatField;
    sdsOrdemServicoCNPJ_CPF: TStringField;
    sdsOrdemServicoCIDADE: TStringField;
    cdsOrdemServicoCNPJ_CPF: TStringField;
    cdsOrdemServicoCIDADE: TStringField;
    sdsOrdemServico_ItensDEFEITO_ENCONTRADO: TMemoField;
    cdsOrdemServico_ItensDEFEITO_ENCONTRADO: TMemoField;
    sdsMaterialCOD_BARRA: TStringField;
    cdsMaterialCOD_BARRA: TStringField;
    sdsHistProduto: TSQLDataSet;
    dspHistProduto: TDataSetProvider;
    cdsHistProduto: TClientDataSet;
    dsHistProduto: TDataSource;
    cdsHistProdutoID: TIntegerField;
    cdsHistProdutoID_PRODUTO: TIntegerField;
    cdsHistProdutoITEM: TIntegerField;
    cdsHistProdutoNOME_PRODUTO: TStringField;
    cdsHistProdutoMARCA: TStringField;
    cdsHistProdutoMODELO: TStringField;
    cdsHistProdutoNUM_SERIE: TStringField;
    cdsHistProdutoDTENTRADA: TDateField;
    cdsHistProdutoDTCONCLUIDO: TDateField;
    cdsHistProdutoDTEMISSAO: TDateField;
    cdsHistProdutoID_CLIENTE: TIntegerField;
    cdsHistProdutoNUM_OS: TIntegerField;
    cdsHistProdutoNOME_CLIENTE: TStringField;
    qPesquisaOS: TSQLQuery;
    qPesquisaOSNUM_SERIE: TStringField;
    qPesquisaOSNOME_PRODUTO: TStringField;
    qPesquisaOSMODELO: TStringField;
    qPesquisaOSID_PRODUTO: TIntegerField;
    qPesquisaOSNOME_MARCA: TStringField;
    qPesquisaOSTIPO: TStringField;
    sdsOrdemServico_ItensNUM_SERIE_TROCA: TStringField;
    cdsOrdemServico_ItensNUM_SERIE_TROCA: TStringField;
    cdsHistProdutoNUM_SERIE_TROCA: TStringField;
    sdsOrdemServico_ItensTIPO_APROV: TStringField;
    cdsOrdemServico_ItensTIPO_APROV: TStringField;
    cdsConsulta_ItensNUM_SERIE_TROCA: TStringField;
    cdsConsulta_ItensTIPO_APROV: TStringField;
    qPesquisaOSINATIVO: TStringField;
    sdsOrdemServicoVLR_ENTRADA: TFloatField;
    sdsOrdemServicoTP_SIMPLES: TStringField;
    sdsOrdemServicoTP_ORCAMENTO: TStringField;
    sdsOrdemServicoSOLICITANTE_NOME: TStringField;
    sdsOrdemServicoSOLICITANTE_EMAIL: TStringField;
    sdsOrdemServicoSOLICITANTE_FONE: TStringField;
    cdsOrdemServicoVLR_ENTRADA: TFloatField;
    cdsOrdemServicoTP_SIMPLES: TStringField;
    cdsOrdemServicoTP_ORCAMENTO: TStringField;
    cdsOrdemServicoSOLICITANTE_NOME: TStringField;
    cdsOrdemServicoSOLICITANTE_EMAIL: TStringField;
    cdsOrdemServicoSOLICITANTE_FONE: TStringField;
    cdsOrdemServico_ConsultaSOLICITANTE_NOME: TStringField;
    sdsOrdemServicoNOME_ATENDENTE: TStringField;
    cdsOrdemServicoNOME_ATENDENTE: TStringField;
    cdsFilialHOMEPAGE: TStringField;
    sdsOrdemServicoOBS: TMemoField;
    cdsOrdemServicoOBS: TMemoField;
    sdsOrdemServicoID_CONDPGTO: TIntegerField;
    cdsOrdemServicoID_CONDPGTO: TIntegerField;
    sdsCondPgto: TSQLDataSet;
    dspCondPgto: TDataSetProvider;
    cdsCondPgto: TClientDataSet;
    dsCondPgto: TDataSource;
    cdsCondPgtoID: TIntegerField;
    cdsCondPgtoNOME: TStringField;
    cdsCondPgtoENTRADA: TStringField;
    sdsOrdemServicoCONDPGTO: TStringField;
    cdsOrdemServicoCONDPGTO: TStringField;
    qParametrosIMP_MEIA_FOLHA_PED: TStringField;
    sdsOrdemServicoINSCR_EST: TStringField;
    sdsOrdemServicoENDERECO: TStringField;
    sdsOrdemServicoNUM_END: TStringField;
    sdsOrdemServicoCOMPLEMENTO_END: TStringField;
    sdsOrdemServicoUF: TStringField;
    cdsOrdemServicoINSCR_EST: TStringField;
    cdsOrdemServicoENDERECO: TStringField;
    cdsOrdemServicoNUM_END: TStringField;
    cdsOrdemServicoCOMPLEMENTO_END: TStringField;
    cdsOrdemServicoUF: TStringField;
    sdsOSParametros: TSQLDataSet;
    dspOSParametros: TDataSetProvider;
    cdsOSParametros: TClientDataSet;
    dsOSParametros: TDataSource;
    sdsOSParametrosID: TIntegerField;
    sdsOSParametrosLAYOUT_IMPRESSAO: TSmallintField;
    sdsOSParametrosTAMANHO_PAPEL: TStringField;
    sdsOSParametrosINFO_ADICIONAIS: TMemoField;
    sdsOSParametrosIMPRIMIR_VIAS: TSmallintField;
    cdsOSParametrosID: TIntegerField;
    cdsOSParametrosLAYOUT_IMPRESSAO: TSmallintField;
    cdsOSParametrosTAMANHO_PAPEL: TStringField;
    cdsOSParametrosINFO_ADICIONAIS: TMemoField;
    cdsOSParametrosIMPRIMIR_VIAS: TSmallintField;
    cdsFilialEMAIL: TStringField;
    cdsFilialLICENCA_FEPAM: TStringField;
    sdsFuncionarioCONSELHO: TStringField;
    sdsFuncionarioNUM_CONSELHO: TStringField;
    cdsFuncionarioCONSELHO: TStringField;
    cdsFuncionarioNUM_CONSELHO: TStringField;
    sdsOrdemServicoAGENTE1: TIntegerField;
    sdsOrdemServicoAGENTE2: TIntegerField;
    sdsOrdemServicoAGENTE3: TIntegerField;
    sdsOrdemServicoAGENTE4: TIntegerField;
    cdsOrdemServicoAGENTE1: TIntegerField;
    cdsOrdemServicoAGENTE2: TIntegerField;
    cdsOrdemServicoAGENTE3: TIntegerField;
    cdsOrdemServicoAGENTE4: TIntegerField;
    sdsOrdemServicoMATERIAL: TMemoField;
    cdsOrdemServicoMATERIAL: TMemoField;
    dsmFilial: TDataSource;
    sdsFilialRelatorios: TSQLDataSet;
    sdsFilialRelatoriosID: TIntegerField;
    sdsFilialRelatoriosITEM: TIntegerField;
    sdsFilialRelatoriosTIPO: TSmallintField;
    sdsFilialRelatoriosCAMINHO: TStringField;
    cdsFilialRelatorios: TClientDataSet;
    cdsFilialRelatoriosID: TIntegerField;
    cdsFilialRelatoriosITEM: TIntegerField;
    cdsFilialRelatoriosTIPO: TSmallintField;
    cdsFilialRelatoriosCAMINHO: TStringField;
    dsFilialRelatorios: TDataSource;
    cdsFilialsdsFilialRelatorios: TDataSetField;
    dsOrdemServico_Mestre: TDataSource;
    cdsOrdemServicosdsOrdemServico_Itens: TDataSetField;
    dsOrdemServicoItens_Mestre: TDataSource;
    cdsOrdemServico_ItenssdsOrdemServico_Mat: TDataSetField;
    sdsOrdemServicoDT_AGENDA: TDateField;
    sdsOrdemServicoHR_AGENDA: TTimeField;
    cdsOrdemServicoDT_AGENDA: TDateField;
    cdsOrdemServicoHR_AGENDA: TTimeField;
    qParametrosNUMERO_SERIE_INTERNO: TStringField;
    sdsOrdemServico_MatQTD_RESTANTE: TFloatField;
    sdsOrdemServico_MatQTD_FATURADO: TFloatField;
    cdsOrdemServico_MatQTD_RESTANTE: TFloatField;
    cdsOrdemServico_MatQTD_FATURADO: TFloatField;
    sdsOrdemServico_MatFATURAR: TStringField;
    cdsOrdemServico_MatFATURAR: TStringField;
    sdsOrdemServico_MatQTD_AFATURAR: TFloatField;
    cdsOrdemServico_MatQTD_AFATURAR: TFloatField;
    sdsConsulta_Mat: TSQLDataSet;
    cdsConsulta_Mat: TClientDataSet;
    dspConsulta_Mat: TDataSetProvider;
    dsConsulta_Mat: TDataSource;
    cdsConsulta_MatNUM_OS: TIntegerField;
    cdsConsulta_MatDTEMISSAO: TDateField;
    cdsConsulta_MatDTENTREGA: TDateField;
    cdsConsulta_MatID_CLIENTE: TIntegerField;
    cdsConsulta_MatNUM_NOTA: TIntegerField;
    cdsConsulta_MatSERIE_NOTA: TIntegerField;
    cdsConsulta_MatNUM_OC: TIntegerField;
    cdsConsulta_MatNOME_CLIENTE: TStringField;
    cdsConsulta_MatID_PRODUTO: TIntegerField;
    cdsConsulta_MatNOME_PRODUTO: TStringField;
    cdsConsulta_MatMARCA: TStringField;
    cdsConsulta_MatMODELO: TStringField;
    cdsConsulta_MatNUM_SERIE: TStringField;
    cdsConsulta_MatDEFEITO_ALEGADO: TMemoField;
    cdsConsulta_MatOBS: TMemoField;
    cdsConsulta_MatACESSORIOS: TMemoField;
    cdsConsulta_MatCONCLUIDO: TStringField;
    cdsConsulta_MatDTCONCLUIDO: TDateField;
    cdsConsulta_MatTIPO_GARANTIA: TStringField;
    cdsConsulta_MatNUM_SERIE_TROCA: TStringField;
    cdsConsulta_MatITEM_MAT: TIntegerField;
    cdsConsulta_MatID_PECA_USADA: TIntegerField;
    cdsConsulta_MatNOME_PECA: TStringField;
    cdsConsulta_MatQTD_MAT: TFloatField;
    cdsConsulta_MatQTD_RESTANTE_MAT: TFloatField;
    cdsConsulta_MatQTD_FATURADO_MAT: TFloatField;
    cdsConsulta_MatVLR_UNITARIO_MAT: TFloatField;
    cdsConsulta_MatVLR_TOTAL_MAT: TFloatField;
    cdsConsulta_MatFATURAR_MAT: TStringField;
    cdsConsulta_MatTIPO_APROV: TStringField;
    sdsOS_Nota: TSQLDataSet;
    cdsOS_Nota: TClientDataSet;
    dsOS_Nota: TDataSource;
    dspOS_Nota: TDataSetProvider;
    cdsOS_NotaID_NOTA: TIntegerField;
    cdsOS_NotaITEM_NOTA: TIntegerField;
    cdsOS_NotaITEM_NOTAOS: TIntegerField;
    cdsOS_NotaQTD: TFloatField;
    cdsOS_NotaNUM_OS: TIntegerField;
    cdsOS_NotaNUMNOTA: TIntegerField;
    cdsOS_NotaDTEMISSAO: TDateField;
    cdsOS_NotaSERIE: TStringField;
    cdsOS_NotaTIPO_NOTA: TStringField;
    cdsConsulta_MatID_OS: TIntegerField;
    cdsConsulta_MatITEM_OS: TIntegerField;
    cdsOrdemServicolkTecnico: TStringField;
    sdsOrdemServico_ItensDT_INSTALACAO: TDateField;
    sdsOrdemServico_ItensDT_GARANTIA: TDateField;
    cdsOrdemServico_ItensDT_INSTALACAO: TDateField;
    cdsOrdemServico_ItensDT_GARANTIA: TDateField;
    cdsOrdemServico_MatlkNomeProduto: TStringField;
    cdsOrdemServico_MatlkReferencia: TStringField;
    cdsOrdemServico_ConsultaFATURADO: TStringField;
    sdsOrdemServicoFATURADO: TStringField;
    cdsOrdemServicoFATURADO: TStringField;
    sdsOrdemServicoTIPO_SERVICO: TStringField;
    cdsOrdemServicoTIPO_SERVICO: TStringField;
    qParametrosUSA_SERVICO_MOTOR: TStringField;
    sdsOrdemServicoID_VENDEDOR: TIntegerField;
    cdsOrdemServicoID_VENDEDOR: TIntegerField;
    sdsVendedor: TSQLDataSet;
    dspVendedor: TDataSetProvider;
    cdsVendedor: TClientDataSet;
    dsVendedor: TDataSource;
    qParametros_Ser: TSQLQuery;
    qParametros_SerID: TIntegerField;
    qParametros_SerIMP_NA_OS_REF_PROD: TStringField;
    qParametros_SerUSA_OS_REDUZIDA: TStringField;
    cdsOrdemServico_ConsultaVLR_RESTANTE: TFloatField;
    cdsOrdemServico_ConsultaVLR_TOTAL: TFloatField;
    cdsOrdemServico_ConsultaVLR_ENTRADA: TFloatField;
    qParametros_SerMOSTRAR_SERIE_TROCA: TStringField;
    sdsOrdemServicoSTATUS: TStringField;
    cdsOrdemServicoSTATUS: TStringField;
    sdsOrdemServico_Itens: TSQLDataSet;
    sdsOrdemServico_ItensSTATUS: TStringField;
    cdsOrdemServico_ItensSTATUS: TStringField;
    qParametros_SerMOSTRAR_STATUS: TStringField;
    cdsOrdemServico_ConsultaSTATUS: TStringField;
    cdsOrdemServico_ConsultaDESC_STATUS: TStringField;
    sdsOrdemServico_ItensDTENTREGA: TDateField;
    sdsOrdemServico_ItensHRENTREGA: TTimeField;
    cdsOrdemServico_ItensDTENTREGA: TDateField;
    cdsOrdemServico_ItensHRENTREGA: TTimeField;
    qParametros_SerMOSTRA_OS_DEFEITO_ALEG: TStringField;
    qParametros_SerMOSTRA_OS_DEFEITO_ENC: TStringField;
    qParametros_SerMOSTRA_OS_ACESSORIOS: TStringField;
    sdsOrdemServicoFANTASIA: TStringField;
    cdsOrdemServicoFANTASIA: TStringField;
    mOS_Mat: TClientDataSet;
    mOS_MatReferencia: TStringField;
    mOS_MatNome_Produto: TStringField;
    mOS_MatQtd: TFloatField;
    mOS_MatVlrTotal: TFloatField;
    mOS_MatVlr_Unitario: TFloatField;
    dsmOS_Mat: TDataSource;
    mOS_Serv: TClientDataSet;
    mOS_ServNome_Servico: TStringField;
    mOS_ServQtd: TIntegerField;
    mOS_ServVlrTotal: TFloatField;
    mOS_ServNome_Tecnico: TStringField;
    dsmOS_Serv: TDataSource;
    mOS_MatItem: TStringField;
    mOS_ServItem: TStringField;
    sdsOrdemServico_ItensTIPO_ATENDIMENTO: TStringField;
    cdsOrdemServico_ItensTIPO_ATENDIMENTO: TStringField;
    sdsOrdemServicoBAIRRO: TStringField;
    cdsOrdemServicoBAIRRO: TStringField;
    sdsOrdemServicoID_NOTA_SERVICO: TIntegerField;
    sdsOrdemServicoRASTREABILIDADE: TStringField;
    sdsOrdemServicoDTRECEBIMENTO: TDateField;
    cdsOrdemServicoID_NOTA_SERVICO: TIntegerField;
    cdsOrdemServicoRASTREABILIDADE: TStringField;
    cdsOrdemServicoDTRECEBIMENTO: TDateField;
    sdsOrdemServicoQTD_DIAS_ENT: TIntegerField;
    cdsOrdemServicoQTD_DIAS_ENT: TIntegerField;
    sdsOrdemServico_ItensREFERENCIA: TStringField;
    sdsOrdemServico_ProcID: TIntegerField;
    sdsOrdemServico_ProcITEM: TIntegerField;
    sdsOrdemServico_ProcITEM_PROC: TIntegerField;
    sdsOrdemServico_ProcID_PROCESSO: TIntegerField;
    sdsOrdemServico_ProcQTD_HORAS: TFloatField;
    sdsOrdemServico_ProcDTENTREGA: TDateField;
    sdsOrdemServico_ProcOBS: TMemoField;
    sdsOrdemServico_ProcQTD: TIntegerField;
    cdsOrdemServico_Proc: TClientDataSet;
    cdsOrdemServico_ItensREFERENCIA: TStringField;
    cdsOrdemServico_ItenssdsOrdemServico_Proc: TDataSetField;
    cdsOrdemServico_ProcID: TIntegerField;
    cdsOrdemServico_ProcITEM: TIntegerField;
    cdsOrdemServico_ProcITEM_PROC: TIntegerField;
    cdsOrdemServico_ProcID_PROCESSO: TIntegerField;
    cdsOrdemServico_ProcQTD_HORAS: TFloatField;
    cdsOrdemServico_ProcDTENTREGA: TDateField;
    cdsOrdemServico_ProcOBS: TMemoField;
    cdsOrdemServico_ProcQTD: TIntegerField;
    dsOrdemServico_Proc: TDataSource;
    sdsOrdemServico_ItensDM: TFloatField;
    cdsOrdemServico_ItensDM: TFloatField;
    sdsOrdemServico_ProcID_SERVICO_OS: TIntegerField;
    cdsOrdemServico_ProcID_SERVICO_OS: TIntegerField;
    sdsProcesso_Grupo: TSQLDataSet;
    dspProcesso_Grupo: TDataSetProvider;
    cdsProcesso_Grupo: TClientDataSet;
    dsProcesso_Grupo: TDataSource;
    cdsProcesso_GrupoID: TIntegerField;
    cdsProcesso_GrupoNOME: TStringField;
    sdsOrdemServico_ItensID_PROCESSO_GRUPO: TIntegerField;
    cdsOrdemServico_ItensID_PROCESSO_GRUPO: TIntegerField;
    sdsOrdemServico_ItensQTD: TIntegerField;
    cdsOrdemServico_ItensQTD: TIntegerField;
    sdsProcesso: TSQLDataSet;
    dspProcesso: TDataSetProvider;
    cdsProcesso: TClientDataSet;
    dsProcesso: TDataSource;
    cdsProcessoID: TIntegerField;
    cdsProcessoNOME: TStringField;
    qParametros_SerUSA_PROCESSO_OS: TStringField;
    qProduto: TSQLQuery;
    qProdutoID: TIntegerField;
    qProdutoNOME: TStringField;
    qProdutoREFERENCIA: TStringField;
    sdsServico_OS: TSQLDataSet;
    dspServico_OS: TDataSetProvider;
    cdsServico_OS: TClientDataSet;
    cdsServico_OSID: TIntegerField;
    cdsServico_OSNOME: TStringField;
    dsServico_OS: TDataSource;
    sdsOrdemServico_ProcOBSAUX: TStringField;
    cdsOrdemServico_ProcOBSAUX: TStringField;
    cdsOrdemServico_MatlkUnidade: TStringField;
    qProdutoUNIDADE: TStringField;
    cdsProcessoTERCEIRO: TStringField;
    sdsOrdemServico_Terc: TSQLDataSet;
    sdsOrdemServico_TercID: TIntegerField;
    sdsOrdemServico_TercITEM: TIntegerField;
    sdsOrdemServico_TercITEM_TERC: TIntegerField;
    sdsOrdemServico_TercVALOR: TFloatField;
    cdsOrdemServico_ItenssdsOrdemServico_Terc: TDataSetField;
    cdsOrdemServico_Terc: TClientDataSet;
    cdsOrdemServico_TercID: TIntegerField;
    cdsOrdemServico_TercITEM: TIntegerField;
    cdsOrdemServico_TercITEM_TERC: TIntegerField;
    cdsOrdemServico_TercVALOR: TFloatField;
    dsOrdemServico_Terc: TDataSource;
    sdsOrdemServico_ItensOBS_CONDENTRADA: TMemoField;
    cdsOrdemServico_ItensOBS_CONDENTRADA: TMemoField;
    sdsOrdemServicoNUM_ORCAMENTO: TIntegerField;
    cdsOrdemServicoNUM_ORCAMENTO: TIntegerField;
    sdsOrdemServico_ProcDTCONCLUIDO: TDateField;
    sdsOrdemServico_ProcQTD_RESTANTE: TIntegerField;
    sdsOrdemServico_ProcQTD_CONCLUIDO: TIntegerField;
    cdsOrdemServico_ProcDTCONCLUIDO: TDateField;
    cdsOrdemServico_ProcQTD_RESTANTE: TIntegerField;
    cdsOrdemServico_ProcQTD_CONCLUIDO: TIntegerField;
    sdsOrdemServico_ProcDTENTRADA: TDateField;
    sdsOrdemServico_ProcHRENTRADA: TTimeField;
    sdsOrdemServico_ProcHRCONCLUIDO: TTimeField;
    cdsOrdemServico_ProcDTENTRADA: TDateField;
    cdsOrdemServico_ProcHRENTRADA: TTimeField;
    cdsOrdemServico_ProcHRCONCLUIDO: TTimeField;
    sdsOrdemServico_ItensDESCRICAO_SERVICO: TStringField;
    cdsOrdemServico_ItensDESCRICAO_SERVICO: TStringField;
    sdsOrdemServico_TercNOME_TERCEIRO: TStringField;
    cdsOrdemServico_TercNOME_TERCEIRO: TStringField;
    sdsOrdemServico_Proc: TSQLDataSet;
    sdsOrdemServico_ProcORDEM: TIntegerField;
    cdsOrdemServico_ProcORDEM: TIntegerField;
    cdsOrdemServico_ProcNOME_PROCESSO: TStringField;
    qProcesso: TSQLQuery;
    qProcessoID: TIntegerField;
    qProcessoNOME: TStringField;
    qServico_OS: TSQLQuery;
    qServico_OSID: TIntegerField;
    qServico_OSNOME: TStringField;
    cdsOrdemServico_ProcNOME_SERVICO_OS: TStringField;
    qVerifica_Baixa: TSQLQuery;
    qVerifica_BaixaCONTADOR: TIntegerField;
    sdsOrdemServico_ProcSTATUS: TStringField;
    cdsOrdemServico_ProcSTATUS: TStringField;
    sdsCons_Baixa: TSQLDataSet;
    dspCons_Baixa: TDataSetProvider;
    cdsCons_Baixa: TClientDataSet;
    dsCons_Baixa: TDataSource;
    sdsOrdemServico_ProcNUM_OS: TIntegerField;
    cdsOrdemServico_ProcNUM_OS: TIntegerField;
    cdsCons_BaixaID_OS: TIntegerField;
    cdsCons_BaixaNUM_OS: TIntegerField;
    cdsCons_BaixaORDEM: TIntegerField;
    cdsCons_BaixaITEM_PROC: TIntegerField;
    cdsCons_BaixaDTENTRADA: TDateField;
    cdsCons_BaixaHRENTRADA: TTimeField;
    cdsCons_BaixaDTSAIDA: TDateField;
    cdsCons_BaixaHRSAIDA: TTimeField;
    cdsCons_BaixaID_FUNCIONARIO: TIntegerField;
    cdsCons_BaixaQTD: TIntegerField;
    cdsCons_BaixaID_PROCESSO: TIntegerField;
    cdsCons_BaixaID_SERVICO_OS: TIntegerField;
    cdsCons_BaixaTOTAL_HORAS: TFloatField;
    cdsCons_BaixaTIPO_BAIXA: TStringField;
    cdsCons_BaixaNOME_FUNCIONARIO: TStringField;
    cdsCons_BaixaNUM_CARTAO: TIntegerField;
    cdsCons_BaixaNOME_PROCESSO: TStringField;
    cdsCons_BaixaNOME_SERVICO: TStringField;
    cdsCons_BaixaDTENTRADA2: TDateField;
    cdsCons_BaixaHRENTRADA2: TTimeField;
    cdsCons_BaixaDTSAIDA2: TDateField;
    cdsCons_BaixaHRSAIDA2: TTimeField;
    cdsCons_BaixaTOTAL_HORAS_PAUSA: TFloatField;
    sdsCons_Pausa: TSQLDataSet;
    dspCons_Pausa: TDataSetProvider;
    cdsCons_Pausa: TClientDataSet;
    dsCons_Pausa: TDataSource;
    cdsCons_PausaID_OS: TIntegerField;
    cdsCons_PausaID_PARADA: TIntegerField;
    cdsCons_PausaITEM: TIntegerField;
    cdsCons_PausaID: TIntegerField;
    cdsCons_PausaDTINICIO: TDateField;
    cdsCons_PausaHRINICIO: TTimeField;
    cdsCons_PausaDTFINAL: TDateField;
    cdsCons_PausaHRFINAL: TTimeField;
    cdsCons_PausaOBS: TStringField;
    cdsCons_PausaORDEM: TIntegerField;
    cdsCons_PausaTOTAL_HORAS: TFloatField;
    cdsCons_PausaNOME_PROCESSO: TStringField;
    cdsCons_PausaNOME_SERVICO_OS: TStringField;
    cdsOrdemServico_ConsultaNUM_ORCAMENTO: TIntegerField;
    sdsOrdemServico_MatQTD_ESTOQUE: TFloatField;
    cdsOrdemServico_MatQTD_ESTOQUE: TFloatField;
    cdsOrdemServico_MatclQtdEstoque_Pend: TFloatField;
    qVerBaixaOS: TSQLQuery;
    qVerBaixaOSCONT_BAIXAS: TIntegerField;
    qVerBaixaOSCONT_MAT: TIntegerField;
    sdsPRC_Atualiza_OS: TSQLDataSet;
    cdsOrdemServico_ConsultaPRODUZIDO: TStringField;
    cdsCons_BaixaDM: TFloatField;
    cdsCons_BaixaCALCULA_AREA: TStringField;
    cdsCons_BaixaVLR_HORA: TFloatField;
    cdsCons_BaixaVLR_CUSTO: TFloatField;
    qProdutoPRECO_CUSTO: TFloatField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioUSUARIO: TStringField;
    qParametros_UsuarioMOSTRAR_CUSTO_OS: TStringField;
    cdsCons_BaixaOBS: TStringField;
    sdsOrdemServico_Enc: TSQLDataSet;
    sdsOrdemServico_EncID: TIntegerField;
    sdsOrdemServico_EncDTPROCESSO: TDateField;
    sdsOrdemServico_EncHRPROCESSO: TTimeField;
    sdsOrdemServico_EncDTMATERIAL: TDateField;
    sdsOrdemServico_EncHRMATERIAL: TTimeField;
    sdsOrdemServico_EncID_FUNCIONARIO: TIntegerField;
    sdsOrdemServico_EncUSUARIO: TStringField;
    sdsOrdemServico_EncPROCESSO: TStringField;
    sdsOrdemServico_EncMATERIAL: TStringField;
    dspOrdemServico_Enc: TDataSetProvider;
    cdsOrdemServico_Enc: TClientDataSet;
    cdsOrdemServico_EncID: TIntegerField;
    cdsOrdemServico_EncDTPROCESSO: TDateField;
    cdsOrdemServico_EncHRPROCESSO: TTimeField;
    cdsOrdemServico_EncDTMATERIAL: TDateField;
    cdsOrdemServico_EncHRMATERIAL: TTimeField;
    cdsOrdemServico_EncID_FUNCIONARIO: TIntegerField;
    cdsOrdemServico_EncUSUARIO: TStringField;
    cdsOrdemServico_EncPROCESSO: TStringField;
    cdsOrdemServico_EncMATERIAL: TStringField;
    dsOrdemServico_Enc: TDataSource;
    sdsOrdemServico_EncOBS: TMemoField;
    cdsOrdemServico_EncOBS: TMemoField;
    cdsOrdemServico_ConsultaDTPROCESSO: TDateField;
    cdsOrdemServico_ConsultaDTMATERIAL: TDateField;
    cdsOrdemServico_ConsultaHRPROCESSO: TTimeField;
    cdsOrdemServico_ConsultaHRMATERIAL: TTimeField;
    cdsOrdemServico_ConsultaPROCESSO: TStringField;
    cdsOrdemServico_ConsultaMATERIAL: TStringField;
    sdsOrdemServico_MatTIPO: TStringField;
    sdsOrdemServico_MatDTTIPO: TDateField;
    sdsOrdemServico_MatUSUARIO_TIPO: TStringField;
    cdsOrdemServico_MatTIPO: TStringField;
    cdsOrdemServico_MatDTTIPO: TDateField;
    cdsOrdemServico_MatUSUARIO_TIPO: TStringField;
    sdsOrdemServico_ProcRETRABALHO: TStringField;
    cdsOrdemServico_ProcRETRABALHO: TStringField;
    cdsCons_BaixaRETRABALHO: TStringField;
    sdsOrdemServicoNOME_CONTATO: TStringField;
    cdsOrdemServicoNOME_CONTATO: TStringField;
    sdsOrdemServico_ItensTIPO_REVESTIMENTO: TStringField;
    sdsOrdemServico_ItensQTD_MES_GARANTIA: TIntegerField;
    sdsOrdemServico_ItensPARALELO: TFloatField;
    sdsOrdemServico_ItensPARALELO_TOL: TFloatField;
    sdsOrdemServico_ItensDIAMETRO: TFloatField;
    sdsOrdemServico_ItensDIAMETRO_TOL: TFloatField;
    sdsOrdemServico_ItensBATIMENTO: TFloatField;
    sdsOrdemServico_ItensBATIMENTO_TOL: TFloatField;
    sdsOrdemServico_ItensCOMPRIMENTO: TFloatField;
    sdsOrdemServico_ItensCOMPRIMENTO_TOL: TFloatField;
    sdsOrdemServico_ItensRUGOSIDADE: TFloatField;
    sdsOrdemServico_ItensRUGOSIDADE_DES: TFloatField;
    sdsOrdemServico_ItensSMETAL: TFloatField;
    sdsOrdemServico_ItensVALIDADE_DIAS: TIntegerField;
    cdsOrdemServico_ItensTIPO_REVESTIMENTO: TStringField;
    cdsOrdemServico_ItensQTD_MES_GARANTIA: TIntegerField;
    cdsOrdemServico_ItensPARALELO: TFloatField;
    cdsOrdemServico_ItensPARALELO_TOL: TFloatField;
    cdsOrdemServico_ItensDIAMETRO: TFloatField;
    cdsOrdemServico_ItensDIAMETRO_TOL: TFloatField;
    cdsOrdemServico_ItensBATIMENTO: TFloatField;
    cdsOrdemServico_ItensBATIMENTO_TOL: TFloatField;
    cdsOrdemServico_ItensCOMPRIMENTO: TFloatField;
    cdsOrdemServico_ItensCOMPRIMENTO_TOL: TFloatField;
    cdsOrdemServico_ItensRUGOSIDADE: TFloatField;
    cdsOrdemServico_ItensRUGOSIDADE_DES: TFloatField;
    cdsOrdemServico_ItensSMETAL: TFloatField;
    cdsOrdemServico_ItensVALIDADE_DIAS: TIntegerField;
    sdsOrdemServico_Setor: TSQLDataSet;
    sdsOrdemServico_SetorID: TIntegerField;
    sdsOrdemServico_SetorITEM: TIntegerField;
    sdsOrdemServico_SetorITEM_SETOR: TIntegerField;
    sdsOrdemServico_SetorID_SETOR: TIntegerField;
    sdsOrdemServico_SetorTOTAL_HORA: TFloatField;
    sdsOrdemServico_SetorVLR_TOTAL: TFloatField;
    cdsOrdemServico_Setor: TClientDataSet;
    cdsOrdemServico_ItenssdsOrdemServico_Setor: TDataSetField;
    cdsOrdemServico_SetorID: TIntegerField;
    cdsOrdemServico_SetorITEM: TIntegerField;
    cdsOrdemServico_SetorITEM_SETOR: TIntegerField;
    cdsOrdemServico_SetorID_SETOR: TIntegerField;
    cdsOrdemServico_SetorTOTAL_HORA: TFloatField;
    cdsOrdemServico_SetorVLR_TOTAL: TFloatField;
    dsOrdemServico_Setor: TDataSource;
    dsOrdemServicoSetor_Mestre: TDataSource;
    sdsOrdemServico_Setor_Proc: TSQLDataSet;
    cdsOrdemServico_Setor_Proc: TClientDataSet;
    sdsOrdemServico_Setor_ProcID: TIntegerField;
    sdsOrdemServico_Setor_ProcITEM: TIntegerField;
    sdsOrdemServico_Setor_ProcITEM_SETOR: TIntegerField;
    sdsOrdemServico_Setor_ProcITEM_PROC: TIntegerField;
    sdsOrdemServico_Setor_ProcID_PROCESSO: TIntegerField;
    sdsOrdemServico_Setor_ProcDESCRICAO: TStringField;
    sdsOrdemServico_Setor_ProcTOTAL_HORA: TFloatField;
    sdsOrdemServico_Setor_ProcVLR_HORA: TFloatField;
    sdsOrdemServico_Setor_ProcVLR_TOTAL: TFloatField;
    cdsOrdemServico_SetorsdsOrdemServico_Setor_Proc: TDataSetField;
    cdsOrdemServico_Setor_ProcID: TIntegerField;
    cdsOrdemServico_Setor_ProcITEM: TIntegerField;
    cdsOrdemServico_Setor_ProcITEM_SETOR: TIntegerField;
    cdsOrdemServico_Setor_ProcITEM_PROC: TIntegerField;
    cdsOrdemServico_Setor_ProcID_PROCESSO: TIntegerField;
    cdsOrdemServico_Setor_ProcDESCRICAO: TStringField;
    cdsOrdemServico_Setor_ProcTOTAL_HORA: TFloatField;
    cdsOrdemServico_Setor_ProcVLR_HORA: TFloatField;
    cdsOrdemServico_Setor_ProcVLR_TOTAL: TFloatField;
    dsOrdemServico_Setor_Proc: TDataSource;
    qSetor: TSQLQuery;
    qSetorID: TIntegerField;
    qSetorNOME: TStringField;
    cdsOrdemServico_SetorclNome_Setor: TStringField;
    cdsOrdemServico_Setor_ProcclNome_Processo: TStringField;
    sdsEnsaio_OS: TSQLDataSet;
    cdsEnsaio_OS: TClientDataSet;
    dsEnsaio_OS: TDataSource;
    dspEnsaio_OS: TDataSetProvider;
    cdsEnsaio_OSID: TIntegerField;
    cdsEnsaio_OSNOME: TStringField;
    sdsOrdemServico_Ensaio: TSQLDataSet;
    sdsOrdemServico_EnsaioID: TIntegerField;
    sdsOrdemServico_EnsaioITEM: TIntegerField;
    sdsOrdemServico_EnsaioITEM_ENSAIO: TIntegerField;
    sdsOrdemServico_EnsaioID_ENSAIO: TIntegerField;
    sdsOrdemServico_EnsaioDESCRICAO: TStringField;
    cdsOrdemServico_Ensaio: TClientDataSet;
    cdsOrdemServico_ItenssdsOrdemServico_Ensaio: TDataSetField;
    cdsOrdemServico_EnsaioID: TIntegerField;
    cdsOrdemServico_EnsaioITEM: TIntegerField;
    cdsOrdemServico_EnsaioITEM_ENSAIO: TIntegerField;
    cdsOrdemServico_EnsaioID_ENSAIO: TIntegerField;
    cdsOrdemServico_EnsaioDESCRICAO: TStringField;
    dsOrdemServico_Ensaio: TDataSource;
    cdsOrdemServico_EnsaioclNome_Ensaio: TStringField;
    qFilial_Custo: TSQLQuery;
    qFilial_CustoID: TIntegerField;
    qFilial_CustoPERC_ICMS: TFloatField;
    qFilial_CustoPERC_MARK_UP: TFloatField;
    qFilial_CustoPERC_COMISSAO: TFloatField;
    qFilial_CustoPERC_FRETE: TFloatField;
    qFilial_CustoPERC_IR_CONTRSOCIAL: TFloatField;
    qFilial_CustoPERC_MARGEM_OPE: TFloatField;
    qFilial_CustoPERC_CUSTO_FINANCEIRO: TFloatField;
    qFilial_CustoPRAZO_BASE: TIntegerField;
    cdsFilialPERC_PIS: TFloatField;
    cdsFilialPERC_COFINS: TFloatField;
    cdsFilialPERC_ISS: TFloatField;
    sdsOrdemServico_ItensTIPO_PROD: TStringField;
    cdsOrdemServico_ItensTIPO_PROD: TStringField;
    sdsOrdemServico_ItensALTURA: TFloatField;
    sdsOrdemServico_ItensLARGURA: TFloatField;
    cdsOrdemServico_ItensALTURA: TFloatField;
    cdsOrdemServico_ItensLARGURA: TFloatField;
    qFilial_CustoPERC_IR_PJ: TFloatField;
    sdsOrdemServico_Custo: TSQLDataSet;
    cdsOrdemServico_Custo: TClientDataSet;
    dsOrdemServico_Custo: TDataSource;
    sdsOrdemServico_CustoID: TIntegerField;
    sdsOrdemServico_CustoVLR_MATERIAIS: TFloatField;
    sdsOrdemServico_CustoVLR_PROCESSO: TFloatField;
    sdsOrdemServico_CustoVLR_TERCEIRO: TFloatField;
    sdsOrdemServico_CustoVLR_SETOR: TFloatField;
    sdsOrdemServico_CustoTOTAL_CUSTO: TFloatField;
    sdsOrdemServico_CustoPERC_ICMS: TFloatField;
    sdsOrdemServico_CustoPERC_MARKUP: TFloatField;
    sdsOrdemServico_CustoPERC_PISCOFINS: TFloatField;
    sdsOrdemServico_CustoPERC_ISSQN: TFloatField;
    sdsOrdemServico_CustoPERC_COMISSAO: TFloatField;
    sdsOrdemServico_CustoPERC_FRETE: TFloatField;
    sdsOrdemServico_CustoPERC_IR_CSOCIAL: TFloatField;
    sdsOrdemServico_CustoPERC_MARG1: TFloatField;
    sdsOrdemServico_CustoPERC_MARG2: TFloatField;
    sdsOrdemServico_CustoPRECO: TFloatField;
    sdsOrdemServico_CustoVLR_PROPOSTA: TFloatField;
    sdsOrdemServico_CustoPERC_CUSTO_FINANCEIRO: TFloatField;
    sdsOrdemServico_CustoPRAZO_DIAS: TIntegerField;
    sdsOrdemServico_CustoPERC_CUSTO_PERIODO: TFloatField;
    sdsOrdemServico_CustoVLR_MARGEM: TFloatField;
    sdsOrdemServico_CustoVLR_IR_PJ: TFloatField;
    sdsOrdemServico_CustoVLR_MARGEM_LIQ: TFloatField;
    sdsOrdemServico_CustoPERC_MARGEM_LIQ: TFloatField;
    cdsOrdemServicosdsOrdemServico_Custo: TDataSetField;
    cdsOrdemServico_CustoID: TIntegerField;
    cdsOrdemServico_CustoVLR_MATERIAIS: TFloatField;
    cdsOrdemServico_CustoVLR_PROCESSO: TFloatField;
    cdsOrdemServico_CustoVLR_TERCEIRO: TFloatField;
    cdsOrdemServico_CustoVLR_SETOR: TFloatField;
    cdsOrdemServico_CustoTOTAL_CUSTO: TFloatField;
    cdsOrdemServico_CustoPERC_ICMS: TFloatField;
    cdsOrdemServico_CustoPERC_MARKUP: TFloatField;
    cdsOrdemServico_CustoPERC_PISCOFINS: TFloatField;
    cdsOrdemServico_CustoPERC_ISSQN: TFloatField;
    cdsOrdemServico_CustoPERC_COMISSAO: TFloatField;
    cdsOrdemServico_CustoPERC_FRETE: TFloatField;
    cdsOrdemServico_CustoPERC_IR_CSOCIAL: TFloatField;
    cdsOrdemServico_CustoPERC_MARG1: TFloatField;
    cdsOrdemServico_CustoPERC_MARG2: TFloatField;
    cdsOrdemServico_CustoPRECO: TFloatField;
    cdsOrdemServico_CustoVLR_PROPOSTA: TFloatField;
    cdsOrdemServico_CustoPERC_CUSTO_FINANCEIRO: TFloatField;
    cdsOrdemServico_CustoPRAZO_DIAS: TIntegerField;
    cdsOrdemServico_CustoPERC_CUSTO_PERIODO: TFloatField;
    cdsOrdemServico_CustoVLR_MARGEM: TFloatField;
    cdsOrdemServico_CustoVLR_IR_PJ: TFloatField;
    cdsOrdemServico_CustoVLR_MARGEM_LIQ: TFloatField;
    cdsOrdemServico_CustoPERC_MARGEM_LIQ: TFloatField;
    cdsOrdemServico_SetorclPerc_Preco: TFloatField;
    cdsOrdemServico_MatclPerc_Preco: TFloatField;
    cdsOrdemServico_TercclPerc_Preco: TFloatField;
    cdsOrdemServico_Setor_ProcclPerc_Preco: TFloatField;
    qProximo_NumOrc: TSQLQuery;
    qProximo_NumOrcNUM_ORCAMENTO: TIntegerField;
    qVerAprov: TSQLQuery;
    qVerAprovTIPO: TStringField;
    cdsOrdemServico_ConsultaVLR_PROPOSTA: TFloatField;
    cdsOrdemServico_ConsultaPRECO: TFloatField;
    cdsOrdemServico_ConsultaDESC_TIPO_ORC: TStringField;
    cdsOrdemServico_ConsultaTIPO_APROV_ORC: TStringField;
    cdsEnsaio_OSINATIVO: TStringField;
    sdsOrdemServico_EnsaioCONFIRMADO: TStringField;
    cdsOrdemServico_EnsaioCONFIRMADO: TStringField;
    qEnsaio: TSQLQuery;
    qEnsaioID: TIntegerField;
    qEnsaioNOME: TStringField;
    qEnsaioINATIVO: TStringField;
    sdsOrdemServico_ItensESCOPO: TMemoField;
    cdsOrdemServico_ItensESCOPO: TMemoField;
    sdsOrdemServicoUSUARIO: TStringField;
    cdsOrdemServicoUSUARIO: TStringField;
    qUsuario: TSQLQuery;
    qUsuarioCODIGO: TIntegerField;
    sdsOrdemServico_Ass: TSQLDataSet;
    cdsOrdemServico_Ass: TClientDataSet;
    sdsOrdemServico_AssID: TIntegerField;
    sdsOrdemServico_AssITEM: TIntegerField;
    sdsOrdemServico_AssID_FUNCIONARIO: TIntegerField;
    cdsOrdemServicosdsOrdemServico_Ass: TDataSetField;
    cdsOrdemServico_AssID: TIntegerField;
    cdsOrdemServico_AssITEM: TIntegerField;
    cdsOrdemServico_AssID_FUNCIONARIO: TIntegerField;
    dsOrdemServico_Ass: TDataSource;
    cdsOrdemServico_AssclNomeFuncionario: TStringField;
    sdsFuncionarioMOSTRAR_ORC: TStringField;
    cdsFuncionarioMOSTRAR_ORC: TStringField;
    cdsOrdemServico_AssclFuncao: TStringField;
    sdsFuncionarioFUNCAO: TStringField;
    cdsFuncionarioFUNCAO: TStringField;
    sdsOrdemServicoID_TRANSPORTADORA: TIntegerField;
    cdsOrdemServicoID_TRANSPORTADORA: TIntegerField;
    sdsTransp: TSQLDataSet;
    dspTransp: TDataSetProvider;
    cdsTransp: TClientDataSet;
    dsTransp: TDataSource;
    cdsTranspCODIGO: TIntegerField;
    cdsTranspNOME: TStringField;
    cdsTranspFANTASIA: TStringField;
    cdsTranspCIDADE: TStringField;
    sdsOrdemServicoTIPO_FRETE: TStringField;
    cdsOrdemServicoTIPO_FRETE: TStringField;
    cdsOrdemServico_ConsultaNOME_VENDEDOR: TStringField;
    sdsOrdemServico_ItensCALCULA_PI: TStringField;
    cdsOrdemServico_ItensCALCULA_PI: TStringField;
    sdsOrdemServico_ItensCAMADA: TStringField;
    cdsOrdemServico_ItensCAMADA: TStringField;
    sdsOrdemServico_ItensQTD_FATURADO: TIntegerField;
    sdsOrdemServico_ItensQTD_RESTANTE: TIntegerField;
    sdsOrdemServico_ItensPRODUZIDO: TStringField;
    cdsOrdemServico_ItensQTD_FATURADO: TIntegerField;
    cdsOrdemServico_ItensQTD_RESTANTE: TIntegerField;
    cdsOrdemServico_ItensPRODUZIDO: TStringField;
    sdsOrdemServicoCOPIADO_PEDIDO: TStringField;
    cdsOrdemServicoCOPIADO_PEDIDO: TStringField;
    cdsOrdemServico_ConsultaCOPIADO_PEDIDO: TStringField;
    sdsOrdemServicoDTINICIO: TDateField;
    cdsOrdemServicoDTINICIO: TDateField;
    cdsOrdemServico_ConsultaDTRECEBIMENTO: TDateField;
    sdsOrdemServico_Lib: TSQLDataSet;
    sdsOrdemServico_LibID: TIntegerField;
    sdsOrdemServico_LibITEM: TIntegerField;
    sdsOrdemServico_LibITEM_LIB: TIntegerField;
    sdsOrdemServico_LibQTD: TFloatField;
    sdsOrdemServico_LibDTLIBERADA: TDateField;
    sdsOrdemServico_LibHRLIBERADA: TTimeField;
    cdsOrdemServico_Lib: TClientDataSet;
    cdsOrdemServico_ItenssdsOrdemServico_Lib: TDataSetField;
    cdsOrdemServico_LibID: TIntegerField;
    cdsOrdemServico_LibITEM: TIntegerField;
    cdsOrdemServico_LibITEM_LIB: TIntegerField;
    cdsOrdemServico_LibQTD: TFloatField;
    cdsOrdemServico_LibDTLIBERADA: TDateField;
    cdsOrdemServico_LibHRLIBERADA: TTimeField;
    dsOrdemServico_Lib: TDataSource;
    sdsOrdemServico_ItensQTD_LIBERADA: TFloatField;
    cdsOrdemServico_ItensQTD_LIBERADA: TFloatField;
    sdsPedido_Item: TSQLDataSet;
    dspPedido_Item: TDataSetProvider;
    cdsPedido_Item: TClientDataSet;
    dsPedido_Item: TDataSource;
    sdsPedido_ItemID: TIntegerField;
    sdsPedido_ItemITEM: TIntegerField;
    sdsPedido_ItemQTD: TFloatField;
    sdsPedido_ItemQTD_FATURADO: TFloatField;
    sdsPedido_ItemQTD_RESTANTE: TFloatField;
    sdsPedido_ItemQTD_LIBERADA: TFloatField;
    cdsPedido_ItemID: TIntegerField;
    cdsPedido_ItemITEM: TIntegerField;
    cdsPedido_ItemQTD: TFloatField;
    cdsPedido_ItemQTD_FATURADO: TFloatField;
    cdsPedido_ItemQTD_RESTANTE: TFloatField;
    cdsPedido_ItemQTD_LIBERADA: TFloatField;
    sdsOrdemServico_LibQTD_LIB_PED: TFloatField;
    cdsOrdemServico_LibQTD_LIB_PED: TFloatField;
    sdsBaixa_Pedido: TSQLDataSet;
    sdsBaixa_PedidoID: TIntegerField;
    sdsBaixa_PedidoID_PEDIDO: TIntegerField;
    sdsBaixa_PedidoITEM_PEDIDO: TIntegerField;
    sdsBaixa_PedidoDTBAIXA: TDateField;
    sdsBaixa_PedidoQTD: TFloatField;
    sdsBaixa_PedidoNUM_PEDIDO: TIntegerField;
    sdsBaixa_PedidoPEDIDO_CLIENTE: TStringField;
    sdsBaixa_PedidoID_MOVESTOQUE: TIntegerField;
    sdsBaixa_PedidoTIPO_REG: TStringField;
    sdsBaixa_PedidoTIPO_MOV: TStringField;
    dspBaixa_Pedido: TDataSetProvider;
    cdsBaixa_Pedido: TClientDataSet;
    cdsBaixa_PedidoID: TIntegerField;
    cdsBaixa_PedidoID_PEDIDO: TIntegerField;
    cdsBaixa_PedidoITEM_PEDIDO: TIntegerField;
    cdsBaixa_PedidoDTBAIXA: TDateField;
    cdsBaixa_PedidoQTD: TFloatField;
    cdsBaixa_PedidoNUM_PEDIDO: TIntegerField;
    cdsBaixa_PedidoPEDIDO_CLIENTE: TStringField;
    cdsBaixa_PedidoID_MOVESTOQUE: TIntegerField;
    cdsBaixa_PedidoTIPO_REG: TStringField;
    cdsBaixa_PedidoTIPO_MOV: TStringField;
    dsBaixa_Pedido: TDataSource;
    sdsBaixa_PedidoID_OS: TIntegerField;
    cdsBaixa_PedidoID_OS: TIntegerField;
    sdsPedido_ItemNUM_PEDIDO: TIntegerField;
    sdsPedido_ItemPEDIDO_CLIENTE: TStringField;
    cdsPedido_ItemNUM_PEDIDO: TIntegerField;
    cdsPedido_ItemPEDIDO_CLIENTE: TStringField;
    sdsBaixa_PedidoITEM_OS: TIntegerField;
    sdsBaixa_PedidoITEM_LIB_OS: TIntegerField;
    cdsBaixa_PedidoITEM_OS: TIntegerField;
    cdsBaixa_PedidoITEM_LIB_OS: TIntegerField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_PRODUTO_FILIAL: TStringField;
    qParametros_ProdSENHA_ALT_PROD_MOV: TStringField;
    qParametros_ProdMOSTRAR_OBS_CONSULTA: TStringField;
    qParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT: TStringField;
    qParametros_ProdUSA_MEDIDA: TStringField;
    qParametros_ProdUSA_QTD_EMBALAGEM: TStringField;
    qParametros_ProdOPCAO_APLICAR_MARGEM: TStringField;
    qParametros_ProdOPCAO_PRECO_CONSUMO: TStringField;
    qParametros_ProdGRAVA_CONSUMO_PRVENDA: TStringField;
    qParametros_ProdUSA_DESC_MAXIMO: TStringField;
    qParametros_ProdPRODUTO_PRECO_COR: TStringField;
    qParametros_ProdUSA_CONSUMO_COMB: TStringField;
    qParametros_ProdGERADORES_ELETRICOS: TStringField;
    sdsMarca_Montadora: TSQLDataSet;
    dspMarca_Montadora: TDataSetProvider;
    cdsMarca_Montadora: TClientDataSet;
    cdsMarca_MontadoraID: TIntegerField;
    cdsMarca_MontadoraNOME: TStringField;
    dsMarca_Montadora: TDataSource;
    sdsFabricanteMotor: TSQLDataSet;
    dspFabricanteMotor: TDataSetProvider;
    cdsFabricanteMotor: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dsFabricanteMotor: TDataSource;
    sdsFabricanteGerador: TSQLDataSet;
    dspFabricanteGerador: TDataSetProvider;
    cdsFabricanteGerador: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dsFabricanteGerador: TDataSource;
    dsmProduto: TDataSource;
    sdsProdutoGerador: TSQLDataSet;
    cdsProdutoGerador: TClientDataSet;
    cdsProdutoGeradorID: TIntegerField;
    cdsProdutoGeradorID_MOTADORA: TIntegerField;
    cdsProdutoGeradorID_FABRICANTE_MOTOR: TIntegerField;
    cdsProdutoGeradorMODELO: TStringField;
    cdsProdutoGeradorNRO_SERIE: TStringField;
    cdsProdutoGeradorPOTENCIA: TStringField;
    cdsProdutoGeradorANO_FABR: TSmallintField;
    cdsProdutoGeradorNRO_SERIE_EQUIP: TStringField;
    cdsProdutoGeradorID_FABRICANTE_GERADOR: TIntegerField;
    cdsProdutoGeradorMODELO_GERADOR: TStringField;
    cdsProdutoGeradorNRO_SERIE_GERADOR: TStringField;
    cdsProdutoGeradorMODELO_USCA: TStringField;
    cdsProdutoGeradorTENSAO: TStringField;
    dsProdutoGerador: TDataSource;
    sdsProduto: TSQLDataSet;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    cdsProdutosdsProdutoGerador: TDataSetField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoINATIVO: TStringField;
    qParametros_SerPRECO_CUSTO_MATERIAL: TStringField;
    sdsOrdemServico_Setor_ProcUNIDADE: TStringField;
    cdsOrdemServico_Setor_ProcUNIDADE: TStringField;
    sdsOrdemServico_ProcUNIDADE: TStringField;
    cdsOrdemServico_ProcUNIDADE: TStringField;
    sdsUnidade: TSQLDataSet;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    dspUnidade: TDataSetProvider;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeNOME: TStringField;
    sdsOrdemServico_SetorUNIDADE: TStringField;
    cdsOrdemServico_SetorUNIDADE: TStringField;
    cdsProcessoUNIDADE: TStringField;
    cdsOrdemServico_ConsultaFATURADO_NOTA: TStringField;
    sdsOrdemServico_LibID_MOVESTOQUE: TIntegerField;
    cdsOrdemServico_LibID_MOVESTOQUE: TIntegerField;
    sdsPedido_ItemVLR_UNITARIO: TFloatField;
    cdsPedido_ItemVLR_UNITARIO: TFloatField;
    sdsPedido_ItemPERC_TRIBICMS: TFloatField;
    sdsPedido_ItemPERC_ICMS: TFloatField;
    sdsPedido_ItemPERC_IPI: TFloatField;
    cdsPedido_ItemPERC_TRIBICMS: TFloatField;
    cdsPedido_ItemPERC_ICMS: TFloatField;
    cdsPedido_ItemPERC_IPI: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure dspOrdemServicoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsOrdemServicoNewRecord(DataSet: TDataSet);
    procedure cdsOrdemServico_ItensNewRecord(DataSet: TDataSet);
    procedure cdsOrdemServico_ItensBeforePost(DataSet: TDataSet);
    procedure cdsOrdemServico_MatNewRecord(DataSet: TDataSet);
    procedure cdsOrdemServico_MatCalcFields(DataSet: TDataSet);
    procedure cdsOrdemServico_ProcCalcFields(DataSet: TDataSet);
    procedure cdsOrdemServico_ProcNewRecord(DataSet: TDataSet);
    procedure cdsOrdemServico_EncBeforePost(DataSet: TDataSet);
    procedure cdsOrdemServico_SetorCalcFields(DataSet: TDataSet);
    procedure cdsOrdemServico_Setor_ProcCalcFields(DataSet: TDataSet);
    procedure cdsOrdemServico_EnsaioCalcFields(DataSet: TDataSet);
    procedure cdsOrdemServico_TercCalcFields(DataSet: TDataSet);
    procedure cdsOrdemServico_AssCalcFields(DataSet: TDataSet);
    procedure cdsProdutoAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgOS: String;
    ctCommand: String;
    ctConsulta: String;
    ctConsulta_Itens: String;
    ctHistProduto: String;
    ctCliente: String;
    ctConsulta_Mat: String;
    ctOSItem_Imp: String;
    ctCsmOsMotorServ: String;
    ctBaixa_Pedido: String;
    ctqProduto: String; 

    vMSGNotaGerada: String;
    vConfSelecao: Boolean;
    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir(Tipo: String);
    procedure prc_Gravar;
    procedure prc_Excluir;
    procedure prc_Abrir_cdsCliente;

    procedure prc_Inserir_Itens;
    procedure prc_Excluir_Itens;

    procedure prc_Inserir_Proc;

    procedure prc_Inserir_Setor;
    procedure prc_Inserir_Setor_Proc;

    procedure prc_Inserir_Mat;
    procedure prc_Inserir_Terc;

    procedure prc_Inserir_Ensaio;
    procedure prc_Inserir_ASS;

    procedure prc_Somar_Setor;

    procedure prc_Abrir_Baixa_Pedido(ID: Integer; ID_OS, Item_OS, Item_Lib_OS: Integer);
    procedure prc_Monta_qProduto(ID : Integer ; Referencia : String);

    function fnc_Existe_NumOS(Num_OS, ID: Integer): Boolean; 
  end;

var
  DMCadOrdemServico: TDMCadOrdemServico;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, Math;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadOrdemServico.prc_Inserir(Tipo: String);
var
  vAux: Integer;
begin
  if not cdsOrdemServico.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ORDEMSERVICO',0);

  cdsOrdemServico.Insert;
  cdsOrdemServicoID.AsInteger := vAux;
  cdsOrdemServicoDTEMISSAO.AsDateTime  := Date;
  cdsOrdemServicoTP_ORCAMENTO.AsString := Tipo;

  qUsuario.Close;
  qUsuario.ParamByName('USUARIO_LOG').AsString := vUsuario;
  qUsuario.Open;
  if not qUsuario.IsEmpty then
    cdsOrdemServicoID_FUNCIONARIO.AsInteger := qUsuarioCODIGO.AsInteger;
  cdsOrdemServicoUSUARIO.AsString := vUsuario;
end;

procedure TDMCadOrdemServico.prc_Excluir;
begin
  if not(cdsOrdemServico.Active) or (cdsOrdemServico.IsEmpty) then
    exit;
  cdsOrdemServico_Itens.First;
  while not cdsOrdemServico_Itens.Eof do
    prc_Excluir_Itens;
  cdsOrdemServico_Custo.First;
  while not cdsOrdemServico_Custo.Eof do
    cdsOrdemServico_Custo.Delete;
  cdsOrdemServico_Ass.First;
  while not cdsOrdemServico_Ass.Eof do
    cdsOrdemServico_Ass.Delete;
  cdsOrdemServico.Delete;
  cdsOrdemServico.ApplyUpdates(0);
end;

procedure TDMCadOrdemServico.prc_Gravar;
var
  ID: TTransactionDesc;
begin
  vMsgOS := '';
  if cdsOrdemServicoDTEMISSAO.AsDateTime <= 10 then
    vMsgOS := vMsgOS + #13 + '*** Data de emissão não informada!';
  if cdsOrdemServicoID_CLIENTE.AsInteger <= 0 then
    vMsgOS := vMsgOS + #13 + '*** Cliente não informado!';
  if cdsOrdemServicoTP_ORCAMENTO.AsString <> 'R' then
  begin
    if (trim(cdsOrdemServicoTIPO_SERVICO.AsString) = '') or (cdsOrdemServicoTIPO_SERVICO.IsNull)  then
      vMsgOS := vMsgOS + #13 + '*** Tipo não informado!';
  end;
  if (cdsOrdemServico_ItensID_PRODUTO.AsInteger <= 0) and (cdsOrdemServicoTP_ORCAMENTO.AsString <> 'R') then
    vMsgOS := vMsgOS + #13 + '*** Produto/Peça não informado!';
  if (trim(cdsOrdemServico_ItensNOME_PRODUTO.AsString) = '') and (cdsOrdemServicoTP_ORCAMENTO.AsString = 'R') then
    vMsgOS := vMsgOS + #13 + '*** Produto/Peça não informado!';
  if cdsOrdemServico_ItensQTD.AsInteger <= 0 then
    vMsgOS := vMsgOS + #13 + '*** Quantidade não informada!';
  if (cdsOrdemServico_Proc.RecordCount <= 0) and (cdsOrdemServicoTP_ORCAMENTO.AsString <> 'R') then
    vMsgOS := vMsgOS + #13 + '*** Não foi informado Processo na OS!';
  if vMsgOS <> '' then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    if cdsOrdemServico_Itens.State in [dsEdit,dsInsert] then
      cdsOrdemServico_Itens.Post;
    cdsOrdemServico.Post;
    cdsOrdemServico_Proc.First;
    while not cdsOrdemServico_Proc.Eof do
    begin
      cdsOrdemServico_Proc.Edit;
      cdsOrdemServico_ProcQTD.AsInteger := cdsOrdemServico_ItensQTD.AsInteger;
      if cdsOrdemServico_ProcDTENTREGA.AsDateTime <= 10 then
        cdsOrdemServico_ProcDTENTREGA.AsDateTime := cdsOrdemServicoDT_AGENDA.AsDateTime;
      cdsOrdemServico_ProcNUM_OS.AsInteger := cdsOrdemServicoNUM_OS.AsInteger;
      cdsOrdemServico_Proc.Post;
      cdsOrdemServico_Proc.Next;
    end;

    cdsOrdemServico.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    dmDatabase.scoDados.Rollback(ID);
    raise;
  end;

end;

procedure TDMCadOrdemServico.prc_Localizar(ID: Integer);
begin
  cdsOrdemServico.Close;
  sdsOrdemServico.CommandText := ctCommand;
  if ID <> 0 then
    sdsOrdemServico.CommandText := sdsOrdemServico.CommandText + ' WHERE OS.ID = ' + IntToStr(ID);
  cdsOrdemServico.Open;
end;

procedure TDMCadOrdemServico.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  SR: TSearchRec;
  Origem, Destino: string;
  vIndices: string;
  aIndices: array of string;
begin
  ctqProduto       := qProduto.SQL.Text;
  ctCommand        := sdsOrdemServico.CommandText;
  ctConsulta       := sdsOrdemServico_Consulta.CommandText;
  ctConsulta_Itens := sdsConsulta_Itens.CommandText;
  ctHistProduto    := sdsHistProduto.CommandText;
  ctCliente        := sdsCliente.CommandText;
  ctConsulta_Mat   := sdsConsulta_Mat.CommandText;
  ctBaixa_Pedido   := sdsBaixa_Pedido.CommandText;

  cdsFilial.Open;
  cdsServico_Int.Open;
  cdsProduto.Open;
  cdsMaterial.Open;
  cdsFuncionario.Open;
  cdsCondPgto.Open;
  qParametros.Close;
  qParametros.Open;
  cdsOSParametros.Open;
  cdsVendedor.Open;
  cdsProcesso_Grupo.Open;
  cdsProcesso.Open;
  cdsServico_OS.Open;
  cdsEnsaio_OS.Open;
  qParametros_Ser.Open;
  cdsTransp.Open;

  //*** Logs Implantado na versão .353
  LogProviderList.OnAdditionalValues := DoLogAdditionalValues;
  for i := 0 to (Self.ComponentCount - 1) do
  begin
    if (Self.Components[i] is TClientDataSet) then
    begin
      SetLength(aIndices, 0);
      vIndices := TClientDataSet(Components[i]).IndexFieldNames;
      while (vIndices <> EmptyStr) do
      begin
        SetLength(aIndices, Length(aIndices) + 1);
        x := Pos(';', vIndices);
        if (x = 0) then
        begin
          aIndices[Length(aIndices) - 1] := vIndices;
          vIndices := EmptyStr;
        end
        else
        begin
          aIndices[Length(aIndices) - 1] := Copy(vIndices, 1, x - 1);
          vIndices := Copy(vIndices, x + 1, MaxInt);
        end;
      end;
      LogProviderList.AddProvider(TClientDataSet(Self.Components[i]), TClientDataSet(Self.Components[i]).Name, aIndices);
    end;
  end;
  //***********************
  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
end;

procedure TDMCadOrdemServico.dspOrdemServicoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TDMCadOrdemServico.prc_Abrir_cdsCliente;
begin
  cdsCliente.Close;
  sdsCliente.CommandText := ctCliente +  ' WHERE PES.INATIVO = ' + QuotedStr('N');
  sdsCliente.CommandText := sdsCliente.CommandText + ' AND PES.TP_CLIENTE = ' + QuotedStr('S');
  cdsCliente.Open;
end;

procedure TDMCadOrdemServico.prc_Inserir_Itens;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Itens.Last;
  vItemAux := cdsOrdemServico_ItensITEM.AsInteger;

  cdsOrdemServico_Itens.Insert;
  cdsOrdemServico_ItensID.AsInteger       := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_ItensITEM.AsInteger     := vItemAux + 1;
  cdsOrdemServico_ItensSTATUS.AsString    := '1';
  cdsOrdemServico_ItensTIPO_PROD.AsString := 'C';
end;

procedure TDMCadOrdemServico.prc_Excluir_Itens;
begin
  cdsOrdemServico_Mat.First;
  while not cdsOrdemServico_Mat.Eof do
    cdsOrdemServico_Mat.Delete;
  cdsOrdemServico_Proc.First;
  while not cdsOrdemServico_Proc.Eof do
    cdsOrdemServico_Proc.Delete;
  cdsOrdemServico_Terc.First;
  while not cdsOrdemServico_Terc.Eof do
    cdsOrdemServico_Terc.Delete;
  cdsOrdemServico_Setor.First;
  while not cdsOrdemServico_Setor.Eof do
  begin
    cdsOrdemServico_Setor_Proc.First;
    while not cdsOrdemServico_Setor_Proc.Eof do
      cdsOrdemServico_Setor_Proc.Delete;
    cdsOrdemServico_Setor.Delete;
  end;
  cdsOrdemServico_Ensaio.First;
  while not cdsOrdemServico_Ensaio.Eof do
    cdsOrdemServico_Ensaio.Delete;
  cdsOrdemServico_Lib.First;
  while not cdsOrdemServico_Lib.Eof do
    cdsOrdemServico_Lib.Delete;
  cdsOrdemServico_Itens.Delete;
end;

procedure TDMCadOrdemServico.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

procedure TDMCadOrdemServico.cdsOrdemServicoNewRecord(DataSet: TDataSet);
begin
  cdsOrdemServicoTP_ORCAMENTO.AsString   := '1';
  cdsOrdemServicoENTREGUE.AsString       := 'N';
  cdsOrdemServicoCONCLUIDO.AsString      := 'N';
  cdsOrdemServicoDTEMISSAO.AsDateTime    := Date;
  cdsOrdemServicoHREMISSAO.AsDateTime    := Now;
  cdsOrdemServicoCOPIADO_PEDIDO.AsString := 'N';
end;

procedure TDMCadOrdemServico.cdsOrdemServico_ItensNewRecord(
  DataSet: TDataSet);
begin
  cdsOrdemServico_ItensCONCLUIDO.AsString     := 'N';
  cdsOrdemServico_ItensTIPO_GARANTIA.AsString := 'N';
  cdsOrdemServico_ItensITEM.AsInteger         := 1;
  cdsOrdemServico_ItensCALCULA_PI.AsString    := 'N';
  cdsOrdemServico_ItensQTD_FATURADO.AsInteger := 0;
  cdsOrdemServico_ItensQTD_RESTANTE.AsInteger := 0;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_ItensBeforePost(
  DataSet: TDataSet);
begin
  if cdsOrdemServico_ItensID_PRODUTO.AsInteger <= 0 then
    cdsOrdemServico_ItensID_PRODUTO.Clear;
  if cdsOrdemServico_ItensID_TECNICO.AsInteger <= 0 then
    cdsOrdemServico_ItensID_TECNICO.Clear;
end;

procedure TDMCadOrdemServico.prc_Inserir_Mat;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Mat.Last;
  vItemAux := cdsOrdemServico_MatITEM_MAT.AsInteger;

  cdsOrdemServico_Mat.Insert;
  cdsOrdemServico_MatID.AsInteger       := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_MatITEM.AsInteger     := cdsOrdemServico_ItensITEM.AsInteger;
  cdsOrdemServico_MatITEM_MAT.AsInteger := vItemAux + 1;
  cdsOrdemServico_MatFATURAR.AsString   := 'N';
end;

procedure TDMCadOrdemServico.cdsOrdemServico_MatNewRecord(
  DataSet: TDataSet);
begin
  cdsOrdemServico_MatFATURAR.AsString := 'S';
  cdsOrdemServico_MatTIPO.AsString    := 'S';
end;

function TDMCadOrdemServico.fnc_Existe_NumOS(Num_OS, ID: Integer): Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  sds  := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := 'SELECT COUNT(1)CONTADOR FROM ORDEMSERVICO OS '
                     + ' WHERE OS.NUM_OS = :NUM_OS '
                     + ' AND OS.tp_orcamento = ' + QuotedStr('1')
                     + ' AND OS.ID <> :ID ';
    sds.ParamByName('NUM_OS').AsInteger := Num_OS;
    sds.ParamByName('ID').AsInteger     := ID;
    sds.Open;
    if sds.FieldByName('CONTADOR').AsInteger > 0 then
    begin
      vMsgOS := '*** A OS ' + IntToStr(Num_OS) + ', já está cadastrada em outro registro!';
      Result := True;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

procedure TDMCadOrdemServico.prc_Inserir_Proc;
var
  vItemAux: Integer;
  vOrdemAux: Integer;
begin
  cdsOrdemServico_Proc.IndexFieldNames := 'ID;ITEM;ITEM_PROC;ORDEM';
  cdsOrdemServico_Proc.Last;
  vItemAux := cdsOrdemServico_ProcITEM_PROC.AsInteger;
  cdsOrdemServico_Proc.IndexFieldNames := 'ID;ITEM;ORDEM;ITEM_PROC';
  cdsOrdemServico_Proc.Last;
  vOrdemAux := cdsOrdemServico_ProcORDEM.AsInteger;
  cdsOrdemServico_Proc.Insert;
  cdsOrdemServico_ProcID.AsInteger        := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_ProcITEM.AsInteger      := cdsOrdemServico_ItensITEM.AsInteger;
  cdsOrdemServico_ProcITEM_PROC.AsInteger := vItemAux + 1;
  cdsOrdemServico_ProcORDEM.AsInteger     := vOrdemAux + 1;
  cdsOrdemServico_ProcQTD.AsFloat         := 0;
  cdsOrdemServico_ProcQTD_HORAS.AsFloat   := 0;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_MatCalcFields(
  DataSet: TDataSet);
begin
  if cdsOrdemServico_MatID_PRODUTO.AsInteger > 0 then
  begin
    prc_Monta_qProduto(cdsOrdemServico_MatID_PRODUTO.AsInteger,'');
    cdsOrdemServico_MatlkNomeProduto.AsString := qProdutoNOME.AsString;
    cdsOrdemServico_MatlkReferencia.AsString  := qProdutoREFERENCIA.AsString;
    cdsOrdemServico_MatlkUnidade.AsString     := qProdutoUNIDADE.AsString;
    qProduto.Close;

    cdsOrdemServico_MatclQtdEstoque_Pend.AsFloat := StrToFloat(FormatFloat('0.000000',cdsOrdemServico_MatQTD.AsFloat - cdsOrdemServico_MatQTD_ESTOQUE.AsFloat));
  end;
  if (cdsOrdemServico_Custo.Active) and (StrToFloat(FormatFloat('0.00',cdsOrdemServico_CustoVLR_PROPOSTA.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00',cdsOrdemServico_MatVLR_TOTAL.AsFloat)) > 0) then
    cdsOrdemServico_MatclPerc_Preco.AsFloat := StrToFloat(FormatFloat('0.00',(cdsOrdemServico_MatVLR_TOTAL.AsFloat
                                                    / cdsOrdemServico_CustoPRECO.AsFloat) * 100));
end;

procedure TDMCadOrdemServico.prc_Inserir_Terc;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Terc.Last;
  vItemAux := cdsOrdemServico_TercITEM_TERC.AsInteger;

  cdsOrdemServico_Terc.Insert;
  cdsOrdemServico_TercID.AsInteger        := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_TercITEM.AsInteger      := cdsOrdemServico_ItensITEM.AsInteger;
  cdsOrdemServico_TercITEM_TERC.AsInteger := vItemAux + 1;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_ProcCalcFields(
  DataSet: TDataSet);
begin
  qProcesso.Close;
  qProcesso.ParamByName('ID').AsInteger := cdsOrdemServico_ProcID_PROCESSO.AsInteger;
  qProcesso.Open;
  cdsOrdemServico_ProcNOME_PROCESSO.AsString := qProcessoNOME.AsString;
  qServico_OS.Close;
  qServico_OS.ParamByName('ID').AsInteger := cdsOrdemServico_ProcID_SERVICO_OS.AsInteger;
  qServico_OS.Open;
  cdsOrdemServico_ProcNOME_SERVICO_OS.AsString := qServico_OSNOME.AsString;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_ProcNewRecord(
  DataSet: TDataSet);
begin
  cdsOrdemServico_ProcSTATUS.AsString     := '';
  cdsOrdemServico_ProcRETRABALHO.AsString := 'N';
end;

procedure TDMCadOrdemServico.cdsOrdemServico_EncBeforePost(
  DataSet: TDataSet);
begin
  if cdsOrdemServico_EncDTMATERIAL.AsDateTime <= 10 then
  begin
    cdsOrdemServico_EncDTMATERIAL.Clear;
    cdsOrdemServico_EncHRMATERIAL.Clear;
  end;
  if cdsOrdemServico_EncDTPROCESSO.AsDateTime <= 10 then
  begin
    cdsOrdemServico_EncDTPROCESSO.Clear;
    cdsOrdemServico_EncHRPROCESSO.Clear;
  end;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_SetorCalcFields(
  DataSet: TDataSet);
begin
  cdsOrdemServico_SetorclNome_Setor.AsString := '';
  if cdsOrdemServico_SetorID_SETOR.AsInteger > 0 then
  begin
    qSetor.Close;
    qSetor.ParamByName('ID').AsInteger := cdsOrdemServico_SetorID_SETOR.AsInteger;
    qSetor.Open;
    cdsOrdemServico_SetorclNome_Setor.AsString := qSetorNOME.AsString;
  end;
  if (cdsOrdemServico_Custo.Active) and (StrToFloat(FormatFloat('0.00',cdsOrdemServico_CustoVLR_PROPOSTA.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00',cdsOrdemServico_SetorVLR_TOTAL.AsFloat)) > 0) then
    cdsOrdemServico_SetorclPerc_Preco.AsFloat := StrToFloat(FormatFloat('0.00',(cdsOrdemServico_SetorVLR_TOTAL.AsFloat
                                                    / cdsOrdemServico_CustoPRECO.AsFloat) * 100));
end;

procedure TDMCadOrdemServico.prc_Inserir_Setor;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Setor.Last;
  vItemAux := cdsOrdemServico_SetorITEM_SETOR.AsInteger;

  cdsOrdemServico_Setor.Insert;
  cdsOrdemServico_SetorID.AsInteger         := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_SetorITEM.AsInteger       := cdsOrdemServico_ItensITEM.AsInteger;
  cdsOrdemServico_SetorITEM_SETOR.AsInteger := vItemAux + 1;
end;

procedure TDMCadOrdemServico.prc_Inserir_Setor_Proc;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Setor_Proc.Last;
  vItemAux := cdsOrdemServico_Setor_ProcITEM_PROC.AsInteger;

  cdsOrdemServico_Setor_Proc.Insert;
  cdsOrdemServico_Setor_ProcID.AsInteger         := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_Setor_ProcITEM.AsInteger       := cdsOrdemServico_SetorITEM.AsInteger;
  cdsOrdemServico_Setor_ProcITEM_SETOR.AsInteger := cdsOrdemServico_SetorITEM_SETOR.AsInteger;
  cdsOrdemServico_Setor_ProcITEM_PROC.AsInteger  := vItemAux + 1;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_Setor_ProcCalcFields(
  DataSet: TDataSet);
begin
  cdsOrdemServico_Setor_ProcclNome_Processo.AsString := '';
  if cdsOrdemServico_Setor_ProcID_PROCESSO.AsInteger > 0 then
  begin
    qProcesso.Close;
    qProcesso.ParamByName('ID').AsInteger := cdsOrdemServico_Setor_ProcID_PROCESSO.AsInteger;
    qProcesso.Open;
    cdsOrdemServico_Setor_ProcclNome_Processo.AsString := qProcessoNOME.AsString;
  end;
  if (cdsOrdemServico_Custo.Active) and (StrToFloat(FormatFloat('0.00',cdsOrdemServico_CustoVLR_PROPOSTA.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00',cdsOrdemServico_Setor_ProcVLR_TOTAL.AsFloat)) > 0) then
    cdsOrdemServico_Setor_ProcclPerc_Preco.AsFloat := StrToFloat(FormatFloat('0.00',(cdsOrdemServico_Setor_ProcVLR_TOTAL.AsFloat
                                                    / cdsOrdemServico_CustoPRECO.AsFloat) * 100));
end;

procedure TDMCadOrdemServico.prc_Inserir_Ensaio;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Ensaio.Last;
  vItemAux := cdsOrdemServico_EnsaioITEM_ENSAIO.AsInteger;

  cdsOrdemServico_Ensaio.Insert;
  cdsOrdemServico_EnsaioID.AsInteger          := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_EnsaioITEM.AsInteger        := cdsOrdemServico_ItensITEM.AsInteger;
  cdsOrdemServico_EnsaioITEM_ENSAIO.AsInteger := vItemAux + 1;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_EnsaioCalcFields(
  DataSet: TDataSet);
begin
  cdsOrdemServico_EnsaioclNome_Ensaio.AsString := '';
  if cdsOrdemServico_EnsaioID_ENSAIO.AsInteger > 0 then
  begin
    qEnsaio.Close;
    qEnsaio.ParamByName('ID').AsInteger := cdsOrdemServico_EnsaioID_ENSAIO.AsInteger;
    qEnsaio.Open;
    //if qEnsaio.IsEmpty then
    //if cdsEnsaio_OS.Locate('ID',cdsOrdemServico_EnsaioID_ENSAIO.AsInteger,[loCaseInsensitive]) then
    cdsOrdemServico_EnsaioclNome_Ensaio.AsString := qEnsaioNOME.AsString;
  end;
end;

procedure TDMCadOrdemServico.cdsOrdemServico_TercCalcFields(
  DataSet: TDataSet);
begin
  if (cdsOrdemServico_Custo.Active) and (StrToFloat(FormatFloat('0.00',cdsOrdemServico_CustoVLR_PROPOSTA.AsFloat)) > 0) and
     (StrToFloat(FormatFloat('0.00',cdsOrdemServico_TercVALOR.AsFloat)) > 0) then
    cdsOrdemServico_TercclPerc_Preco.AsFloat := StrToFloat(FormatFloat('0.00',(cdsOrdemServico_TercVALOR.AsFloat
                                                    / cdsOrdemServico_CustoPRECO.AsFloat) * 100));
end;

procedure TDMCadOrdemServico.prc_Somar_Setor;
begin
  cdsOrdemServico_Setor.First;
  while not cdsOrdemServico_Setor.Eof do
  begin
    cdsOrdemServico_Setor.Edit;
    cdsOrdemServico_SetorVLR_TOTAL.AsFloat  := 0;
    cdsOrdemServico_SetorTOTAL_HORA.AsFloat := 0;

    cdsOrdemServico_Setor_Proc.First;
    while not cdsOrdemServico_Setor_Proc.Eof do
    begin
      cdsOrdemServico_SetorVLR_TOTAL.AsFloat  := cdsOrdemServico_SetorVLR_TOTAL.AsFloat + cdsOrdemServico_Setor_ProcVLR_TOTAL.AsFloat;
      cdsOrdemServico_SetorTOTAL_HORA.AsFloat := cdsOrdemServico_SetorTOTAL_HORA.AsFloat + cdsOrdemServico_Setor_ProcTOTAL_HORA.AsFloat;
      cdsOrdemServico_Setor_Proc.Next;
    end;
    cdsOrdemServico_Setor.Post;
    cdsOrdemServico_Setor.Next;
  end;

end;

procedure TDMCadOrdemServico.cdsOrdemServico_AssCalcFields(
  DataSet: TDataSet);
begin
  if cdsOrdemServico_AssID_FUNCIONARIO.AsInteger > 0 then
  begin
    if cdsFuncionario.Locate('CODIGO',cdsOrdemServico_AssID_FUNCIONARIO.AsInteger,[loCaseInsensitive]) then
    begin
      cdsOrdemServico_AssclNomeFuncionario.AsString := cdsFuncionarioNOME.AsString;
      cdsOrdemServico_AssclFuncao.AsString          := cdsFuncionarioFUNCAO.AsString;
    end
    else
      cdsOrdemServico_AssclNomeFuncionario.AsString := '';
  end;
end;

procedure TDMCadOrdemServico.prc_Inserir_ASS;
var
  vItemAux: Integer;
begin
  cdsOrdemServico_Ass.Last;
  vItemAux := cdsOrdemServico_AssITEM.AsInteger;

  cdsOrdemServico_Ass.Insert;
  cdsOrdemServico_AssID.AsInteger   := cdsOrdemServicoID.AsInteger;
  cdsOrdemServico_AssITEM.AsInteger := vItemAux + 1;
end;

procedure TDMCadOrdemServico.prc_Abrir_Baixa_Pedido(ID: Integer; ID_OS, Item_OS, Item_Lib_OS: Integer);
begin
  cdsBaixa_Pedido.Close;
  sdsBaixa_Pedido.CommandText := ctBaixa_Pedido;
  if ID <> 0 then
    sdsBaixa_Pedido.CommandText := sdsBaixa_Pedido.CommandText + ' WHERE ID = ' + IntToStr(ID)
  else
  if ID_OS > 0 then
  begin
    sdsBaixa_Pedido.CommandText := sdsBaixa_Pedido.CommandText + ' WHERE ID_OS = ' + IntToStr(ID_OS)
                                 + ' AND ITEM_OS = ' + IntToStr(Item_OS)
                                 + ' AND ITEM_LIB_OS = ' + IntToStr(Item_Lib_OS);
  end;
  cdsBaixa_Pedido.Open;
end;

procedure TDMCadOrdemServico.cdsProdutoAfterOpen(DataSet: TDataSet);
begin
  if not cdsProdutoGerador.Active then
    cdsProdutoGerador.Open;
end;

procedure TDMCadOrdemServico.prc_Monta_qProduto(ID: Integer;
  Referencia: String);
var
  vComando : String;
begin
  qProduto.Close;
  if trim(ctqProduto) = '' then
  begin
    MessageDlg('*** Produto não encontrado (ctqProduto)!',mtError, [mbOk], 0);
    exit;
  end;
  vComando := '';
  if ID > 0 then
    vComando := ' WHERE P.ID = ' + IntToStr(ID)
  else
  if trim(Referencia) <> '' then
    vComando := ' WHERE P.REFERENCIA = ' + QuotedStr(Referencia);
  qProduto.SQL.Text := ctqProduto + vComando;
  qProduto.Open;
end;

end.
