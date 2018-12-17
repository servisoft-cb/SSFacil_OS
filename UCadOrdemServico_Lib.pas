unit UCadOrdemServico_Lib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadOrdemServico, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,
  RXDBCtrl, DBCtrls, RzEdit, RzDBEdit, DB, NxCollection, CurrEdit, Grids,
  DBGrids, SMDBGrid, dbXPress;

type
  TfrmCadOrdemServico_Lib = class(TForm)
    NxPanel1: TNxPanel;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText3: TDBText;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel4: TPanel;
    btnExcluir_Itens: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure btnExcluir_ItensClick(Sender: TObject);
  private
    { Private declarations }
    vFormEncerrar : Boolean;
    vSaldo_Lib : Real;

    procedure prc_Gravar_BaixaPedido(Qtd : Real);
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    
  end;

var
  frmCadOrdemServico_Lib: TfrmCadOrdemServico_Lib;

implementation

uses rsDBUtils, DmdDatabase;


{$R *.dfm}

procedure TfrmCadOrdemServico_Lib.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOrdemServico_Lib.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);

  vSaldo_Lib := StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_ItensQTD.AsFloat - fDMCadOrdemServico.cdsOrdemServico_ItensQTD_LIBERADA.AsFloat));

  Label5.Caption := FormatFloat('0.00##',vSaldo_Lib);
end;

procedure TfrmCadOrdemServico_Lib.NxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadOrdemServico_Lib.NxButton1Click(Sender: TObject);
var
  vItemAux : Integer;
  vQtdAux : Real;
  vQtd2 : Real;
  ID: TTransactionDesc;
