unit UAjustar_OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMProcesso_ES, StdCtrls, NxCollection, RzEdit, CurrEdit, Mask,
  ToolEdit, ExtCtrls, RXDBCtrl, ComCtrls, RzDTP, RzDBDTP, DBCtrls, dbXPress;

type
  TfrmAjustar_OS = class(TForm)
    pnlBaixa: TPanel;
    Label4: TLabel;
    Label11: TLabel;
    Shape1: TShape;
    Label18: TLabel;
    btnConfirmar: TNxButton;
    pnlProcesso: TPanel;
    Label9: TLabel;
    btnCancelar: TNxButton;
    DBText1: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    Label6: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    RzDBDateTimePicker1: TRzDBDateTimePicker;
    RzDBDateTimePicker2: TRzDBDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
  private
    { Private declarations }
    fDMProcesso_ES: TDMProcesso_ES;
    procedure prc_Abrir_cdsBaixa_OS;
    procedure prc_Grava_mBaixaAux;
  public
    { Public declarations }
    vID_Baixa : Integer;

  end;

var
  frmAjustar_OS: TfrmAjustar_OS;

implementation

uses rsDBUtils, DB, DmdDatabase, uUtilPadrao;

{$R *.dfm}

procedure TfrmAjustar_OS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmAjustar_OS.FormShow(Sender: TObject);
begin
  fDMProcesso_ES := TDMProcesso_ES.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMProcesso_ES);

  prc_Abrir_cdsBaixa_OS;
  if fDMProcesso_ES.cdsBaixa_OS.RecordCount > 0 then
    prc_Grava_mBaixaAux;


end;

procedure TfrmAjustar_OS.prc_Abrir_cdsBaixa_OS;
begin
  fDMProcesso_ES.prc_Abrir_cdsBaixa_OS(vID_Baixa,0,0);
end;

procedure TfrmAjustar_OS.prc_Grava_mBaixaAux;
var
  x : Integer;
begin
  fDMProcesso_ES.mBaixaAux.Insert;
  for x := 0 to (fDMProcesso_ES.cdsBaixa_OS.FieldCount - 1) do
    fDMProcesso_ES.mBaixaAux.FieldByName(fDMProcesso_ES.cdsBaixa_OS.Fields[x].FieldName).AsVariant := fDMProcesso_ES.cdsBaixa_OS.Fields[x].Value;
  fDMProcesso_ES.qProcesso.Close;
  fDMProcesso_ES.qProcesso.ParamByName('ID').AsInteger := fDMProcesso_ES.mBaixaAuxID_Processo.AsInteger;
  fDMProcesso_ES.qProcesso.Open;
  fDMProcesso_ES.mBaixaAuxNome_Processo.AsString := fDMProcesso_ES.qProcessoNOME.AsString;
  fDMProcesso_ES.mBaixaAux.Post;
end;

procedure TfrmAjustar_OS.btnCancelarClick(Sender: TObject);
begin
  if MessageDlg('Cancelar a alteração?',mtConfirmation,[mbYes,mbNo],1) = mrNo then
    exit;
  fDMProcesso_ES.mBaixaAux.EmptyDataSet;
  Close;
end;

procedure TfrmAjustar_OS.btnConfirmarClick(Sender: TObject);
var
  ID: TTransactionDesc;
  vMSGAux : string;
