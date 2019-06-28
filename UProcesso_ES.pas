unit UProcesso_ES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  FMTBcd, DB, RxLookup, UCBase, Mask, ToolEdit, NxCollection, NxEdit, CurrEdit, ComCtrls, RzDTP, RzEdit,
  RzPanel, SqlExpr, dbXPress, UDMProcesso_ES, DBGrids, SMDBGrid;

type
  TfrmProcesso_ES = class(TForm)
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
    Label11: TLabel;
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
    CurrencyEdit3: TCurrencyEdit;
    pnlParada: TPanel;
    Label14: TLabel;
    CurrencyEdit4: TCurrencyEdit;
    Memo1: TMemo;
    Label15: TLabel;
    Label16: TLabel;
    btnCancelar: TNxButton;
    Label17: TLabel;
    Label18: TLabel;
    Memo2: TMemo;
    Label19: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure CurrencyEdit2Change(Sender: TObject);
    procedure CurrencyEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnConfirmarClick(Sender: TObject);
    procedure CurrencyEdit4Exit(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure CurrencyEdit4Enter(Sender: TObject);
    procedure DateEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzDateTimeEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NxComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCancelarClick(Sender: TObject);
    procedure CurrencyEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CurrencyEdit3Exit(Sender: TObject);
  private
    { Private declarations }
    fDMProcesso_ES: TDMProcesso_ES;
    vMSGLocal : WideString;
    vDigitoIni : String;
    vNumPedido_Loc : Integer;
    vTipo_ES : String;
    vQtd : Real;
    vNum_OS, vOrdem : Integer;
    vPausar : String;//P=Pausar   F=Finalizar Pausa
    vID_ParadaAnt : Integer;
    vQtd_Restante, vQtd_Concluido : Real;

    vContador: Integer;

    function fnc_Verifica_OS : Boolean;
    procedure prc_Gravar_ES;
    procedure prc_Gravar_Qtd_Proc;

    procedure prc_Limpar;
    procedure Montar_Reg;

    procedure prc_Gravar_Pausa;

  public
    { Public declarations }
  end;

var
  frmProcesso_ES: TfrmProcesso_ES;

implementation

uses DmdDatabase, uUtilPadrao, rsDBUtils, UMenu, UProcesso_ES_OS;

{$R *.dfm}

procedure TfrmProcesso_ES.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmProcesso_ES.FormShow(Sender: TObject);
var
  vCampoAux: String;
  i: Integer;
begin
  fDMProcesso_ES := TDMProcesso_ES.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMProcesso_ES);

  //RzDateTimeEdit1.Time := Now;
  //Edit1.SetFocus;
  CurrencyEdit2.SetFocus;
end;

procedure TfrmProcesso_ES.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if (trim(Edit1.Text) = '') then
    begin
      Label19.Visible       := True;
      CurrencyEdit5.Visible := True;
      CurrencyEdit5.SetFocus;
    end
    else
    if fnc_Verifica_OS then
      Montar_Reg
    else
      Edit1.SelectAll;
  end;
end;