begin
  if CurrencyEdit1.Value > StrToFloat(FormatFloat('0.0000',vSaldo_Lib)) then
  begin
    MessageDlg('*** Quantidade informada, maior que o Saldo!', mtInformation, [mbOk], 0);
    exit;
  end;

  vQtdAux := 0;
  fDMCadOrdemServico.cdsPedido_Item.Close;
  fDMCadOrdemServico.sdsPedido_Item.ParamByName('ID_OS_SERV').AsInteger := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
  fDMCadOrdemServico.cdsPedido_Item.Open;
  if fDMCadOrdemServico.cdsPedido_Item.IsEmpty then
  begin
    MessageDlg('*** Não gerado Pedido para a OS!', mtInformation, [mbOk], 0);
    exit;
  end;
  fDMCadOrdemServico.cdsPedido_Item.First;
  while not fDMCadOrdemServico.cdsPedido_Item.Eof do
  begin
    vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux + (fDMCadOrdemServico.cdsPedido_ItemQTD_RESTANTE.AsFloat - fDMCadOrdemServico.cdsPedido_ItemQTD_LIBERADA.AsFloat)));
    fDMCadOrdemServico.cdsPedido_Item.Next;
  end;
  if StrToFloat(FormatFloat('0.0000',vQtdAux)) <= 0 then
  begin
    MessageDlg('*** Sem saldo no Pedido para a liberação!', mtInformation, [mbOk], 0);
    exit;
  end;
  if CurrencyEdit1.Value > StrToFloat(FormatFloat('0.0000',vQtdAux)) then
  begin
    MessageDlg('*** Saldo no Pedido de  ' + FormatFloat('0.00##',vQtdAux)  + '!', mtInformation, [mbOk], 0);
    exit;
  end;

  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try

    fDMCadOrdemServico.cdsOrdemServico_Lib.Last;
    vItemAux := fDMCadOrdemServico.cdsOrdemServico_LibITEM_LIB.AsInteger;
    fDMCadOrdemServico.cdsOrdemServico_Lib.Insert;
    fDMCadOrdemServico.cdsOrdemServico_LibID.AsInteger       := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
    fDMCadOrdemServico.cdsOrdemServico_LibITEM.AsInteger     := fDMCadOrdemServico.cdsOrdemServico_ItensITEM.AsInteger;
    fDMCadOrdemServico.cdsOrdemServico_LibITEM_LIB.AsInteger :=  vItemAux + 1;
    fDMCadOrdemServico.cdsOrdemServico_LibDTLIBERADA.AsDateTime := Date;
    fDMCadOrdemServico.cdsOrdemServico_LibHRLIBERADA.AsDateTime := Now;
    fDMCadOrdemServico.cdsOrdemServico_LibQTD.AsFloat           := CurrencyEdit1.Value;
    fDMCadOrdemServico.cdsOrdemServico_LibQTD_LIB_PED.AsFloat   := CurrencyEdit1.Value;
    fDMCadOrdemServico.cdsOrdemServico_Lib.Post;

    fDMCadOrdemServico.cdsOrdemServico_Itens.Edit;
    fDMCadOrdemServico.cdsOrdemServico_ItensQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_ItensQTD_LIBERADA.AsFloat + CurrencyEdit1.Value));
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;

    vQtd2 := CurrencyEdit1.Value;
    fDMCadOrdemServico.cdsPedido_Item.First;
    while not fDMCadOrdemServico.cdsPedido_Item.Eof do
    begin
      vQtdAux := StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsPedido_ItemQTD_RESTANTE.AsFloat - fDMCadOrdemServico.cdsPedido_ItemQTD_LIBERADA.AsFloat));

      if StrToFloat(FormatFloat('0.0000',vQtdAux)) > 0 then
      begin
        if StrToFloat(FormatFloat('0.0000',vQtd2)) <= StrToFloat(FormatFloat('0.0000',vQtdAux)) then
          vQtdAux := StrToFloat(FormatFloat('0.0000',vQtd2));
        prc_Gravar_BaixaPedido(vQtdAux);

        {fDMCadOrdemServico.cdsPedido_Item.Edit;
        fDMCadOrdemServico.cdsPedido_ItemQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsPedido_ItemQTD_LIBERADA.AsFloat + vQtdAux));
        fDMCadOrdemServico.cdsPedido_Item.Post;}
        vQtd2 := StrToFloat(FormatFloat('0.0000',vQtd2 - vQtdAux));
      end;

      if StrToFloat(FormatFloat('0.0000',vQtd2)) <= 0 then
        fDMCadOrdemServico.cdsPedido_Item.Last;

      fDMCadOrdemServico.cdsPedido_Item.Next;
    end;
    //fDMCadOrdemServico.cdsPedido_Item.ApplyUpdates(0);
    fDMCadOrdemServico.cdsBaixa_Pedido.ApplyUpdates(0);
    fDMCadOrdemServico.cdsOrdemServico_Itens.ApplyUpdates(0);
    dmDatabase.scoDados.Commit(ID);
  except
    on E: exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar a liberação ' + #13 + e.Message);
    end;
  end;
  Close;
end;

procedure TfrmCadOrdemServico_Lib.btnExcluir_ItensClick(Sender: TObject);
var
  ID: TTransactionDesc;
  vQtdAux : Real;