begin
  vMSGAux := '';
  if (fDMProcesso_ES.mBaixaAuxDtEntrada.AsDateTime <= 10) and (fDMProcesso_ES.mBaixaAuxDtSaida.AsDateTime > 10) then
    vMSGAux := '*** Data de entrada não informada!';

  if (fDMProcesso_ES.mBaixaAuxDtEntrada.AsDateTime <= 10) and (fDMProcesso_ES.mBaixaAuxDtSaida.AsDateTime > 10) then
    vMSGAux := '*** Data de entrada não informada!';

  if (fDMProcesso_ES.mBaixaAuxDtSaida.AsDateTime <= 10) and (StrToFloat(FormatFloat('0.00',fDMProcesso_ES.mBaixaAuxTotal_Horas.AsFloat)) <= 0) then
  begin
    MessageDlg('*** Data final ou total de horas não informados!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Confirmar a alteração?',mtConfirmation,[mbYes,mbNo],1) = mrNo then
    exit;

  ID.TransactionID  := 5;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try

    fDMProcesso_ES.cdsBaixa_OS.Delete;
    fDMProcesso_ES.cdsBaixa_OS.ApplyUpdates(0);

    fDMProcesso_ES.prc_Inserir_Baixa;
    fDMProcesso_ES.cdsBaixa_OSID_OS.AsInteger  := fDMProcesso_ES.mBaixaAuxID_OS.AsInteger;
    fDMProcesso_ES.cdsBaixa_OSNUM_OS.AsInteger := fDMProcesso_ES.mBaixaAuxNum_OS.AsInteger;
    fDMProcesso_ES.cdsBaixa_OSITEM_PROC.AsInteger := fDMProcesso_ES.mBaixaAuxItem_Proc.AsInteger;
    if fDMProcesso_ES.mBaixaAuxDtEntrada.AsDateTime <= 0 then
    begin
      fDMProcesso_ES.cdsBaixa_OSDTENTRADA.AsDateTime := Date;
      fDMProcesso_ES.cdsBaixa_OSHRENTRADA.AsDateTime := now;
    end
    else
    begin
      fDMProcesso_ES.cdsBaixa_OSDTENTRADA.AsDateTime := fDMProcesso_ES.mBaixaAuxDtEntrada.AsDateTime;
      fDMProcesso_ES.cdsBaixa_OSHRENTRADA.AsDateTime := fDMProcesso_ES.mBaixaAuxHrEntrada.AsDateTime;
    end;
    if fDMProcesso_ES.mBaixaAuxDtSaida.AsDateTime > 10 then
    begin
      fDMProcesso_ES.cdsBaixa_OSDTSAIDA.AsDateTime   := fDMProcesso_ES.mBaixaAuxDtSaida.AsDateTime;
      fDMProcesso_ES.cdsBaixa_OSHRSAIDA.AsDateTime   := fDMProcesso_ES.mBaixaAuxHrSaida.AsDateTime;
    end;
    fDMProcesso_ES.cdsBaixa_OSID_FUNCIONARIO.AsInteger := fDMProcesso_ES.mBaixaAuxID_Funcionario.AsInteger;
    fDMProcesso_ES.cdsBaixa_OSQTD.AsInteger            := fDMProcesso_ES.mBaixaAuxQtd.AsInteger;
    fDMProcesso_ES.cdsBaixa_OSID_PROCESSO.AsInteger    := fDMProcesso_ES.mBaixaAuxID_Processo.AsInteger;
    fDMProcesso_ES.cdsBaixa_OSID_SERVICO_OS.AsInteger  := fDMProcesso_ES.mBaixaAuxID_Servico_OS.AsInteger;
    fDMProcesso_ES.cdsBaixa_OSORDEM.AsInteger          := fDMProcesso_ES.mBaixaAuxOrdem.AsInteger;
    fDMProcesso_ES.cdsBaixa_OSTIPO_BAIXA.AsString      := fDMProcesso_ES.mBaixaAuxTipo_Baixa.AsString;
    fDMProcesso_ES.cdsBaixa_OSOBS.AsString             := fDMProcesso_ES.mBaixaAuxObs.AsString;
    fDMProcesso_ES.cdsBaixa_OSTOTAL_HORAS.AsFloat      := StrToFloat(FormatFloat('0.00',fDMProcesso_ES.mBaixaAuxTotal_Horas.AsFloat));
    if StrToFloat(FormatFloat('0.00',fDMProcesso_ES.cdsBaixa_OSTOTAL_HORAS.AsFloat)) <= 0 then
    begin
      fDMProcesso_ES.cdsBaixa_OSTOTAL_HORAS.AsFloat := fnc_Calcular_Hora2(fDMProcesso_ES.cdsBaixa_OSHRENTRADA.AsDateTime,
                                                                                fDMProcesso_ES.cdsBaixa_OSHRSAIDA.AsDateTime,
                                                                                fDMProcesso_ES.cdsBaixa_OSDTENTRADA.AsDateTime,
                                                                                fDMProcesso_ES.cdsBaixa_OSDTSAIDA.AsDateTime);
    end;
    fDMProcesso_ES.cdsBaixa_OS.Post;

    fDMProcesso_ES.cdsBaixa_OS.ApplyUpdates(0);
    fDMProcesso_ES.mBaixaAux.Delete;

    dmDatabase.scoDados.Commit(ID);

    Close;

  except
      on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar a alteração da Baixa do Processo: ' + #13+#13 + e.Message);
      end;
  end;

end;

procedure TfrmAjustar_OS.Panel1Exit(Sender: TObject);
begin
  if not(fDMProcesso_ES.mBaixaAux.State in [dsEdit]) then
    exit;
    
  fDMProcesso_ES.mBaixaAuxTotal_Horas.AsFloat := fnc_Calcular_Hora2(fDMProcesso_ES.mBaixaAuxHrEntrada.AsDateTime,
                                                                              fDMProcesso_ES.mBaixaAuxHrSaida.AsDateTime,
                                                                              fDMProcesso_ES.mBaixaAuxDtEntrada.AsDateTime,
                                                                              fDMProcesso_ES.mBaixaAuxDtSaida.AsDateTime);
end;

end.