{function TfrmProcesso_ES.fnc_Verifica_OS: Boolean;
var
  vAux : String;
  sds: TSQLDataSet;
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

  //Edit1.Text := Monta_Numero(Edit1.Text,0);
  vAux       := Monta_Numero(Edit1.Text,12);
  //if Length(Edit1.Text) < 12 then
  //begin
  //  MessageDlg('*** Código informado incorreto!', mtError, [mbOk], 0);
  //  exit;
  //end;

  //vNum_OS    := StrToInt(copy(Edit1.Text,1,10));
  //vItem_Proc := StrToInt(copy(Edit1.Text,11,2));
  vNum_OS := StrToInt(copy(vAux,1,10));
  vOrdem  := StrToInt(copy(vAux,11,2));

  //Verifica se tem Processo aberto para essa OS
  fDMProcesso_ES.qVerifica_Proc.Close;
  fDMProcesso_ES.qVerifica_Proc.ParamByName('NUM_OS').AsInteger := vNum_OS;
  fDMProcesso_ES.qVerifica_Proc.Open;
  if (fDMProcesso_ES.qVerifica_ProcITEM_PROC.AsInteger > 0) and (fDMProcesso_ES.qVerifica_ProcITEM_PROC.AsInteger <> vOrdem) then
  begin
    MessageDlg('*** OS com o processo <' + fDMProcesso_ES.qVerifica_ProcNOME_PROCESSO.AsString +'> em aberto!' , mtError, [mbOk], 0);
    exit;
  end;
  //************


  vMSGLocal := '';
  fDMProcesso_ES.qOS_Proc.Close;
  fDMProcesso_ES.qOS_Proc.ParamByName('NUM_OS').AsInteger := vNum_OS;
  fDMProcesso_ES.qOS_Proc.ParamByName('ORDEM').AsInteger  := vOrdem;
  fDMProcesso_ES.qOS_Proc.Open;

  if fDMProcesso_ES.qOS_ProcID.AsInteger <= 0 then
    Label5.Caption := '*** Nº da OS ou Processo não existe!*** '
  else
  if (vOrdem > 1) and (fDMProcesso_ES.qOS_ProcQTD_CONCLUIDO_ANT.AsInteger <= 0) then
  begin
    Label5.Caption := '*** Existe um processo anterior que não foi feito a leitura!*** '
  end
  else
  if fDMProcesso_ES.qOS_ProcDTCONCLUIDO.AsDateTime > 10 then
    Label5.Caption := '*** Processo já esta concluído *** ' + #13 + #13 + #13
                    + 'OS: ' + IntToStr(vNum_OS) + #13 + #13
                    + 'Processo: ' + fDMProcesso_ES.qOS_ProcNOME_PROCESSO.AsString + #13 + #13
  else
  begin
    fDMProcesso_ES.cdsBaixa_OS.Close;
    fDMProcesso_ES.sdsBaixa_OS.ParamByName('NUM_OS').AsInteger := vNum_OS;
    fDMProcesso_ES.sdsBaixa_OS.ParamByName('ORDEM').AsInteger  := vOrdem;
    fDMProcesso_ES.cdsBaixa_OS.Open;
    fDMProcesso_ES.cdsBaixa_OS.Last;

    Result := True;
    if fDMProcesso_ES.qOS_ProcDTENTRADA.IsNull then
      vTipo_ES := 'E'
    else
      vTipo_ES := 'S';
  end;
end;}

function TfrmProcesso_ES.fnc_Verifica_OS: Boolean;
var
  vAux : String;
  sds: TSQLDataSet;
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

  vAux       := Monta_Numero(Edit1.Text,12);
  vNum_OS := StrToInt(copy(vAux,1,10));
  vOrdem  := StrToInt(copy(vAux,11,2));

  //Verifica se tem Processo aberto para essa OS
  fDMProcesso_ES.qVerifica_Proc.Close;
  fDMProcesso_ES.qVerifica_Proc.ParamByName('NUM_OS').AsInteger := vNum_OS;
  fDMProcesso_ES.qVerifica_Proc.Open;
  if (fDMProcesso_ES.qVerifica_ProcITEM_PROC.AsInteger > 0) and (fDMProcesso_ES.qVerifica_ProcITEM_PROC.AsInteger <> vOrdem) and
    (fDMProcesso_ES.qParametros_SerCONTROLAR_PROCESSO_ANT.AsString = 'S') then
  begin
    MessageDlg('*** OS com o processo <' + fDMProcesso_ES.qVerifica_ProcNOME_PROCESSO.AsString +'> em aberto!' , mtError, [mbOk], 0);
    exit;
  end;
  //************

  vMSGLocal := '';
  fDMProcesso_ES.qVer.Close;
  fDMProcesso_ES.qVer.ParamByName('NUM_OS').AsInteger    := vNum_OS;
  fDMProcesso_ES.qVer.ParamByName('ITEM_PROC').AsInteger := vOrdem;
  fDMProcesso_ES.qVer.Open;

  if fDMProcesso_ES.qVerNUM_OS.AsInteger <= 0 then
    vMSGLocal := '*** Nº da OS ou Processo não existe!*** '
  else
  if (vOrdem > 1) and (fDMProcesso_ES.qVerQTD_ANT.AsFloat > 0) and (fDMProcesso_ES.qParametros_SerCONTROLAR_PROCESSO_ANT.AsString = 'S') then
    vMSGLocal := '*** Existe um processo anterior que não foi feito a leitura!*** '
  else
  if fDMProcesso_ES.qVerSTATUS.AsString = 'F' then
    vMSGLocal := '*** Processo já esta concluído *** ' + #13 + #13 + #13
                    + 'OS: ' + IntToStr(vNum_OS)
  else
  if (fDMProcesso_ES.qVerDTENTRADA.AsDateTime <= 10) and (vOrdem > 1) and (fDMProcesso_ES.qVerQTD_CONCLUIDA_ANT.AsFloat <= 0) and
    (fDMProcesso_ES.qParametros_SerCONTROLAR_PROCESSO_ANT.AsString = 'S') then
    vMSGLocal := '*** Processo anterior não executado!';

  if trim(vMSGLocal) <> '' then
  begin
    Label5.Caption := vMSGLocal;
    exit;
  end;

  fDMProcesso_ES.qVer_Enc.Close;
  fDMProcesso_ES.qVer_Enc.ParamByName('ID').AsInteger := fDMProcesso_ES.qVerID.AsInteger;
  fDMProcesso_ES.qVer_Enc.Open;

  if fDMProcesso_ES.qVer_EncDTPROCESSO.AsDateTime > 10 then
    vMSGLocal := '*** OS Encerrada ' + #13 + #13
               + 'Data/Hora: ' + fDMProcesso_ES.qVer_EncDTPROCESSO.AsString + '   ' + fDMProcesso_ES.qVer_EncHRPROCESSO.AsString;

  if trim(vMSGLocal) <> '' then
  begin
    Label5.Caption := vMSGLocal;
    exit;
  end;

  fDMProcesso_ES.cdsBaixa_OS.Close;
  fDMProcesso_ES.sdsBaixa_OS.ParamByName('NUM_OS').AsInteger    := vNum_OS;
  fDMProcesso_ES.sdsBaixa_OS.ParamByName('ITEM_PROC').AsInteger := vOrdem;
  fDMProcesso_ES.cdsBaixa_OS.Open;
  fDMProcesso_ES.cdsBaixa_OS.Last;
  Result := True;
  if fDMProcesso_ES.qVerDTENTRADA.IsNull then
    vTipo_ES := 'E'
  else
    vTipo_ES := 'S';