begin
  if fDMCadOrdemServico.cdsOrdemServico_Lib.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vQtdAux := 0;
  fDMCadOrdemServico.cdsPedido_Item.Close;
  fDMCadOrdemServico.sdsPedido_Item.ParamByName('ID_OS_SERV').AsInteger := fDMCadOrdemServico.cdsOrdemServico_LibID.AsInteger;
  fDMCadOrdemServico.cdsPedido_Item.Open;
  fDMCadOrdemServico.cdsPedido_Item.First;
  while not fDMCadOrdemServico.cdsPedido_Item.Eof do
  begin
    vQtdAux := StrToFloat(FormatFloat('0.0000',vQtdAux + fDMCadOrdemServico.cdsPedido_ItemQTD_LIBERADA.AsFloat));
    fDMCadOrdemServico.cdsPedido_Item.Next;
  end;
  if vQtdAux < StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_LibQTD.AsFloat)) then
  begin
    MessageDlg('*** Pedido já foi Faturado!', mtInformation, [mbOk], 0);
    exit;
  end;
  
  vSaldo_Lib := StrToFloat(FormatFloat('0.0000',vSaldo_Lib + fDMCadOrdemServico.cdsOrdemServico_LibQTD.AsFloat));
  Label5.Caption := FormatFloat('0.00##',vSaldo_Lib);


  ID.TransactionID  := 12;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);
  try
    fDMCadOrdemServico.cdsOrdemServico_Itens.Edit;
    fDMCadOrdemServico.cdsOrdemServico_ItensQTD_LIBERADA.AsFloat := StrToFloat(FormatFloat('0.0000',fDMCadOrdemServico.cdsOrdemServico_ItensQTD_LIBERADA.AsFloat - fDMCadOrdemServico.cdsOrdemServico_LibQTD.AsFloat));
    fDMCadOrdemServico.cdsOrdemServico_Itens.Post;

    fDMCadOrdemServico.prc_Abrir_Baixa_Pedido(0,fDMCadOrdemServico.cdsOrdemServicoID.AsInteger,fDMCadOrdemServico.cdsOrdemServico_LibITEM.AsInteger,fDMCadOrdemServico.cdsOrdemServico_LibITEM_LIB.AsInteger);

    fDMCadOrdemServico.cdsBaixa_Pedido.First;
    while not fDMCadOrdemServico.cdsBaixa_Pedido.Eof do
      fDMCadOrdemServico.cdsBaixa_Pedido.Delete;

    fDMCadOrdemServico.cdsOrdemServico_Lib.Delete;

    fDMCadOrdemServico.cdsOrdemServico_Itens.ApplyUpdates(0);
    fDMCadOrdemServico.cdsBaixa_Pedido.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);
  except
    on E: exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      raise Exception.Create('Erro ao gravar a liberação ' + #13 + e.Message);
    end;
  end;
end;

procedure TfrmCadOrdemServico_Lib.prc_Gravar_BaixaPedido(Qtd: Real);
var
  vAux : Integer;
  vID_BaixaTalao : Integer;
  vQtd : Real;
begin
  vAux := dmDatabase.ProximaSequencia('BAIXA_PEDIDO',0);
  if not fDMCadOrdemServico.cdsBaixa_Pedido.Active then
    fDMCadOrdemServico.prc_Abrir_Baixa_Pedido(-1,0,0,0);

    fDMCadOrdemServico.cdsBaixa_Pedido.Insert;
    fDMCadOrdemServico.cdsBaixa_PedidoID.AsInteger := vAux;
    fDMCadOrdemServico.cdsBaixa_PedidoTIPO_REG.AsString       := 'PRO';
    fDMCadOrdemServico.cdsBaixa_PedidoID_PEDIDO.AsInteger     :=  fDMCadOrdemServico.cdsPedido_ItemID.AsInteger;
    fDMCadOrdemServico.cdsBaixa_PedidoITEM_PEDIDO.AsInteger   := fDMCadOrdemServico.cdsPedido_ItemITEM.AsInteger;
    fDMCadOrdemServico.cdsBaixa_PedidoDTBAIXA.AsDateTime      := Date;
    fDMCadOrdemServico.cdsBaixa_PedidoQTD.AsFloat             := StrToFloat(FormatFloat('0.0000',Qtd));
    fDMCadOrdemServico.cdsBaixa_PedidoNUM_PEDIDO.AsInteger    := fDMCadOrdemServico.cdsPedido_ItemNUM_PEDIDO.AsInteger;
    fDMCadOrdemServico.cdsBaixa_PedidoPEDIDO_CLIENTE.AsString := fDMCadOrdemServico.cdsPedido_ItemPEDIDO_CLIENTE.AsString;
    fDMCadOrdemServico.cdsBaixa_PedidoID_MOVESTOQUE.AsInteger := 0;
    fDMCadOrdemServico.cdsBaixa_PedidoTIPO_MOV.AsString       := 'P';
    fDMCadOrdemServico.cdsBaixa_PedidoID_OS.AsInteger         := fDMCadOrdemServico.cdsOrdemServicoID.AsInteger;
    fDMCadOrdemServico.cdsBaixa_PedidoITEM_OS.AsInteger       := fDMCadOrdemServico.cdsOrdemServico_ItensITEM.AsInteger;
    fDMCadOrdemServico.cdsBaixa_PedidoITEM_LIB_OS.AsInteger   := fDMCadOrdemServico.cdsOrdemServico_LibITEM_LIB.AsInteger;
    fDMCadOrdemServico.cdsBaixa_Pedido.Post;
end;

end.
