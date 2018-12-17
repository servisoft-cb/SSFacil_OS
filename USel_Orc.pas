unit USel_Orc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, SMDBGrid, NxCollection,
  StdCtrls, ExtCtrls, DB, jpeg, FMTBcd, SqlExpr, DBClient, Provider;

type
  TfrmSel_Orc = class(TForm)
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnCancelar: TNxButton;
    btnConfirmar: TNxButton;
    sdsOrc: TSQLDataSet;
    dspOrc: TDataSetProvider;
    cdsOrc: TClientDataSet;
    dsOrc: TDataSource;
    cdsOrcID: TIntegerField;
    cdsOrcID_CLIENTE: TIntegerField;
    cdsOrcNOME_CONTATO: TStringField;
    cdsOrcNUM_ORCAMENTO: TIntegerField;
    cdsOrcDTEMISSAO: TDateField;
    cdsOrcVLR_TOTAL: TFloatField;
    cdsOrcTP_ORCAMENTO: TStringField;
    cdsOrcTIPO: TStringField;
    cdsOrcNOME_CLIENTE: TStringField;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
  private

    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmSel_Orc: TfrmSel_Orc;

implementation

uses rsDBUtils, DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmSel_Orc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Orc.prc_Consultar;
begin
  cdsOrc.Close;
  cdsOrc.Open;
end;

procedure TfrmSel_Orc.FormShow(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmSel_Orc.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmSel_Orc.SMDBGrid1DblClick(Sender: TObject);
begin
  vNum_Orc_Sel := cdsOrcNUM_ORCAMENTO.AsInteger;
  Close;
end;

end.