end;

procedure TfrmProcesso_ES.prc_Gravar_ES;
var
  vHora: TTime;
  ID: TTransactionDesc;
  vData:TDate;
begin
  vHora := Now;
  if trim(RzDateTimeEdit1.Text) <> '' then
    vHora := RzDateTimeEdit1.Time
  else
    vHora := Now;
  if DateEdit1.Date > 10 then
    vData := DateEdit1.Date
  else
    vData := Date;

  vMSGLocal := '';
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    if fDMProcesso_ES.qVerRETRABALHO.AsString = 'S' then
      vMSGLocal := 'OS: ' + IntToStr(vNum_OS) + '   *** RETRABALHO *** ' + #13 + #13 + ' Processo: ' + fDMProcesso_ES.qVerNOME_PROCESSO.AsString + #13+ #13
    else
      vMSGLocal := 'OS: ' + IntToStr(vNum_OS) + #13 + #13 + ' Processo: ' + fDMProcesso_ES.qVerNOME_PROCESSO.AsString + #13+ #13;

    if vTipo_ES = 'E' then
    begin
      fDMProcesso_ES.prc_Inserir_Baixa;
      fDMProcesso_ES.cdsBaixa_OSDTENTRADA.AsDateTime := vData;
      fDMProcesso_ES.cdsBaixa_OSHRENTRADA.AsDateTime := vHora;
      if (fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S') and (NxComboBox1.ItemIndex = 1) then
      begin
        fDMProcesso_ES.cdsBaixa_OSDTSAIDA.AsDateTime   := fDMProcesso_ES.cdsBaixa_OSDTENTRADA.AsDateTime;
        fDMProcesso_ES.cdsBaixa_OSHRSAIDA.AsDateTime   := fDMProcesso_ES.cdsBaixa_OSHRENTRADA.AsDateTime;
        fDMProcesso_ES.cdsBaixa_OSTIPO_BAIXA.AsString  := 'M';
        if CurrencyEdit3.Value > 0 then

        fDMProcesso_ES.cdsBaixa_OSTOTAL_HORAS.AsFloat  := CurrencyEdit3.Value;
      end
      else
      begin
        fDMProcesso_ES.cdsBaixa_OSTIPO_BAIXA.AsString  := 'A';
        fDMProcesso_ES.cdsBaixa_OSTOTAL_HORAS.AsFloat  := 0;
      end;
      fDMProcesso_ES.cdsBaixa_OSID_OS.AsInteger      := fDMProcesso_ES.qVerID.AsInteger;
      fDMProcesso_ES.cdsBaixa_OSNUM_OS.AsInteger     := fDMProcesso_ES.qVerNUM_OS.AsInteger;
      fDMProcesso_ES.cdsBaixa_OSITEM_PROC.AsInteger  := fDMProcesso_ES.qVerITEM_PROC.AsInteger;
      fDMProcesso_ES.cdsBaixa_OSID_PROCESSO.AsInteger    := fDMProcesso_ES.qVerID_PROCESSO.AsInteger;
      fDMProcesso_ES.cdsBaixa_OSID_SERVICO_OS.AsInteger  := fDMProcesso_ES.qVerID_SERVICO_OS.AsInteger;
      fDMProcesso_ES.cdsBaixa_OSORDEM.AsInteger          := fDMProcesso_ES.qVerORDEM.AsInteger;
      fDMProcesso_ES.cdsBaixa_OSRETRABALHO.AsString      := fDMProcesso_ES.qVerRETRABALHO.AsString;
      if (fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S') and (NxComboBox1.ItemIndex = 1) then
        vMSGLocal := vMSGLocal + ' *** PROCESSO FINALIZADO ***'
      else
        vMSGLocal := vMSGLocal + ' *** PROCESSO INICIADO ***';
    end
    else
    begin
      fDMProcesso_ES.cdsBaixa_OS.Last;
      if (vPausar = 'P') or (vPausar = 'F') then
      begin
        prc_Gravar_Pausa;
        if vPausar = 'P' then
          vMSGLocal := vMSGLocal + ' *** INÍCIO DA PAUSA ***'
        else
          vMSGLocal := vMSGLocal + ' *** FINALIZAÇÃO DA PAUSA ***' ;
      end
      else
      begin
        fDMProcesso_ES.cdsBaixa_OS.Edit;
        if (fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S') and (NxComboBox1.ItemIndex = 1) then
        begin
          fDMProcesso_ES.cdsBaixa_OSTOTAL_HORAS.AsFloat := CurrencyEdit3.Value;
          fDMProcesso_ES.cdsBaixa_OSTIPO_BAIXA.AsString := 'M';
          fDMProcesso_ES.cdsBaixa_OSDTSAIDA.AsDateTime  := fDMProcesso_ES.cdsBaixa_OSDTENTRADA.AsDateTime;
          fDMProcesso_ES.cdsBaixa_OSHRSAIDA.AsDateTime  := fDMProcesso_ES.cdsBaixa_OSHRENTRADA.AsDateTime;
        end
        else
        begin
          fDMProcesso_ES.cdsBaixa_OSTIPO_BAIXA.AsString := 'A';
          fDMProcesso_ES.cdsBaixa_OSDTSAIDA.AsDateTime  := vData;
          fDMProcesso_ES.cdsBaixa_OSHRSAIDA.AsDateTime  := vHora;
          fDMProcesso_ES.cdsBaixa_OSTOTAL_HORAS.AsFloat := fnc_Calcular_Hora2(fDMProcesso_ES.cdsBaixa_OSHRENTRADA.AsDateTime,
                                                                              fDMProcesso_ES.cdsBaixa_OSHRSAIDA.AsDateTime,
                                                                              fDMProcesso_ES.cdsBaixa_OSDTENTRADA.AsDateTime,
                                                                              fDMProcesso_ES.cdsBaixa_OSDTSAIDA.AsDateTime);
        end;
        fDMProcesso_ES.cdsBaixa_OSOBS.AsString := Memo2.Lines.Text;
        if StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qVerQTD_RESTANTE.AsFloat)) <> CurrencyEdit1.Value then
          vMSGLocal := vMSGLocal + ' *** PROCESSO ENCERRADO PARCIALMENTE ***'
        else
          vMSGLocal := vMSGLocal + ' *** PROCESSO ENCERRADO ***' ;
      end;
    end;
    //prc_Gravar_Qtd_Proc;
    if (vPausar <> 'P') and (vPausar <> 'F') then
    begin
      fDMProcesso_ES.cdsBaixa_OSID_FUNCIONARIO.AsInteger := fDMProcesso_ES.qFuncionarioCODIGO.AsInteger;
      fDMProcesso_ES.cdsBaixa_OSQTD.AsFloat              := CurrencyEdit1.Value;
      fDMProcesso_ES.cdsBaixa_OS.Post;
      fDMProcesso_ES.cdsBaixa_OS.ApplyUpdates(0);
    end;

    dmDatabase.scoDados.Commit(ID);
    prc_Limpar;
    Label5.Caption := vMSGLocal;

  except
      on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        raise Exception.Create('Erro ao gravar Baixa Processo: ' + #13+#13 + e.Message);
      end;
  end;

  fDMProcesso_ES.sdsPRC_Atualiza_OS.Close;
  fDMProcesso_ES.sdsPRC_Atualiza_OS.ParamByName('P_ID').AsInteger := fDMProcesso_ES.qVerID.AsInteger;
  fDMProcesso_ES.sdsPRC_Atualiza_OS.ExecSQL;

  CurrencyEdit2.SetFocus;
end;

procedure TfrmProcesso_ES.Edit1Change(Sender: TObject);
begin
  Label5.Caption   := '';
  pnlBaixa.Visible := False;
  Label19.Visible  := False;
  CurrencyEdit5.Visible := False;
  CurrencyEdit5.AsInteger := 0;
end;

procedure TfrmProcesso_ES.prc_Limpar;
begin
  Edit1.Clear;
  CurrencyEdit1.Clear;
  CurrencyEdit2.Clear;
  fDMProcesso_ES.cdsBaixa_OS.Close;
end;

procedure TfrmProcesso_ES.prc_Gravar_Qtd_Proc;
begin
  fDMProcesso_ES.cdsOrdemServico_Proc.Close;
  fDMProcesso_ES.sdsOrdemServico_Proc.ParamByName('ID').AsInteger        := fDMProcesso_ES.qOS_ProcID.AsInteger;
  fDMProcesso_ES.sdsOrdemServico_Proc.ParamByName('ITEM_PROC').AsInteger := fDMProcesso_ES.qOS_ProcITEM_PROC.AsInteger;
  fDMProcesso_ES.cdsOrdemServico_Proc.Open;

  if fDMProcesso_ES.cdsOrdemServico_ProcID.AsInteger > 0 then
  begin
    fDMProcesso_ES.cdsOrdemServico_Proc.Edit;
    if vTipo_ES = 'E' then
    begin
      fDMProcesso_ES.cdsOrdemServico_ProcQTD.AsFloat     := StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qOS_ProcQTD_ITEM.AsFloat));
      fDMProcesso_ES.cdsOrdemServico_ProcSTATUS.AsString := 'I';
      if fDMProcesso_ES.cdsOrdemServico_ProcDTENTRADA.AsDateTime <= 10 then
      begin
        fDMProcesso_ES.cdsOrdemServico_ProcDTENTRADA.AsDateTime := fDMProcesso_ES.cdsBaixa_OSDTENTRADA.AsDateTime;
        fDMProcesso_ES.cdsOrdemServico_ProcHRENTRADA.AsDateTime := fDMProcesso_ES.cdsBaixa_OSHRENTRADA.AsDateTime;
      end;
    end
    else
    begin
      if vPausar = 'P' then
        fDMProcesso_ES.cdsOrdemServico_ProcSTATUS.AsString := 'P'
      else
      if (vPausar = 'F') then 
        (fDMProcesso_ES.cdsOrdemServico_ProcSTATUS.AsString := 'I')
      else
      begin
        fDMProcesso_ES.cdsOrdemServico_ProcSTATUS.AsString := 'F';
        fDMProcesso_ES.cdsOrdemServico_ProcDTCONCLUIDO.AsDateTime := fDMProcesso_ES.cdsBaixa_OSDTSAIDA.AsDateTime;
        fDMProcesso_ES.cdsOrdemServico_ProcHRCONCLUIDO.AsDateTime := fDMProcesso_ES.cdsBaixa_OSHRSAIDA.AsDateTime;
        //fDMProcesso_ES.cdsOrdemServico_ProcQTD_CONCLUIDO.AsFloat := fDMProcesso_ES.cdsOrdemServico_ProcQTD_CONCLUIDO.AsFloat + CurrencyEdit1.Value;
      end;
    end;
    fDMProcesso_ES.cdsOrdemServico_Proc.Post;
    fDMProcesso_ES.cdsOrdemServico_Proc.ApplyUpdates(0);
  end;
