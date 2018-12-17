unit UCadNotaFiscal_Custo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadNotaFiscal, StdCtrls, Mask, DBCtrls, NxCollection,
  ExtCtrls, Grids, DBGrids, SMDBGrid, ToolEdit, CurrEdit, DB;

type
  TfrmCadNotaFiscal_Custo = class(TForm)
    pnlDigitacao: TNxPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel1: TPanel;
    btnConfirmar: TNxButton;
    btnAlterar: TNxButton;
    btnExcluir: TNxButton;
    btnInserir: TNxButton;
    btnCancelar: TNxButton;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label4: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    NxButton1: TNxButton;
    DBCheckBox1: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Habilita;
    procedure prc_Calcular;
  public
    { Public declarations }
    fDMCadNotaFiscal: TDMCadNotaFiscal;
    
  end;

var
  frmCadNotaFiscal_Custo: TfrmCadNotaFiscal_Custo;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmCadNotaFiscal_Custo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadNotaFiscal_Custo.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadNotaFiscal);
end;

procedure TfrmCadNotaFiscal_Custo.btnExcluirClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Custo.IsEmpty then
    exit;
  if MessageDlg('Deseja excluir o item (' + fDMCadNotaFiscal.cdsNotaFiscal_CustoDESCRICAO.AsString + ')',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  fDMCadNotaFiscal.cdsNotaFiscal_Custo.Delete;
  prc_Calcular;
end;

procedure TfrmCadNotaFiscal_Custo.prc_Habilita;
begin
  btnInserir.Enabled   := not(btnInserir.Enabled);
  btnAlterar.Enabled   := not(btnAlterar.Enabled);
  btnConfirmar.Enabled := not(btnConfirmar.Enabled);
  btnCancelar.Enabled  := not(btnCancelar.Enabled);
  btnExcluir.Enabled   := not(btnExcluir.Enabled);
  pnlDigitacao.Enabled := not(pnlDigitacao.Enabled);
end;

procedure TfrmCadNotaFiscal_Custo.NxButton1Click(Sender: TObject);
begin
  fDMCadNotaFiscal.vMSGNotaFiscal := 'OK';
  fDMCadNotaFiscal.cdsNotaFiscal_Custo.ApplyUpdates(0);
  Close;
end;

procedure TfrmCadNotaFiscal_Custo.btnInserirClick(Sender: TObject);
var
  vItemAux : Integer;
begin
  fDMCadNotaFiscal.cdsNotaFiscal_Custo.Last;
  vItemAux := fDMCadNotaFiscal.cdsNotaFiscal_CustoITEM.AsInteger;

  fDMCadNotaFiscal.cdsNotaFiscal_Custo.Insert;
  fDMCadNotaFiscal.cdsNotaFiscal_CustoID.AsInteger   := fDMCadNotaFiscal.cdsNotaFiscalID.AsInteger;
  fDMCadNotaFiscal.cdsNotaFiscal_CustoITEM.AsInteger := vItemAux + 1;
  fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString    := '+';
  fDMCadNotaFiscal.cdsNotaFiscal_CustoFRETE.AsString := 'N';
  prc_Habilita;
  DBEdit1.SetFocus;
end;

procedure TfrmCadNotaFiscal_Custo.DBEdit2Exit(Sender: TObject);
begin
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString) = '' then
    fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString := '+';
  if (fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString <> '+') and (fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString <> '-') then
  begin
    MessageDlg('*** Opção incorreta, informar  +  ou  -  ', mtInformation, [mbOk], 0);
    DBEdit2.SetFocus;
    DBEdit2.SelectAll;
  end;
end;

procedure TfrmCadNotaFiscal_Custo.btnAlterarClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Custo.IsEmpty then
    exit;
  prc_Habilita;
  DBEdit1.SetFocus;
end;

procedure TfrmCadNotaFiscal_Custo.btnCancelarClick(Sender: TObject);
begin
  if fDMCadNotaFiscal.cdsNotaFiscal_Custo.State in [dsEdit,dsInsert] then
    fDMCadNotaFiscal.cdsNotaFiscal_Custo.Cancel;
  prc_Habilita;
  prc_Calcular;
end;

procedure TfrmCadNotaFiscal_Custo.btnConfirmarClick(Sender: TObject);
var
  vMSGAux : String;
begin
  vMSGAux := '';
  if trim(fDMCadNotaFiscal.cdsNotaFiscal_CustoDESCRICAO.AsString) = '' then
    vMSGAux := vMSGAux + #13 + '*** Descrição não informada!';
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat)) <= 0 then
    vMSGAux := vMSGAux + #13 + '*** Valor não informada!';
  if StrToFloat(FormatFloat('0.00',fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat)) <= 0 then
    vMSGAux := vMSGAux + #13 + '*** Valor não informada!';
  if (fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString <> '+') and (fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString <> '-') then
    vMSGAux := vMSGAux + #13 + '*** Opção de + ou -  não informada!';
  if trim(vMSGAux) <> '' then
  begin
    MessageDlg(vMSGAux, mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadNotaFiscal.cdsNotaFiscal_Custo.Post;
  prc_Habilita;
  btnInserir.SetFocus;
  prc_Calcular;
end;

procedure TfrmCadNotaFiscal_Custo.prc_Calcular;
var
  vVlrAux : Real;
  vFrete  : Integer;
begin
  vVlrAux := 0;
  vfrete  := 0;
  fDMCadNotaFiscal.cdsNotaFiscal_Custo.First;
  while not fDMCadNotaFiscal.cdsNotaFiscal_Custo.Eof do
  begin
    if fDMCadNotaFiscal.cdsNotaFiscal_CustoSD.AsString = '-' then
      vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux - fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat))
    else
      vVlrAux := StrToFloat(FormatFloat('0.00',vVlrAux + fDMCadNotaFiscal.cdsNotaFiscal_CustoVALOR.AsFloat));
    if fDMCadNotaFiscal.cdsNotaFiscal_CustoFRETE.AsString = 'S' then
      vFrete := vFrete + 1;
    fDMCadNotaFiscal.cdsNotaFiscal_Custo.Next;
  end;
  CurrencyEdit1.Value := StrToFloat(FormatFloat('0.00',vVlrAux));
  if vFrete > 1 then
    MessageDlg('*** Verificar que foi lançado mais de um valor de frete!', mtInformation, [mbOk], 0);
end;

end.
