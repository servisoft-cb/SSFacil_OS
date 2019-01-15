unit UDMCadProduto;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, LogTypes, dialogs;

type
  TdmCadProduto = class(TDataModule)
    sdsProduto: TSQLDataSet;
    dspProduto: TDataSetProvider;
    cdsProduto: TClientDataSet;
    dsProduto: TDataSource;
    sdsProdutoID: TIntegerField;
    sdsProdutoREFERENCIA: TStringField;
    sdsProdutoNOME: TStringField;
    sdsProdutoPESOLIQUIDO: TFloatField;
    sdsProdutoPESOBRUTO: TFloatField;
    sdsProdutoINATIVO: TStringField;
    sdsProdutoID_CSTIPI: TIntegerField;
    sdsProdutoPERC_IPI: TFloatField;
    sdsProdutoPRECO_CUSTO: TFloatField;
    sdsProdutoPRECO_VENDA: TFloatField;
    sdsProdutoTIPO_REG: TStringField;
    sdsProdutoPOSSE_MATERIAL: TStringField;
    sdsProdutoESTOQUE: TStringField;
    sdsProdutoMATERIAL_OUTROS: TStringField;
    sdsProdutoUSUARIO: TStringField;
    sdsProdutoDTCAD: TDateField;
    sdsProdutoHRCAD: TTimeField;
    sdsProdutoCA: TStringField;
    sdsProdutoCOMPLEMENTO: TStringField;
    sdsProdutoID_NCM: TIntegerField;
    sdsProdutoORIGEM_PROD: TStringField;
    sdsProdutoOBS: TMemoField;
    sdsProdutoCODSITCF: TStringField;
    cdsProdutoID: TIntegerField;
    cdsProdutoREFERENCIA: TStringField;
    cdsProdutoNOME: TStringField;
    cdsProdutoPESOLIQUIDO: TFloatField;
    cdsProdutoPESOBRUTO: TFloatField;
    cdsProdutoINATIVO: TStringField;
    cdsProdutoID_CSTIPI: TIntegerField;
    cdsProdutoPERC_IPI: TFloatField;
    cdsProdutoPRECO_CUSTO: TFloatField;
    cdsProdutoPRECO_VENDA: TFloatField;
    cdsProdutoTIPO_REG: TStringField;
    cdsProdutoPOSSE_MATERIAL: TStringField;
    cdsProdutoESTOQUE: TStringField;
    cdsProdutoMATERIAL_OUTROS: TStringField;
    cdsProdutoUSUARIO: TStringField;
    cdsProdutoDTCAD: TDateField;
    cdsProdutoHRCAD: TTimeField;
    cdsProdutoCA: TStringField;
    cdsProdutoCOMPLEMENTO: TStringField;
    cdsProdutoID_NCM: TIntegerField;
    cdsProdutoORIGEM_PROD: TStringField;
    cdsProdutoOBS: TMemoField;
    cdsProdutoCODSITCF: TStringField;
    sdsUnidade: TSQLDataSet;
    dspUnidade: TDataSetProvider;
    cdsUnidade: TClientDataSet;
    dsUnidade: TDataSource;
    cdsUnidadeUNIDADE: TStringField;
    cdsUnidadeCONVERSOR: TFloatField;
    cdsUnidadeNOME: TStringField;
    sdsNCM: TSQLDataSet;
    dspNCM: TDataSetProvider;
    cdsNCM: TClientDataSet;
    dsNCM: TDataSource;
    cdsNCMID: TIntegerField;
    cdsNCMNCM: TStringField;
    sdsOrigem_Prod: TSQLDataSet;
    dspOrigem_Prod: TDataSetProvider;
    cdsOrigem_Prod: TClientDataSet;
    dsOrigem_Prod: TDataSource;
    cdsOrigem_ProdORIGEM: TStringField;
    cdsOrigem_ProdNOME: TStringField;
    sdsProdutoPERC_REDUCAOICMS: TFloatField;
    sdsProdutoTIPO_VENDA: TStringField;
    cdsProdutoPERC_REDUCAOICMS: TFloatField;
    cdsProdutoTIPO_VENDA: TStringField;
    sdsProdutoPERC_MARGEMLUCRO: TFloatField;
    cdsProdutoPERC_MARGEMLUCRO: TFloatField;
    qReferencia: TSQLQuery;
    qReferenciaREFERENCIA: TStringField;
    qReferenciaID: TIntegerField;
    sdsProdutoUNIDADE: TStringField;
    cdsProdutoUNIDADE: TStringField;
    sdsFornecedor: TSQLDataSet;
    dspFornecedor: TDataSetProvider;
    cdsFornecedor: TClientDataSet;
    dsFornecedor: TDataSource;
    cdsFornecedorCODIGO: TIntegerField;
    cdsFornecedorNOME: TStringField;
    sdsProdutoDT_ALTPRECO: TDateField;
    cdsProdutoDT_ALTPRECO: TDateField;
    sdsMaterial: TSQLDataSet;
    dspMaterial: TDataSetProvider;
    cdsMaterial: TClientDataSet;
    dsMaterial: TDataSource;
    cdsMaterialID: TIntegerField;
    cdsMaterialNOME: TStringField;
    cdsMaterialUNIDADE: TStringField;
    qParametros: TSQLQuery;
    qParametrosID: TIntegerField;
    qParametrosATUALIZAR_PRECO: TStringField;
    qParametrosUSA_VENDEDOR: TStringField;
    qParametrosUSA_CONSUMO: TStringField;
    cdsMaterialREFERENCIA: TStringField;
    sdsProdutoLOCALIZACAO: TStringField;
    cdsProdutoLOCALIZACAO: TStringField;
    sdsProdutoID_GRUPO: TIntegerField;
    sdsProdutoID_SUBGRUPO: TIntegerField;
    sdsProdutoID_MARCA: TIntegerField;
    cdsProdutoID_GRUPO: TIntegerField;
    cdsProdutoID_SUBGRUPO: TIntegerField;
    cdsProdutoID_MARCA: TIntegerField;
    sdsGrupo: TSQLDataSet;
    dspGrupo: TDataSetProvider;
    cdsGrupo: TClientDataSet;
    dsGrupo: TDataSource;
    sdsProduto_Consulta: TSQLDataSet;
    dspProduto_Consulta: TDataSetProvider;
    cdsProduto_Consulta: TClientDataSet;
    dsProduto_Consulta: TDataSource;
    cdsProduto_ConsultaID: TIntegerField;
    cdsProduto_ConsultaREFERENCIA: TStringField;
    cdsProduto_ConsultaNOME: TStringField;
    cdsProduto_ConsultaINATIVO: TStringField;
    cdsProduto_ConsultaPRECO_CUSTO: TFloatField;
    cdsProduto_ConsultaPRECO_VENDA: TFloatField;
    cdsProduto_ConsultaTIPO_REG: TStringField;
    cdsProduto_ConsultaESTOQUE: TStringField;
    cdsProduto_ConsultaCA: TStringField;
    cdsProduto_ConsultaCOMPLEMENTO: TStringField;
    cdsProduto_ConsultaID_NCM: TIntegerField;
    cdsProduto_ConsultaORIGEM_PROD: TStringField;
    cdsProduto_ConsultaPERC_MARGEMLUCRO: TFloatField;
    cdsProduto_ConsultaUNIDADE: TStringField;
    cdsProduto_ConsultaLOCALIZACAO: TStringField;
    cdsProduto_ConsultaID_GRUPO: TIntegerField;
    cdsProduto_ConsultaID_MARCA: TIntegerField;
    cdsProduto_ConsultaNCM: TStringField;
    cdsProduto_ConsultaNOMEMARCA: TStringField;
    sdsProdutoID_FORNECEDOR: TIntegerField;
    cdsProdutoID_FORNECEDOR: TIntegerField;
    qParametrosCADASTRAR_REF_DUP: TStringField;
    qParametrosMOSTRAR_NO_CONSUMO: TStringField;
    sdsProdutoCOD_BARRA: TStringField;
    cdsProdutoCOD_BARRA: TStringField;
    cdsProduto_ConsultaCOD_BARRA: TStringField;
    qParametrosUSA_COD_BARRAS: TStringField;
    qParametrosEMPRESA_VEICULO: TStringField;
    cdsNCMNOME: TStringField;
    sdsProdutoPERC_IMPORTACAO: TFloatField;
    cdsProdutoPERC_IMPORTACAO: TFloatField;
    cdsMaterialPRECO_CUSTO: TFloatField;
    sdsProdutoPERC_REDUCAOICMSSUBST: TFloatField;
    cdsProdutoPERC_REDUCAOICMSSUBST: TFloatField;
    sdsProdutoUSA_GRADE: TStringField;
    cdsProdutoUSA_GRADE: TStringField;
    qParametrosUSA_GRADE: TStringField;
    sdsProdutoID_GRADE: TIntegerField;
    cdsProdutoID_GRADE: TIntegerField;
    sdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField;
    cdsProdutoUSA_PERC_IMP_INTERESTADUAL: TStringField;
    qParametrosMOSTRAR_NOME_ETIQUETA: TStringField;
    cdsProduto_ConsultaQTD_ESTOQUE: TFMTBCDField;
    sdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField;
    cdsProdutoIMPRIMIR_ETIQUETA_NAV: TStringField;
    qParametrosUSA_POSICAO_CONSUMO: TStringField;
    sdsProdutoCARIMBO: TStringField;
    cdsProdutoCARIMBO: TStringField;
    cdsProduto_ConsultaNOMEGRUPO: TStringField;
    sdsProdutoPERC_QUEBRAMAT: TFloatField;
    cdsProdutoPERC_QUEBRAMAT: TFloatField;
    qParametrosEMPRESA_INJETADO: TStringField;
    qParametrosEMPRESA_CARTONAGEM: TStringField;
    qParametrosUSA_NUM_SERIE_PROD: TStringField;
    qParametrosPERC_IPI_PADRAO: TFloatField;
    qParametrosID_NCM_PADRAO: TIntegerField;
    cdsGrupoID: TIntegerField;
    cdsGrupoNOME: TStringField;
    cdsGrupoTIPO: TStringField;
    cdsGrupoNOME_AUX: TStringField;
    cdsGrupoCODIGO: TStringField;
    cdsProduto_ConsultaCOD_GRUPO: TStringField;
    qParametrosUSA_EDI: TStringField;
    qParametrosUSA_SPED: TStringField;
    sdsProdutoSPED_TIPO_ITEM: TStringField;
    cdsProdutoSPED_TIPO_ITEM: TStringField;
    sdsProdutoQTD_ESTOQUE_MIN: TFloatField;
    cdsProdutoQTD_ESTOQUE_MIN: TFloatField;
    sdsProdutoPERC_PIS: TFloatField;
    sdsProdutoPERC_COFINS: TFloatField;
    cdsProdutoPERC_PIS: TFloatField;
    cdsProdutoPERC_COFINS: TFloatField;
    sdsProdutoPERC_ICMS_IMP: TFloatField;
    sdsProdutoPERC_IPI_IMP: TFloatField;
    cdsProdutoPERC_ICMS_IMP: TFloatField;
    cdsProdutoPERC_IPI_IMP: TFloatField;
    cdsProduto_ConsultaREFERENCIA_PADRAO: TStringField;
    cdsProduto_ConsultaSPED_TIPO_ITEM: TStringField;
    cdsProduto_ConsultaCOD_PRINCIPAL: TIntegerField;
    sdsProdutoREFERENCIA_PADRAO: TStringField;
    sdsProdutoNUM_FCI: TStringField;
    cdsProdutoREFERENCIA_PADRAO: TStringField;
    cdsProdutoNUM_FCI: TStringField;
    qParametrosUSA_FCI: TStringField;
    sdsProdutoPERC_USADO_FCI: TFloatField;
    cdsProdutoPERC_USADO_FCI: TFloatField;
    sdsProdutoNCM_EX: TStringField;
    cdsProdutoNCM_EX: TStringField;
    sdsProdutoID_SITTRIB_CF: TIntegerField;
    cdsProdutoID_SITTRIB_CF: TIntegerField;
    sdsProdutoID_CLIENTE: TIntegerField;
    cdsProdutoID_CLIENTE: TIntegerField;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    qParametrosUSA_PRODUTO_CLIENTE: TStringField;
    sdsProdutoPRECO_REVENDA: TFMTBCDField;
    sdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField;
    sdsProdutoPRECO_CONSUMO: TFMTBCDField;
    cdsProdutoPRECO_REVENDA: TFMTBCDField;
    cdsProdutoPRECO_INDUSTRIALIZACAO: TFMTBCDField;
    cdsProdutoPRECO_CONSUMO: TFMTBCDField;
    sdsProdutoFOTO: TStringField;
    cdsProdutoFOTO: TStringField;
    qParametrosPRODUTO_PRECO_POR_FINALIDADE: TStringField;
    sdsProdutoREFERENCIA_SEQ: TIntegerField;
    cdsProdutoREFERENCIA_SEQ: TIntegerField;
    qParametrosTIPO_REG_PRODUTO_PADRAO: TStringField;
    qParametrosTIPO_CONSULTA_PRODUTO_PADRAO: TStringField;
    qParametros_Usuario: TSQLQuery;
    qParametros_UsuarioID: TIntegerField;
    qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioTIPO_CONSULTA_PRODUTO_PADRAO: TStringField;
    qParametros_UsuarioUSUARIO: TStringField;
    sdsProdutoID_COR: TIntegerField;
    cdsProdutoID_COR: TIntegerField;
    qParametrosINFORMAR_COR_MATERIAL: TStringField;
    qParametrosNUMERO_SERIE_INTERNO: TStringField;
    qFornecedor: TSQLQuery;
    qFornecedorCODIGO: TIntegerField;
    qFornecedorNOME: TStringField;
    qMaterial: TSQLQuery;
    qMaterialID: TIntegerField;
    qMaterialNOME: TStringField;
    qMaterialREFERENCIA: TStringField;
    cdsProdutoNCM: TStringField;
    qNCM: TSQLQuery;
    qNCMID: TIntegerField;
    qNCMNCM: TStringField;
    sdsProdutoCALCULAR_2_LADOS: TStringField;
    cdsProdutoCALCULAR_2_LADOS: TStringField;
    qParametrosEMPRESA_AMBIENTES: TStringField;
    cdsGrupoTIPO_PROD: TStringField;
    sdsProdutoPERC_VIDRO: TFloatField;
    cdsProdutoPERC_VIDRO: TFloatField;
    qParametrosINFORMAR_COR_PROD: TStringField;
    sdsProdutoID_LINHA: TIntegerField;
    cdsProdutoID_LINHA: TIntegerField;
    sdsLinha: TSQLDataSet;
    dspLinha: TDataSetProvider;
    cdsLinha: TClientDataSet;
    dsLinha: TDataSource;
    cdsLinhaID: TIntegerField;
    cdsLinhaCODIGO: TStringField;
    cdsLinhaNOME: TStringField;
    cdsLinhaUNIDADE: TStringField;
    cdsLinhaID_NCM: TIntegerField;
    qParametrosMOSTRAR_MARCAR_PROD: TStringField;
    qParametrosMOSTRAR_LINHA_PROD: TStringField;
    qParametrosMOSTRAR_EMBALAGEM: TStringField;
    qParametrosUSA_SETOR_CONSUMO: TStringField;
    qParametrosMOSTRAR_ATELIER_PROD: TStringField;
    sdsProdutoCOD_ANT: TStringField;
    cdsProdutoCOD_ANT: TStringField;
    qParametrosUSA_COD_BARRAS_PROPRIO: TStringField;
    sdsProdutoID_CFOP_NFCE: TIntegerField;
    cdsProdutoID_CFOP_NFCE: TIntegerField;
    qParametrosOPCAO_ESCOLHER_PRECO_COR: TStringField;
    sdsProdutoUSA_PRECO_COR: TStringField;
    cdsProdutoUSA_PRECO_COR: TStringField;
    qMaterialPRECO_CUSTO_MAT: TFloatField;
    qMaterialUSA_PRECO_COR: TStringField;
    qMaterialPRECO_CUSTO_COR: TFloatField;
    sdsProdutoUSA_COR: TStringField;
    cdsProdutoUSA_COR: TStringField;
    cdsProduto_ConsultaTIPO_REG_DESCRICAO: TStringField;
    sdsProdutoTRANSFER: TStringField;
    cdsProdutoTRANSFER: TStringField;
    sdsProdutoPRECO_CUSTO_TOTAL: TFloatField;
    cdsProdutoPRECO_CUSTO_TOTAL: TFloatField;
    qParametrosINFORMAR_COR_MATERIAL_RZ: TStringField;
    qMaterialPRECO_VENDA: TFloatField;
    qParametrosGRAVAR_CONSUMO_NOTA: TStringField;
    qParametrosUSA_PRODUTO_FORNECEDOR: TStringField;
    qParametrosUSA_PRODUTO_LOCALIZACAO: TStringField;
    qParametrosEMPRESA_LIVRARIA: TStringField;
    sdsProdutoID_CONTA_ORCAMENTO: TIntegerField;
    cdsProdutoID_CONTA_ORCAMENTO: TIntegerField;
    qParametrosUSA_CONTA_ORCAMENTO: TStringField;
    qMaterialTIPO_REG: TStringField;
    sdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField;
    cdsProdutoID_LOCAL_ESTOQUE_PROD: TIntegerField;
    qParametrosUSA_LOCAL_ESTOQUE: TStringField;
    qParametrosTIPO_COMISSAO_PROD: TStringField;
    qParametros_UsuarioMOSTRAR_CODIGO_PROD_ANT: TStringField;
    cdsProduto_ConsultaCOD_ANT: TStringField;
    sdsProdutoPERC_COMISSAO: TFloatField;
    cdsProdutoPERC_COMISSAO: TFloatField;
    cdsClienteCODIGO: TIntegerField;
    cdsClienteNOME: TStringField;
    qParametrosID_LOCAL_ESTOQUE_PROD: TIntegerField;
    sdsProdutoID_ENQIPI: TIntegerField;
    cdsProdutoID_ENQIPI: TIntegerField;
    sdsProdutoLANCA_LOTE_CONTROLE: TStringField;
    cdsProdutoLANCA_LOTE_CONTROLE: TStringField;
    qParametros_Est: TSQLQuery;
    qParametros_EstID: TIntegerField;
    qParametros_EstGERAR_LOTE_AUT: TStringField;
    sdsProdutoCOD_CEST: TStringField;
    cdsProdutoCOD_CEST: TStringField;
    qParametrosUSA_CARIMBO: TStringField;
    sdsProdutoPICTOGRAMA: TStringField;
    sdsProdutoPICTO_CABEDAL: TStringField;
    sdsProdutoPICTO_INTERIOR: TStringField;
    sdsProdutoPICTO_SOLA: TStringField;
    cdsProdutoPICTOGRAMA: TStringField;
    cdsProdutoPICTO_CABEDAL: TStringField;
    cdsProdutoPICTO_INTERIOR: TStringField;
    cdsProdutoPICTO_SOLA: TStringField;
    sdsProdutoCOD_PRODUTO_CLI: TStringField;
    cdsProdutoCOD_PRODUTO_CLI: TStringField;
    qParametrosIMP_NFE_REF_PROD: TStringField;
    qParametros_NFe: TSQLQuery;
    qParametros_NFeID: TIntegerField;
    qParametros_NFeUSA_OPCAO_IMP_COD_CLI: TStringField;
    qParametros_Prod: TSQLQuery;
    qParametros_ProdUSA_PRODUTO_FILIAL: TStringField;
    sdsProdutoFILIAL: TIntegerField;
    cdsProdutoFILIAL: TIntegerField;
    qParametros_ProdSENHA_ALT_PROD_MOV: TStringField;
    qParametros_ProdMOSTRAR_OBS_CONSULTA: TStringField;
    cdsProduto_ConsultaOBS: TMemoField;
    sdsProdutoBAIXA_ESTOQUE_MAT: TStringField;
    cdsProdutoBAIXA_ESTOQUE_MAT: TStringField;
    qParametros_NFeGRAVAR_TAB_TAMANHO: TStringField;
    sdsProdutoNOME_ORIGINAL: TStringField;
    cdsProdutoNOME_ORIGINAL: TStringField;
    qParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT: TStringField;
    sdsProdutoIMP_ROTULO: TStringField;
    cdsProdutoIMP_ROTULO: TStringField;
    sdsProdutoNUM_MS: TStringField;
    cdsProdutoNUM_MS: TStringField;
    sdsProdutoIMP_CONSUMO_NFE: TStringField;
    cdsProdutoIMP_CONSUMO_NFE: TStringField;
    sdsProdutoGERAR_FCI: TStringField;
    cdsProdutoGERAR_FCI: TStringField;
    sdsProdutoMEDIDA: TStringField;
    cdsProdutoMEDIDA: TStringField;
    qParametros_ProdUSA_MEDIDA: TStringField;
    sdsProdutoQTD_EMBALAGEM: TFloatField;
    cdsProdutoQTD_EMBALAGEM: TFloatField;
    qParametros_ProdUSA_QTD_EMBALAGEM: TStringField;
    qParametros_ProdOPCAO_APLICAR_MARGEM: TStringField;
    sdsProdutoDT_ALT_PRECOCUSTO: TDateField;
    cdsProdutoDT_ALT_PRECOCUSTO: TDateField;
    sdsProdutoUSA_CARIMBO_OC: TStringField;
    cdsProdutoUSA_CARIMBO_OC: TStringField;
    sdsProdutoUSA_NA_BALANCA: TStringField;
    cdsProdutoUSA_NA_BALANCA: TStringField;
    qParametros_ProdOPCAO_PRECO_CONSUMO: TStringField;
    cdsMaterialPRECO_CUSTO_TOTAL: TFloatField;
    qMaterialPRECO_CUSTO_TOTAL: TFloatField;
    qParametros_ProdGRAVA_CONSUMO_PRVENDA: TStringField;
    cdsProduto_ConsultaPRECO_CUSTO_TOTAL: TFloatField;
    sdsProdutoMENSAGEM: TStringField;
    cdsProdutoMENSAGEM: TStringField;
    sdsProdutoPERC_DESC_MAX: TFloatField;
    cdsProdutoPERC_DESC_MAX: TFloatField;
    qParametros_ProdUSA_DESC_MAXIMO: TStringField;
    qParametros_Geral: TSQLQuery;
    qParametros_GeralID: TIntegerField;
    qParametros_GeralEMPRESA_VAREJO: TStringField;
    sdsProdutoID_CSTICMS_BRED: TIntegerField;
    cdsProdutoID_CSTICMS_BRED: TIntegerField;
    qParametrosGERAR_TALAO_AUXILIAR: TStringField;
    sdsProdutoTIPO_MAT: TStringField;
    cdsProdutoTIPO_MAT: TStringField;
    sdsProdutoID_PROCESSO_GRUPO: TIntegerField;
    cdsProdutoID_PROCESSO_GRUPO: TIntegerField;
    sdsProdutoTIPO_PRODUCAO: TStringField;
    cdsProdutoTIPO_PRODUCAO: TStringField;
    qParametros_ProdPRODUTO_PRECO_COR: TStringField;
    qParametros_ProdUSA_CONSUMO_COMB: TStringField;
    qParametrosCALCULAR_PESO_CONSUMO: TStringField;
    sdsProdutoCRIADO_OS: TStringField;
    cdsProdutoCRIADO_OS: TStringField;
    sdsProdutoGerador: TSQLDataSet;
    dsmProduto: TDataSource;
    cdsProdutoGerador: TClientDataSet;
    dsProdutoGerador: TDataSource;
    sdsProdutoGeradorID: TIntegerField;
    sdsProdutoGeradorID_MOTADORA: TIntegerField;
    sdsProdutoGeradorID_FABRICANTE_MOTOR: TIntegerField;
    sdsProdutoGeradorMODELO: TStringField;
    sdsProdutoGeradorNRO_SERIE: TStringField;
    sdsProdutoGeradorPOTENCIA: TStringField;
    sdsProdutoGeradorANO_FABR: TSmallintField;
    sdsProdutoGeradorNRO_SERIE_EQUIP: TStringField;
    sdsProdutoGeradorID_FABRICANTE_GERADOR: TIntegerField;
    sdsProdutoGeradorMODELO_GERADOR: TStringField;
    sdsProdutoGeradorNRO_SERIE_GERADOR: TStringField;
    sdsProdutoGeradorMODELO_USCA: TStringField;
    sdsProdutoGeradorTENSAO: TStringField;
    cdsProdutosdsProdutoGerador: TDataSetField;
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
    sdsMarca_Montadora: TSQLDataSet;
    dspMarca_Montadora: TDataSetProvider;
    cdsMarca_Montadora: TClientDataSet;
    dsMarca_Montadora: TDataSource;
    cdsMarca_MontadoraID: TIntegerField;
    cdsMarca_MontadoraNOME: TStringField;
    sdsFabricanteMotor: TSQLDataSet;
    dspFabricanteMotor: TDataSetProvider;
    cdsFabricanteMotor: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dsFabricanteMotor: TDataSource;
    sdsFabircanteGerador: TSQLDataSet;
    dspFabircanteGerador: TDataSetProvider;
    cdsFabircanteGerador: TClientDataSet;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    dsFabircanteGerador: TDataSource;
    qParametros_ProdGERADORES_ELETRICOS: TStringField;
    cdsProduto_ConsultaNOME_CLIENTE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsProdutoNewRecord(DataSet: TDataSet);
    procedure dspProdutoUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
    procedure cdsProdutoBeforePost(DataSet: TDataSet);
    procedure cdsProdutoReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure cdsProduto_FornReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    { Private declarations }
    vID_Produto_Forn : Integer;
    procedure DoLogAdditionalValues(ATableName: string; var AValues: TArrayLogData; var UserName: string);
  public
    { Public declarations }
    vMsgErro: String;
    ctCommand: String;
    ctConsulta: String;
    ctqReferencia : String;

    procedure prc_Localizar(ID: Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    function fnc_Possui_Erro: Boolean;

    function fnc_Referencia_Proxima_Seq(Tipo: String): Integer;
  end;

var
  dmCadProduto: TdmCadProduto;

implementation

uses DmdDatabase, LogProvider, uUtilPadrao, ComObj, VarCmplx, Variants;

{$R *.dfm}

{ TDMCadPais }

procedure TdmCadProduto.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsProduto.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PRODUTO',0);

  cdsProduto.Insert;
  cdsProdutoID.AsInteger := vAux;
  if StrToFloat(FormatFloat('0.00',qParametrosPERC_IPI_PADRAO.AsFloat)) > 0 then
    cdsProdutoPERC_IPI.AsFloat := StrToFloat(FormatFloat('0.00',qParametrosPERC_IPI_PADRAO.AsFloat));
  if qParametrosID_NCM_PADRAO.AsInteger > 0 then
    cdsProdutoID_NCM.AsInteger := qParametrosID_NCM_PADRAO.AsInteger;
end;

procedure TdmCadProduto.prc_Excluir;
var
  ID: TTransactionDesc;
begin
  vMsgErro := '';
  if not(cdsProduto.Active) or (cdsProduto.IsEmpty) then
    exit;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    cdsProduto.Delete;
    cdsProduto.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise;
      //Raise Exception.Create('Ocorreu o seguinte erro ao gravar a nota: ' + #13 + e.Message);
    end
  end;
end;

procedure TdmCadProduto.prc_Gravar;
begin
  if cdsProdutoGerador.State in [dsEdit,dsInsert] then
    cdsProdutoGerador.Post;
  cdsProduto.Post;
  cdsProduto.ApplyUpdates(0);
end;

procedure TdmCadProduto.prc_Localizar(ID: Integer);
begin
  cdsProduto.Close;
  sdsProduto.CommandText := ctCommand;
  if ID <> 0 then
    sdsProduto.CommandText := sdsProduto.CommandText +
                              ' WHERE PRO.ID = ' + IntToStr(ID);
  cdsProduto.Open;
end;

procedure TdmCadProduto.DataModuleCreate(Sender: TObject);
var
  i, x: Integer;
  //SR: TSearchRec;
  vIndices: string;
  aIndices: array of string;
begin
  ctCommand      := sdsProduto.CommandText;
  ctConsulta     := sdsProduto_Consulta.CommandText;
  ctqReferencia  := qReferencia.SQL.Text;

  cdsUnidade.Open;
  cdsNCM.Open;
  cdsOrigem_Prod.Open;
  qParametros.Close;
  qParametros.Open;
  qParametros_Usuario.Close;
  qParametros_Usuario.ParamByName('USUARIO').AsString := vUsuario;
  qParametros_Usuario.Open;
  qParametros_Est.Close;
  qParametros_Est.Open;
  qParametros_NFe.Close;
  qParametros_NFe.Open;
  qParametros_Prod.Close;
  qParametros_Prod.Open;
  qParametros_Geral.Close;
  qParametros_Geral.Open;

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
  if (qParametrosUSA_EDI.AsString = 'S') or (qParametros_NFeUSA_OPCAO_IMP_COD_CLI.AsString = 'S') then
    sdsFornecedor.CommandText := sdsFornecedor.CommandText + ' OR TP_CLIENTE = ' + QuotedStr('S');
  cdsFornecedor.Open;
end;

procedure TdmCadProduto.cdsProdutoNewRecord(DataSet: TDataSet);
var
  vTipoAux: String;
begin
  cdsProdutoINATIVO.AsString               := 'N';
  cdsProdutoORIGEM_PROD.AsString           := '0';
  cdsProdutoESTOQUE.AsString               := 'S';
  vTipoAux := trim(qParametros_UsuarioTIPO_REG_PRODUTO_PADRAO.AsString);
  if trim(vTipoAux) = '' then
    vTipoAux := trim(qParametrosTIPO_REG_PRODUTO_PADRAO.AsString);
  if trim(vTipoAux) = '' then
    cdsProdutoTIPO_REG.AsString := 'P'
  else
    cdsProdutoTIPO_REG.AsString := vTipoAux;
  cdsProdutoPOSSE_MATERIAL.AsString        := 'E';
  cdsProdutoMATERIAL_OUTROS.AsString       := 'M';
  cdsProdutoPERC_REDUCAOICMSSUBST.AsFloat  := 0;
  cdsProdutoIMPRIMIR_ETIQUETA_NAV.AsString := 'N';
  cdsProdutoPERC_QUEBRAMAT.AsFloat         := 0;
  cdsProdutoUSA_GRADE.AsString             := 'N';
  cdsProdutoREFERENCIA_SEQ.AsInteger       := 0;
  cdsProdutoUSUARIO.AsString               := vUsuario;
  cdsProdutoDTCAD.AsDateTime               := Date;
  cdsProdutoHRCAD.AsDateTime               := Now;
  cdsProdutoCALCULAR_2_LADOS.AsString      := 'N';
  cdsProdutoUSA_PRECO_COR.AsString         := 'N';
  cdsProdutoUSA_COR.AsString               := 'N';
  cdsProdutoLANCA_LOTE_CONTROLE.AsString   := 'N';
  cdsProdutoBAIXA_ESTOQUE_MAT.AsString     := 'N';
  cdsProdutoUSA_PERC_IMP_INTERESTADUAL.AsString := 'N';
  if qParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT.AsString = 'S' then
    cdsProdutoBAIXA_ESTOQUE_MAT.AsString := 'S'
  else
    cdsProdutoBAIXA_ESTOQUE_MAT.AsString := 'N';
  cdsProdutoIMP_ROTULO.AsString := 'S';
  cdsProdutoGERAR_FCI.AsString  := 'N';
  cdsProdutoIMP_CONSUMO_NFE.AsString := 'N';
  cdsProdutoUSA_COR.AsString := 'N';
  cdsProdutoCRIADO_OS.AsString := 'S';
end;

procedure TdmCadProduto.dspProdutoUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

procedure TdmCadProduto.cdsProdutoBeforePost(DataSet: TDataSet);
begin
  if cdsProdutoID_SUBGRUPO.AsInteger <= 0 then
    cdsProdutoID_SUBGRUPO.Clear;
  if cdsProdutoID_CSTIPI.AsInteger <= 0 then
    cdsProdutoID_CSTIPI.Clear;
  if cdsProdutoID_NCM.AsInteger <= 0 then
    cdsProdutoID_NCM.Clear;
  if cdsProdutoID_FORNECEDOR.AsInteger <= 0 then
    cdsProdutoID_FORNECEDOR.Clear;
  if cdsProdutoID_GRUPO.AsInteger <= 0 then
    cdsProdutoID_GRUPO.Clear;
  if cdsProdutoID_MARCA.AsInteger <= 0 then
    cdsProdutoID_MARCA.Clear;
  if cdsProdutoBAIXA_ESTOQUE_MAT.IsNull then
  begin
    if (cdsProdutoTIPO_REG.AsString = 'P') or (cdsProdutoTIPO_REG.AsString = 'S') then
    begin
      if qParametros_ProdMARCAR_BAIXAR_ESTOQUE_MAT.AsString = 'S' then
        cdsProdutoBAIXA_ESTOQUE_MAT.AsString := 'S'
      else
        cdsProdutoBAIXA_ESTOQUE_MAT.AsString := 'N';
    end;
  end;
end;

procedure TdmCadProduto.DoLogAdditionalValues(ATableName: string;
  var AValues: TArrayLogData; var UserName: string);
begin
  UserName := vUsuario;
end;

function TdmCadProduto.fnc_Possui_Erro: Boolean;
begin
  Result   := True;
  vMsgErro := '';

  if trim(cdsProdutoNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if trim(cdsProdutoUNIDADE.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Unidade não informada!';
  if cdsProdutoID_NCM.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** NCM não informado!';
  if trim(cdsProdutoORIGEM_PROD.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Origem não informada!';
  if trim(cdsProdutoREFERENCIA.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Referência não informada!';
  if (trim(cdsProdutoREFERENCIA.AsString) <> '') and (qParametrosCADASTRAR_REF_DUP.AsString <> 'S') then
  begin
    qReferencia.Close;
    qReferencia.SQL.Text := ctqReferencia;
    if qParametros_ProdUSA_PRODUTO_FILIAL.AsString = 'S' then
    begin
      qReferencia.SQL.Text := qReferencia.SQL.Text + ' AND FILIAL = :FILIAL ';
      qReferencia.ParamByName('FILIAL').AsInteger := cdsProdutoFILIAL.AsInteger;
    end;
    qReferencia.ParamByName('REFERENCIA').AsString := cdsProdutoREFERENCIA.AsString;
    qReferencia.Open;
    if (qReferenciaID.AsInteger > 0) and (qReferenciaID.AsInteger <> cdsProdutoID.AsInteger) then
      vMsgErro := vMsgErro + #13 + '*** Referência já cadastrada no ID = ' + qReferenciaID.AsString;
    qReferencia.Close;
  end;

  if vMsgErro <> '' then
    exit;
  Result := False;
end;

procedure TdmCadProduto.cdsProdutoReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + '*** Produto não gravado!', mtError, [mbOk], 0);
end;

procedure TdmCadProduto.cdsProduto_FornReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  if trim(e.Message) <> '' then
    MessageDlg(e.Message + #13 + '*** Produto do fornecedor não gravado!', mtError, [mbOk], 0);
end;

function TdmCadProduto.fnc_Referencia_Proxima_Seq(Tipo: String): Integer;
var
  sds: TSQLDataSet;
  vAux: Integer;
begin
  Result := 0;
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.Close;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText   := ' SELECT MAX(referencia_seq) REFERENCIA_SEQ FROM PRODUTO ' +
                         ' WHERE TIPO_REG = ' + QuotedStr(Tipo);
    sds.Open;                                     
    vAux   := sds.FieldByName('REFERENCIA_SEQ').AsInteger;
    vAux   := vAux + 1;
    Result := vAux;
    sds.Close;
  finally
    FreeAndNil(sds);
  end;
end;

end.


