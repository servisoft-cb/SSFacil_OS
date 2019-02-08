unit UBaixa_Mat_OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  FMTBcd, DB, RxLookup, UCBase, Mask, ToolEdit, NxCollection, NxEdit, CurrEdit, ComCtrls, RzDTP, RzEdit,
  RzPanel, SqlExpr, dbXPress, UDMBaixa_Mat_OS, DBGrids, SMDBGrid;

type
  TfrmBaixa_Mat_OS = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    Label3: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    NxComboBox1: TNxComboBox;
    Label8: TLabel;
    pnlBaixa: TPanel;
    Label6: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    DateEdit1: TDateEdit;
    CurrencyEdit1: TCurrencyEdit;
    RzDateTimeEdit1: TRzDateTimeEdit;
    btnConfirmar: TNxButton;
    pnlProcesso: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    btnCancelar: TNxButton;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure CurrencyEdit2Change(Sender: TObject);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzDateTimeEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    fDMBaixa_Mat_OS: TDMBaixa_Mat_OS;
    vMSGLocal : WideString;
    vDigitoIni : String;
    vNumPedido_Loc : Integer;
    vTipo_ES : String;
    vQtd : Integer;
    vNum_OS, vOrdem : Integer;
    vPausar : String;//P=Pausar   F=Finalizar Pausa
    vID_ParadaAnt : Integer;
    vQtd_Restante, vQtd_Concluido : Integer;

    vContador: Integer;

    function fnc_Verifica_OS : Boolean;
    procedure prc_Gravar_Mat;

    procedure prc_Limpar;
    procedure Montar_Reg;

  public
    { Public declarations }
  end;

var
  frmBaixa_Mat_OS: TfrmBaixa_Mat_OS;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, UDMEstoque,
  UBaixa_Mat_OS_Det;

{$R *.dfm}

procedure TfrmBaixa_Mat_OS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmBaixa_Mat_OS.FormShow(Sender: TObject);
var
  vCampoAux: String;
  i: Integer;
begin
  fDMBaixa_Mat_OS := TDMBaixa_Mat_OS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMBaixa_Mat_OS);

  //RzDateTimeEdit1.Time := Now;
  //Edit1.SetFocus;
  CurrencyEdit2.SetFocus;
end;

procedure TfrmBaixa_Mat_OS.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if fnc_Verifica_OS then
      Montar_Reg;
  end;
end;

function TfrmBaixa_Mat_OS.fnc_Verifica_OS: Boolean;
var
  vAux : String;
  sds: TSQLDataSet;
  ffrmBaixa_Mat_OS_Det: TfrmBaixa_Mat_OS_Det;
begin
  Result   := False;
  vOrdem   := 0;
  vNum_OS  := 0;
  vTipo_ES := '';

  if CurrencyEdit2.AsInteger <= 0 then
  begin
    MessageDlg('*** Funcionário não informado!', mtError, [mbOk], 0);
    exit;
  end;

  vAux    := Monta_Numero(Edit1.Text,0);
  if (Length(vAux) <> 13) and ((NxComboBox1.ItemIndex = 0) or not(NxComboBox1.Visible)) then
  begin
    MessageDlg('*** Código de barras inválido para baixar o material!', mtError, [mbOk], 0);
    exit;
  end;
  if (NxComboBox1.ItemIndex = 1) and (NxComboBox1.Visible) then
  begin
    if (Length(vAux) <> 13) then
      vNum_OS := StrToInt(vAux);
  end;
  if vNum_OS <= 0 then
  begin
    vNum_OS := StrToInt(copy(vAux,4,10));
    vOrdem  := StrToInt(copy(vAux,2,2));
  end;

  fDMBaixa_Mat_OS.qOS.Close;
  fDMBaixa_Mat_OS.qOS.ParamByName('NUM_OS').AsInteger := vNum_OS;
  fDMBaixa_Mat_OS.qOS.Open;
  if fDMBaixa_Mat_OS.qOSID.AsInteger <= 0 then
  begin
    MessageDlg('*** OS não encontrada!' , mtError, [mbOk], 0);
    exit;
  end;

  fDMBaixa_Mat_OS.qVer_Enc.Close;
  fDMBaixa_Mat_OS.qVer_Enc.ParamByName('ID').AsInteger := fDMBaixa_Mat_OS.qOSID.AsInteger;
  fDMBaixa_Mat_OS.qVer_Enc.Open;

  if fDMBaixa_Mat_OS.qVer_EncDTMATERIAL.AsDateTime > 10 then
  begin
    Label5.Caption := '*** Material já Encerrado' + #13 + #13
                    + 'Data/Hora: ' + fDMBaixa_Mat_OS.qVer_EncDTMATERIAL.AsString + '  ' + fDMBaixa_Mat_OS.qVer_EncHRMATERIAL.AsString;
    exit;
  end;

  if (vOrdem <= 0) and (NxComboBox1.ItemIndex = 1) then
  begin
    fDMBaixa_Mat_OS.vEscolheu_Mat := False;

    fDMBaixa_Mat_OS.prc_Abrir_OrdemServico_Mat(fDMBaixa_Mat_OS.qOSID.AsInteger,0);

    ffrmBaixa_Mat_OS_Det := TfrmBaixa_Mat_OS_Det.Create(self);
    ffrmBaixa_Mat_OS_Det.fDMBaixa_Mat_OS := fDMBaixa_Mat_OS;
    ffrmBaixa_Mat_OS_Det.ShowModal;
    FreeAndNil(ffrmBaixa_Mat_OS_Det);
    if not fDMBaixa_Mat_OS.vEscolheu_Mat then
      exit;
  end
  else
    fDMBaixa_Mat_OS.prc_Abrir_OrdemServico_Mat(fDMBaixa_Mat_OS.qOSID.AsInteger,vOrdem);

  if (fDMBaixa_Mat_OS.cdsOrdemServico_MatID.AsInteger <= 0) then
  begin
    MessageDlg('*** Item do material não encontrado!' , mtError, [mbOk], 0);
    exit;
  end;

  if fDMBaixa_Mat_OS.cdsOrdemServico_MatTIPO.AsString = 'X' then
  begin
    MessageDlg('*** Material classificado como não utilizável nesta OS!' , mtError, [mbOk], 0);
    exit;
  end;

  Result := True;
