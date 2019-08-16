unit UCancela_OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCanc_OS, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit,
  RzPanel, NxCollection, Grids, DBGrids, SMDBGrid, UDMCadPedido;

type
  TfrmCancela_OS = class(TForm)
    Panel1: TPanel;
    RzGroupBox3: TRzGroupBox;
    Label1: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    CurrencyEdit2: TCurrencyEdit;
    Label2: TLabel;
    RzGroupBox1: TRzGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    CurrencyEdit3: TCurrencyEdit;
    CurrencyEdit4: TCurrencyEdit;
    NxPanel1: TNxPanel;
    Label5: TLabel;
    ceQtdPeca: TCurrencyEdit;
    ceQtdKG: TCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    DateEdit1: TDateEdit;
    Label8: TLabel;
    Edit1: TEdit;
    NxButton1: TNxButton;
    NxButton2: TNxButton;
    SMDBGrid1: TSMDBGrid;
    RzGroupBox2: TRzGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    CurrencyEdit5: TCurrencyEdit;
    CurrencyEdit6: TCurrencyEdit;
    Label11: TLabel;
    ceNumPedido: TCurrencyEdit;
    Label12: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure NxButton1Click(Sender: TObject);
    procedure NxButton2Click(Sender: TObject);
  private
    { Private declarations }
    fDMCanc_OS: TDMCanc_OS;
    fDMCadPedido: TDMCadPedido;

    procedure prc_Abrir_OrdemServico_Canc;
    procedure prc_Abrir_JaCancelado;
    procedure prc_Ajusta_Pedido(ID : Integer);

  public
    { Public declarations }
    vID_OS_Canc : Integer;
    vItem_OS_Canc : Integer;

  end;

var
  frmCancela_OS: TfrmCancela_OS;

implementation

uses rsDBUtils, uUtilPadrao, Math, DB, uCalculo_Pedido, uGrava_Pedido;

{$R *.dfm}

procedure TfrmCancela_OS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(fDMCanc_OS);
  Action := Cafree;
end;

procedure TfrmCancela_OS.FormShow(Sender: TObject);
begin
  fDMCanc_OS := TDMCanc_OS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCanc_OS);

  prc_Abrir_OrdemServico_Canc;
  prc_Abrir_JaCancelado;
end;

procedure TfrmCancela_OS.NxButton1Click(Sender: TObject);
var
  vItem : Integer;
begin
  if (ceQtdKG.Value <= 0) or (ceQtdPeca.Value <= 0) then
  begin
    MessageDlg('*** É obrigatório informar a Qtde. de Peças e Qtd. em KG!', mtError, [mbOk], 0);
    exit;
  end;
  if DateEdit1.Date <= 10 then
  begin
    MessageDlg('*** Data não foi informada!', mtError, [mbOk], 0);
    exit;
  end;
  if trim(Edit1.Text) = '' then
  begin
    MessageDlg('*** Motivo não foi informado!', mtError, [mbOk], 0);
    exit;
  end;
  if ceQtdKG.Value > CurrencyEdit3.Value then
  begin
    MessageDlg('*** Qtd. KG informada maior do que esta disponível!', mtError, [mbOk], 0);
    exit;
  end;
  if ceQtdPeca.Value > CurrencyEdit1.Value then
  begin
    MessageDlg('*** Qtd. de Peça informada maior do que esta disponível!', mtError, [mbOk], 0);
    exit;
  end;
  if (ceNumPedido.AsInteger > 0) and (ceQtdKG.Value > CurrencyEdit5.Value) then
  begin
    MessageDlg('*** Qtd. de KG maior que a pendente no Pedido!', mtError, [mbOk], 0);
    exit;
  end;

  Label12.Caption := '..... Aguarde, Cancelando ..... ';
  Label12.Font.Color := clBlue;
  Label12.Refresh;

  fDMCadPedido := TDMCadPedido.Create(Self);
  fDMCadPedido.prc_Abrir_cdsCliente('C');
  fDMCadPedido.prc_Abrir_cdsCFOP('S');

  try

    fDMCanc_OS.cdsOrdemServico_Canc.Last;
    vItem := fDMCanc_OS.cdsOrdemServico_CancITEM_CANC.AsInteger;

    fDMCanc_OS.cdsOrdemServico_Canc.Insert;
    fDMCanc_OS.cdsOrdemServico_CancID.AsInteger          := vID_OS_Canc;
    fDMCanc_OS.cdsOrdemServico_CancITEM.AsInteger        := vItem_OS_Canc;
    fDMCanc_OS.cdsOrdemServico_CancITEM_CANC.AsInteger   := vItem + 1;
    fDMCanc_OS.cdsOrdemServico_CancDATA.AsDateTime       := DateEdit1.Date;
    fDMCanc_OS.cdsOrdemServico_CancDTUSUARIO.AsDateTime  := Date;
    fDMCanc_OS.cdsOrdemServico_CancHRUSUARIO.AsDateTime  := Now;
    fDMCanc_OS.cdsOrdemServico_CancUSUARIO.AsString      := vUsuario;
    fDMCanc_OS.cdsOrdemServico_CancQTD.AsFloat           := ceQtdPeca.Value;
    fDMCanc_OS.cdsOrdemServico_CancQTD_NOTA.AsFloat      := ceQtdKG.Value;
    fDMCanc_OS.cdsOrdemServico_CancMOTIVO.AsString       := Edit1.Text;
    fDMCanc_OS.cdsOrdemServico_CancID_PEDIDO.AsInteger   := fDMCanc_OS.qOSItemID_PEDIDO.AsInteger;
    fDMCanc_OS.cdsOrdemServico_CancITEM_PEDIDO.AsInteger := fDMCanc_OS.qOSItemITEM_PEDIDO.AsInteger;
    fDMCanc_OS.cdsOrdemServico_Canc.Post;
    fDMCanc_OS.cdsOrdemServico_Canc.ApplyUpdates(0);

    prc_Ajusta_Pedido(fDMCanc_OS.qOSItemID_PEDIDO.AsInteger);
  finally
    Label12.Caption := '';
    FreeAndNil(fDMCadPedido);
  end;

  Close;