end;

procedure TfrmProcesso_ES.CurrencyEdit2Change(Sender: TObject);
begin
  Label5.Caption := '';
  Edit1.Clear;
  Label1.Visible := False;
  Edit1.Visible  := False;
  Label8.Visible := False;
  NxComboBox1.Visible := False;
  pnlBaixa.Visible  := False;
end;

procedure TfrmProcesso_ES.CurrencyEdit2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if CurrencyEdit2.AsInteger > 0 then
    begin
      NxComboBox1.ItemIndex := 0;
      fDMProcesso_ES.qFuncionario.Close;
      fDMProcesso_ES.qFuncionario.ParamByName('NUM_CARTAO').AsInteger := CurrencyEdit2.AsInteger;
      fDMProcesso_ES.qFuncionario.Open;
      if fDMProcesso_ES.qFuncionarioCODIGO.AsInteger <= 0 then
      begin
        Label5.Caption := '*** FUNCIONÁRIO NÃO ENCONTRADO ***';
        CurrencyEdit2.SelectAll;
        CurrencyEdit2.SetFocus;
      end
      else
      begin
        Label8.Visible      := (fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S');
        NxComboBox1.Visible := (fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S');
        Label1.Visible      := True;
        Edit1.Visible       := True;
        if fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S' then
          NxComboBox1.SetFocus
        else
           Edit1.SetFocus;
      end;
    end;
  end;
end;

procedure TfrmProcesso_ES.Montar_Reg;
begin
  pnlProcesso.Visible := True;
  //Label10.Caption     := fDMProcesso_ES.qOS_ProcNOME_PROCESSO.AsString;
  Label10.Caption     := fDMProcesso_ES.qVerNOME_PROCESSO.AsString;
  if fDMProcesso_ES.qVerRETRABALHO.AsString = 'S' then
    Label10.Caption  := Label10.Caption + '  ** Retrabalho';
  DateEdit1.Date := Date;
  RzDateTimeEdit1.Time := Now;
  Label13.Caption := '';
  vPausar         := '';
  Label15.Caption := '';
  Memo2.Lines.Clear;
  if vTipo_ES = 'E' then
  begin
    if (fDMProcesso_ES.qVerORDEM.AsInteger = 1) then
      CurrencyEdit1.Value := StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qVerQTD_RESTANTE.AsFloat))
    else
    //aqui 28/06/2019
    if StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qVerQTD_CONCLUIDA_ANT.AsFloat)) > 0 then
      CurrencyEdit1.Value := StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qVerQTD_CONCLUIDA_ANT.AsFloat))
    else
    if (StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qVerQTD_CONCLUIDO.AsFloat)) > 0) and (StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qVerQTD_RESTANTE.AsFloat)) > 0) then
      CurrencyEdit1.Value := StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qVerQTD_RESTANTE.AsFloat))
    else
      CurrencyEdit1.Value := StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qVerQTD_RESTANTE.AsFloat));
    btnConfirmar.Caption := 'Entrada';
    label15.Caption := 'Entrada em Produção';
    Label18.Visible := False;
    Memo2.Visible   := False;
  end
  else
  begin
    if fDMProcesso_ES.qVerSTATUS.AsString = 'P' then
      vPausar := 'F'
    else
    begin
      if (fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S') and (NxComboBox1.ItemIndex = 1) then
        vPausar := ''
      else
      begin
        vPausar := InputBox('','Informe a letra  P  para pausar', '');
        if (trim(vPausar) = 'P') or (trim(vPausar) = 'p') then
          vPausar := 'P';
      end;
    end;
    //if MessageDlg('Pausar a OS?',mtConfirmation,[mbYes,mbNo],1) = mrYes then
    //  vPausar := 'P';
    if vPausar = 'P' then
      btnConfirmar.Caption := 'Pausar'
    else
    if vPausar = 'F' then
    begin
      btnConfirmar.Caption    := 'Finalizar Pausa';
      fDMProcesso_ES.qVer_Pausa.Close;
      fDMProcesso_ES.qVer_Pausa.ParamByName('ID_OS').AsInteger     := fDMProcesso_ES.qVerID.AsInteger;
      fDMProcesso_ES.qVer_Pausa.ParamByName('ITEM_PROC').AsInteger := fDMProcesso_ES.qVerITEM_PROC.AsInteger;
      fDMProcesso_ES.qVer_Pausa.Open;
      CurrencyEdit4.AsInteger := fDMProcesso_ES.qVer_PausaID_PARADA.AsInteger;
      Memo1.Lines.Clear;
      Memo1.Lines.Text := fDMProcesso_ES.qVer_PausaOBS.AsString;
    end
    else
      btnConfirmar.Caption := 'Finalizar';
    //CurrencyEdit1.AsInteger := fDMProcesso_ES.qOS_ProcQTD.AsInteger - fDMProcesso_ES.qOS_ProcQTD_CONCLUIDO.AsInteger;
    CurrencyEdit1.Value := StrToFloat(FormatFloat('0.0000',fDMProcesso_ES.qVerQTD_EM_ABERTO.AsFloat));
    Label13.Caption     := fDMProcesso_ES.qVerDTENTRADA.AsString + ' ' + fDMProcesso_ES.qVerHRENTRADA.AsString;
    if vPausar = 'P' then
      Label15.Caption := 'Início da Pausa'
    else
    if vPausar = 'F' then
      Label15.Caption := 'Finalizar Pausa'
    else
      Label15.Caption := 'Finalizar Produção';
    Label18.Visible := ((vPausar <> 'P') and (vPausar <> 'F'));
    Memo2.Visible   := ((vPausar <> 'P') and (vPausar <> 'F'));
  end;
  Label15.Visible := True;

  pnlBaixa.Visible  := True;
  pnlParada.Visible := ((vPausar = 'P') or (vPausar = 'F'));
  Label11.Visible := ((fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S') and (NxComboBox1.ItemIndex = 1));
  CurrencyEdit3.Visible := ((fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S') and (NxComboBox1.ItemIndex = 1));
  Label16.Visible := ((fDMProcesso_ES.qFuncionarioBAIXA_OS_MANUAL.AsString = 'S') and (NxComboBox1.ItemIndex = 1));

  Label6.Visible    := ((NxComboBox1.ItemIndex = 0) or not(NxComboBox1.Visible ));
  DateEdit1.Visible := ((NxComboBox1.ItemIndex = 0) or not(NxComboBox1.Visible ));
  Label7.Visible    := ((NxComboBox1.ItemIndex = 0) or not(NxComboBox1.Visible ));
  RzDateTimeEdit1.Visible := ((NxComboBox1.ItemIndex = 0) or not(NxComboBox1.Visible ));
  Label2.Visible          := ((NxComboBox1.ItemIndex = 0) or not(NxComboBox1.Visible ));

  CurrencyEdit1.ReadOnly := ((vPausar = 'P') or (vPausar = 'F'));

  if not DateEdit1.Visible then
    DateEdit1.Clear;

  if vPausar = 'P' then
    CurrencyEdit4.SetFocus
  else
  begin
    if DateEdit1.Visible then
      DateEdit1.SetFocus
    else
      CurrencyEdit3.SetFocus;
  end;
end;

procedure TfrmProcesso_ES.btnConfirmarClick(Sender: TObject);
begin
  if (CurrencyEdit1.Value <= 0) and (vPausar <> 'P') and (vPausar <> 'F') then
  begin
    MessageDlg('*** Quantidade não informada!' , mtError, [mbOk], 0);
    exit;
  end;
  if (vPausar = 'P') and (CurrencyEdit4.AsInteger <= 0) then
  begin
    MessageDlg('*** Faltou informar o código da parada!' , mtError, [mbOk], 0);
    exit;
  end;
  prc_Gravar_ES;
end;

procedure TfrmProcesso_ES.prc_Gravar_Pausa;
var
  vData : TDate;
  vHora : TTime;
begin
  if vPausar = 'P' then
    fDMProcesso_ES.prc_Inserir_Pausa
  else
    fDMProcesso_ES.prc_Localizar_Pausa(fDMProcesso_ES.cdsBaixa_OSID.AsInteger);
  if DateEdit1.Date > 10 then
  begin
    vData := DateEdit1.Date;
    vHora := RzDateTimeEdit1.Time;
  end
  else
  begin
    vData := Date;
    vHora := Now;
  end;
    
  if vPausar = 'P' then
  begin
    fDMProcesso_ES.cdsBaixa_OS_PausaID_PARADA.AsInteger := CurrencyEdit4.AsInteger;
    fDMProcesso_ES.cdsBaixa_OS_PausaDTINICIO.AsDateTime := vData;
    fDMProcesso_ES.cdsBaixa_OS_PausaHRINICIO.AsDateTime := vHora;
    fDMProcesso_ES.cdsBaixa_OS_PausaOBS.AsString := Memo1.Text;
  end
  else
  begin
    fDMProcesso_ES.cdsBaixa_OS_Pausa.Edit;
    fDMProcesso_ES.cdsBaixa_OS_PausaDTFINAL.AsDateTime := vData;
    fDMProcesso_ES.cdsBaixa_OS_PausaHRFINAL.AsDateTime := vHora;

    fDMProcesso_ES.cdsBaixa_OS_PausaTOTAL_HORAS.AsFloat := fnc_Calcular_Hora2(fDMProcesso_ES.cdsBaixa_OS_PausaHRINICIO.AsDateTime,
                                                                              fDMProcesso_ES.cdsBaixa_OS_PausaHRFINAL.AsDateTime,
                                                                              fDMProcesso_ES.cdsBaixa_OS_PausaDTINICIO.AsDateTime,
                                                                              fDMProcesso_ES.cdsBaixa_OS_PausaDTFINAL.AsDateTime);

  end;
  fDMProcesso_ES.cdsBaixa_OS_Pausa.Post;
  fDMProcesso_ES.cdsBaixa_OS_Pausa.ApplyUpdates(0);
end;

procedure TfrmProcesso_ES.CurrencyEdit4Exit(Sender: TObject);
begin
  if CurrencyEdit4.AsInteger <> vID_ParadaAnt then
  begin
    Memo1.Lines.Clear;
    if CurrencyEdit4.AsInteger > 0 then
    begin
      fDMProcesso_ES.qParada.Close;
      fDMProcesso_ES.qParada.ParamByName('ID').AsInteger := CurrencyEdit4.AsInteger;
      fDMProcesso_ES.qParada.Open;
      if fDMProcesso_ES.qParadaID.AsInteger <= 0 then
      begin
        MessageDlg('*** Motivo parada não encontrado!', mtError, [mbOk], 0);
        CurrencyEdit4.SetFocus;
        exit;
      end
      else
        Memo1.Lines.Text := fDMProcesso_ES.qParadaNOME.AsString;
    end;
  end;
end;

procedure TfrmProcesso_ES.Memo1Enter(Sender: TObject);
begin
  Memo1.ReadOnly := not(CurrencyEdit4.AsInteger > 0);
  Memo1.SelStart := (Length(Memo1.Text) + 1);
end;

procedure TfrmProcesso_ES.CurrencyEdit4Enter(Sender: TObject);
begin
  vID_ParadaAnt := CurrencyEdit4.AsInteger;
end;

procedure TfrmProcesso_ES.DateEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    RzDateTimeEdit1.SetFocus;
end;

procedure TfrmProcesso_ES.RzDateTimeEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    if CurrencyEdit3.Visible then
      CurrencyEdit3.SetFocus
    else
      CurrencyEdit1.SetFocus;
  end;
end;

procedure TfrmProcesso_ES.CurrencyEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    //if Memo2.Visible then
     // Memo2.SetFocus
    //else
      btnConfirmar.SetFocus;
  end;
end;

procedure TfrmProcesso_ES.CurrencyEdit4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = Vk_Return) and (CurrencyEdit4.AsInteger > 0) then
    Memo1.SetFocus;
end;

procedure TfrmProcesso_ES.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_Return) and (CurrencyEdit4.AsInteger > 0) then
  begin
    if DateEdit1.Visible then
      DateEdit1.SetFocus
    else
      CurrencyEdit3.SetFocus;
  end;
end;

procedure TfrmProcesso_ES.CurrencyEdit3KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    CurrencyEdit1.SetFocus;
end;

procedure TfrmProcesso_ES.NxComboBox1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = Vk_Return then
    Edit1.SetFocus;
end;

procedure TfrmProcesso_ES.btnCancelarClick(Sender: TObject);
begin
  prc_Limpar;
  CurrencyEdit2.SetFocus;
end;

procedure TfrmProcesso_ES.CurrencyEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
  ffrmProcesso_ES_OS: TfrmProcesso_ES_OS;
begin
  if (Key = Vk_Return) and (CurrencyEdit5.AsInteger > 0) then
  begin
    fDMProcesso_ES.cdsOS_Proc.Close;
    fDMProcesso_ES.sdsOS_Proc.ParamByName('NUM_OS').AsInteger := CurrencyEdit5.AsInteger;
    fDMProcesso_ES.cdsOS_Proc.Open;

    fDMProcesso_ES.vCodBarra_Proc := '';
    ffrmProcesso_ES_OS := TfrmProcesso_ES_OS.Create(Self);
    ffrmProcesso_ES_OS.fDMProcesso_ES := fDMProcesso_ES;
    ffrmProcesso_ES_OS.ShowModal;
    FreeAndNil(ffrmProcesso_ES_OS);

    if trim(fDMProcesso_ES.vCodBarra_Proc) <> '' then
    begin
      fDMProcesso_ES.vCodBarra_Proc := Monta_Numero(fDMProcesso_ES.vCodBarra_Proc,12);
      Edit1.Text := fDMProcesso_ES.vCodBarra_Proc;
      Edit1.SetFocus;
    end;
  end;
end;

procedure TfrmProcesso_ES.CurrencyEdit3Exit(Sender: TObject);
var
  vAux : Real;
begin
  if CurrencyEdit3.Value > 0 then
  begin
    vAux := fnc_Converte_Horas(CurrencyEdit3.Value);
    CurrencyEdit3.Value := vAux;
  end;
end;

end.