end;

procedure TfrmBaixa_Mat_OS.prc_Gravar_Mat;
var
  vHora: TTime;
  ID: TTransactionDesc;
  vData:TDate;
  vQtdAux : Real;
  fDMEstoque: TDMEstoque;
begin
  vHora := Now;
  if trim(RzDateTimeEdit1.Text) <> '' then
    vHora := RzDateTimeEdit1.Time;
  if DateEdit1.Date > 10 then
    vData := DateEdit1.Date
  else
    vData := Date;

  fDMEstoque := TDMEstoque.Create(Self);

  vMSGLocal := '';
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    vMSGLocal := 'OS: ' + IntToStr(vNum_OS) + #13 + #13 + ' Material: ' + fDMBaixa_Mat_OS.cdsOrdemServico_MatNOME.AsString + #13+ #13;

    fDMBaixa_Mat_OS.prc_Inserir_Baixa;
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OSID_OS.AsInteger   := fDMBaixa_Mat_OS.cdsOrdemServico_MatID.AsInteger;
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OSITEM_OS.AsInteger := fDMBaixa_Mat_OS.cdsOrdemServico_MatITEM.AsInteger;
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OSITEM_MAT.AsInteger := fDMBaixa_Mat_OS.cdsOrdemServico_MatITEM_MAT.AsInteger;
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OSID_PRODUTO.AsInteger := fDMBaixa_Mat_OS.cdsOrdemServico_MatID_PRODUTO.AsInteger; 
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OSQTD.AsFloat          := CurrencyEdit1.Value;
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OSID_FUNCIONARIO.AsInteger := fDMBaixa_Mat_OS.qFuncionarioCODIGO.AsInteger;
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OSDATA.AsDateTime          := vData;
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OSHORA.AsDateTime          := vHora;

    fDMBaixa_Mat_OS.cdsBaixa_Mat_OSID_MOVESTOQUE.AsInteger := fDMEstoque.fnc_Gravar_Estoque(0,
                                                             fDMBaixa_Mat_OS.cdsOrdemServico_MatFILIAL.AsInteger,
                                                             1,
                                                             fDMBaixa_Mat_OS.cdsOrdemServico_MatID_PRODUTO.AsInteger ,
                                                             fDMBaixa_Mat_OS.qOSNUM_OS.AsInteger,
                                                             0,
                                                             0,
                                                             0,0,
                                                             'S','BXO',
                                                             fDMBaixa_Mat_OS.cdsOrdemServico_MatUNIDADE.AsString,
                                                             fDMBaixa_Mat_OS.cdsOrdemServico_MatUNIDADE.AsString,
                                                             '',
                                                             '',
                                                             fDMBaixa_Mat_OS.cdsBaixa_Mat_OSDATA.AsDateTime,
                                                             fDMBaixa_Mat_OS.cdsOrdemServico_MatPRECO_CUSTO.AsFloat,
                                                             CurrencyEdit1.Value,
                                                             0,
                                                             0,
                                                             0,
                                                             0,
                                                             0,
                                                             CurrencyEdit1.Value,
                                                             fDMBaixa_Mat_OS.cdsOrdemServico_MatPRECO_CUSTO.AsFloat,
                                                             0,0,fDMBaixa_Mat_OS.cdsOrdemServico_MatUNIDADE.AsString,
                                                             0,
                                                             '','N',0,0);
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OS.Post;
    fDMBaixa_Mat_OS.cdsBaixa_Mat_OS.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
    prc_Limpar;
    Label5.Caption := vMSGLocal;

  except
      on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar Baixa Material: ' + #13+#13 + e.Message);
      end;
  end;
  FreeAndNil(fDMEstoque);
  CurrencyEdit2.SetFocus;
