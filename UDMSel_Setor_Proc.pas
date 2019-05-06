unit UDMSel_Setor_Proc;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, DBClient, SqlExpr;

type
  TDMSel_Setor_Proc = class(TDataModule)
    sdsSetor_Proc: TSQLDataSet;
    cdsSetor_Proc: TClientDataSet;
    dspSetor_Proc: TDataSetProvider;
    dsSetor_Proc: TDataSource;
    mAuxiliar: TClientDataSet;
    dsmAuxiliar: TDataSource;
    mAuxiliarID_SETOR: TIntegerField;
    mAuxiliarNOME_SETOR: TStringField;
    mAuxiliarITEM: TIntegerField;
    mAuxiliarORDEM: TIntegerField;
    mAuxiliarID_PROCESSO: TIntegerField;
    mAuxiliarVLR_HORA: TFloatField;
    mAuxiliarNOME_PROCESSO: TStringField;
    mAuxiliarSelecionado: TBooleanField;
    mAuxiliarTotal_Hora: TFloatField;
    mAuxiliarVlr_Hora_Ori: TFloatField;
    mAuxiliarSelecionado_Ori: TBooleanField;
    mAuxiliarDescricao: TStringField;
    cdsSetor_ProcID: TIntegerField;
    cdsSetor_ProcNOME_SETOR: TStringField;
    cdsSetor_ProcITEM: TIntegerField;
    cdsSetor_ProcORDEM: TIntegerField;
    cdsSetor_ProcID_PROCESSO: TIntegerField;
    cdsSetor_ProcVLR_HORA: TFloatField;
    cdsSetor_ProcNOME_PROCESSO: TStringField;
    mAuxiliarFlag: TIntegerField;
    sdsEnsaio: TSQLDataSet;
    cdsEnsaio: TClientDataSet;
    dspEnsaio: TDataSetProvider;
    dsEnsaio: TDataSource;
    cdsEnsaioID: TIntegerField;
    cdsEnsaioNOME: TStringField;
    mAuxiliarID_Ensaio: TIntegerField;
    mAuxiliarNome_Ensaio: TStringField;
    cdsSetor_ProcORDEM_ORC: TIntegerField;
    mAuxiliarID_Funcionario: TIntegerField;
    mAuxiliarNome_Funcionario: TStringField;
    sdsFuncionario: TSQLDataSet;
    cdsFuncionario: TClientDataSet;
    dspFuncionario: TDataSetProvider;
    dsFuncionario: TDataSource;
    cdsFuncionarioCODIGO: TIntegerField;
    cdsFuncionarioNOME: TStringField;
    cdsFuncionarioFUNCAO: TStringField;
    mAuxiliarFuncao: TStringField;
    mAuxiliarUNIDADE: TStringField;
    cdsSetor_ProcUNIDADE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctSetor_Proc : String;
  end;

var
  DMSel_Setor_Proc: TDMSel_Setor_Proc;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMSel_Setor_Proc.DataModuleCreate(Sender: TObject);
begin
  ctSetor_Proc := sdsSetor_Proc.CommandText;
end;

end.