end;

procedure TfrmCancela_OS.prc_Abrir_JaCancelado;
begin
  fDMCanc_OS.qOSItem.Close;
  fDMCanc_OS.qOSItem.ParamByName('ID').AsInteger   := vID_OS_Canc;
  fDMCanc_OS.qOSItem.ParamByName('ITEM').AsInteger := vItem_OS_Canc;
  fDMCanc_OS.qOSItem.Open;

  CurrencyEdit1.Value := fDMCanc_OS.qOSItemQTD.Value;
  CurrencyEdit2.Value := fDMCanc_OS.qOSItemQTD_PECA_CANC.Value;
  
  CurrencyEdit3.Value := fDMCanc_OS.qOSItemQTD_NOTA.Value;
  CurrencyEdit4.Value := fDMCanc_OS.qOSItemQTD_NOTA_CANC.Value;

  CurrencyEdit5.Value   := fDMCanc_OS.qOSItemQTD_RESTANTE.Value;
  CurrencyEdit6.Value   := fDMCanc_OS.qOSItemQTD_FATURADO.Value;
  ceNumPedido.AsInteger := fDMCanc_OS.qOSItemNUM_PEDIDO.AsInteger;
end;

procedure TfrmCancela_OS.prc_Abrir_OrdemServico_Canc;
begin
  fDMCanc_OS.cdsOrdemServico_Canc.Close;
  fDMCanc_OS.sdsOrdemServico_Canc.ParamByName('ID').AsInteger   := vID_OS_Canc;
  fDMCanc_OS.sdsOrdemServico_Canc.ParamByName('ITEM').AsInteger := vItem_OS_Canc;
  fDMCanc_OS.cdsOrdemServico_Canc.Open;
end;

procedure TfrmCancela_OS.NxButton2Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir este registro de cancelamento?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  if fDMCanc_OS.cdsOrdemServico_Canc.IsEmpty then
    exit;

  Label12.Caption := '..... Aguarde, Excluindo ..... ';
  Label12.Font.Color := clRed;
  Label12.Refresh;

  fDMCadPedido := TDMCadPedido.Create(Self);
  fDMCadPedido.prc_Abrir_cdsCliente('C');
  fDMCadPedido.prc_Abrir_cdsCFOP('S');
  try
    fDMCanc_OS.cdsOrdemServico_Canc.Delete;
    fDMCanc_OS.cdsOrdemServico_Canc.ApplyUpdates(0);

    prc_Abrir_JaCancelado;

    prc_Ajusta_Pedido(fDMCanc_OS.qOSItemID_PEDIDO.AsInteger);
  finally
    Label12.Caption := '';
    FreeAndNil(fDMCadPedido);
  end;
end;

procedure TfrmCancela_OS.prc_Ajusta_Pedido(ID: Integer);
begin
  if fDMCanc_OS.qOSItemID_PEDIDO.AsInteger <= 0 then
    exit;

  fDMCadPedido.prc_Localizar(fDMCanc_OS.qOSItemID_PEDIDO.AsInteger);

  fDMCadPedido.cdsPedido.Edit;

  uCalculo_Pedido.prc_Calcular_Desconto_Novo(fDMCadPedido,False);
  uGrava_Pedido.prc_Gravar(fDMCadPedido,'ALT');

  fDMCadPedido.sdsPrc_Atualiza_Status_Ped.Close;
  fDMCadPedido.sdsPrc_Atualiza_Status_Ped.ParamByName('P_ID').AsInteger := fDMCadPedido.cdsPedidoID.AsInteger;
  fDMCadPedido.sdsPrc_Atualiza_Status_Ped.ExecSQL;

  //23/06/2018 Supercrom
  if fDMCadPedido.qParametros_PedUSAR_COPIA_OS.AsString = 'S' then
  begin
    fDMCadPedido.qPedOS.Close;
    fDMCadPedido.qPedOS.ParamByName('ID').AsInteger := fDMCanc_OS.qOSItemID_PEDIDO.AsInteger;
    fDMCadPedido.qPedOS.Open;
    while not fDMCadPedido.qPedOS.Eof do
    begin
      fDMCadPedido.sdsprc_Atualiza_OS_Fat.Close;
      fDMCadPedido.sdsprc_Atualiza_OS_Fat.ParamByName('P_ID').AsInteger := fDMCadPedido.qPedOSID_OS_SERV.AsInteger;
      fDMCadPedido.sdsprc_Atualiza_OS_Fat.ExecSQL;
      fDMCadPedido.qPedOS.Next;
    end;
    fDMCadPedido.qPedOS.Close;
  end;
  //****************
end;

end.