end;

procedure TfrmBaixa_Mat_OS.Edit1Change(Sender: TObject);
begin
  Label5.Caption := '';
  pnlBaixa.Visible  := False;
end;

procedure TfrmBaixa_Mat_OS.prc_Limpar;
begin
  Edit1.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  fDMBaixa_Mat_OS.cdsBaixa_Mat_OS.Close;
end;

procedure TfrmBaixa_Mat_OS.CurrencyEdit2Change(Sender: TObject);
begin
  Label5.Caption := '';
  Edit1.Clear;
  Label1.Visible := False;
  Edit1.Visible  := False;
  Label8.Visible := False;
  NxComboBox1.Visible := False;
  pnlBaixa.Visible  := False;
end;

procedure TfrmBaixa_Mat_OS.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if CurrencyEdit2.AsInteger > 0 then
    begin
      NxComboBox1.ItemIndex := 0;
      fDMBaixa_Mat_OS.qFuncionario.Close;
      fDMBaixa_Mat_OS.qFuncionario.ParamByName('NUM_CARTAO').AsInteger := CurrencyEdit2.AsInteger;
      fDMBaixa_Mat_OS.qFuncionario.Open;
      if fDMBaixa_Mat_OS.qFuncionarioCODIGO.AsInteger <= 0 then
      begin
        Label5.Caption := '*** FUNCIONÁRIO NÃO ENCONTRADO ***';
        CurrencyEdit2.SelectAll;
        CurrencyEdit2.SetFocus;
      end
      else
      begin
        Label8.Visible      := (fDMBaixa_Mat_OS.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S');
        NxComboBox1.Visible := (fDMBaixa_Mat_OS.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S');
        Label1.Visible      := True;
        Edit1.Visible       := True;
        if fDMBaixa_Mat_OS.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S' then
          NxComboBox1.SetFocus
        else
           Edit1.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmBaixa_Mat_OS.Montar_Reg;
begin
  pnlProcesso.Visible := True;
  //Label10.Caption     := fDMBaixa_Mat_OS.qOS_ProcNOME_PROCESSO.AsString;
  DateEdit1.Date := Date;
  RzDateTimeEdit1.Time := Now;
  Label10.Caption := fDMBaixa_Mat_OS.cdsOrdemServico_MatNOME.AsString;
  Label13.Caption := FormatFloat('0.000###',fDMBaixa_Mat_OS.cdsOrdemServico_MatQTD.AsFloat);
  Label17.Caption := FormatFloat('0.000###',fDMBaixa_Mat_OS.cdsOrdemServico_MatQTD_ESTOQUE.AsFloat);
  Label18.Caption := FormatFloat('0.000###',fDMBaixa_Mat_OS.cdsOrdemServico_MatQTD_ESTOQUE_PEND.AsFloat);
  Label5.Caption := '';

  if StrToFloat(FormatFloat('0.000000',fDMBaixa_Mat_OS.cdsOrdemServico_MatQTD_ESTOQUE_PEND.AsFloat)) <= 0 then
    CurrencyEdit1.Value := 0
  else
    CurrencyEdit1.Value := StrToFloat(FormatFloat('0.000000',fDMBaixa_Mat_OS.cdsOrdemServico_MatQTD_ESTOQUE_PEND.AsFloat));
  pnlBaixa.Visible := True;
  DateEdit1.SetFocus;
end;

procedure TfrmBaixa_Mat_OS.btnConfirmarClick(Sender: TObject);
begin
  if StrToFloat(FormatFloat('0.000000',CurrencyEdit1.Value)) <= 0 then
  begin
    MessageDlg('*** Quantidade não informada!' , mtError, [mbOk], 0);
    exit;
  end;
  prc_Gravar_Mat;
end;

procedure TfrmBaixa_Mat_OS.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    RzDateTimeEdit1.SetFocus;
end;

procedure TfrmBaixa_Mat_OS.RzDateTimeEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    CurrencyEdit1.SetFocus;
end;

procedure TfrmBaixa_Mat_OS.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConfirmar.SetFocus;
end;

procedure TfrmBaixa_Mat_OS.NxComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    Edit1.SetFocus;
end;

procedure TfrmBaixa_Mat_OS.btnCancelarClick(Sender: TObject);
begin
  prc_Limpar;
  CurrencyEdit2.SetFocus;
end;

end.
