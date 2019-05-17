unit UCadOrc_Aprov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, StdCtrls, RxDBComb,
  DBCtrls, ExtCtrls, Mask, ToolEdit, RXDBCtrl, UDMAprova_Orc, RxLookup, NxCollection, Buttons;

type
  TfrmCadOrc_Aprov = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Panel2: TPanel;
    btnConfirmar: TNxButton;
    btnCancelar: TNxButton;
    Panel3: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    DBDateEdit1: TDBDateEdit;
    Label7: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    btnInformar: TNxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure btnInformarClick(Sender: TObject);
  private
    { Private declarations }
    fDMAprova_Orc: TDMAprova_Orc;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  frmCadOrc_Aprov: TfrmCadOrc_Aprov;

implementation

uses rsDBUtils, uUtilPadrao, uCadMotivo;

{$R *.dfm}

procedure TfrmCadOrc_Aprov.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadOrc_Aprov.FormShow(Sender: TObject);
begin
  fDMAprova_Orc := TDMAprova_Orc.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMAprova_Orc);

  Label5.Caption := fDMCadOrdemServico.cdsOrdemServico_ConsultaNUM_ORCAMENTO.AsString;
  Label6.Caption := fDMCadOrdemServico.cdsOrdemServico_ConsultaNOME_CLIENTE.AsString;

  fDMAprova_Orc.prc_Localizar(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger,1);

  if fDMAprova_Orc.cdsOrdemServico_Aprov.RecordCount > 0 then
    btnInformar.Caption := 'Alterar'
  else
    btnInformar.Caption := 'Inserir';
end;

procedure TfrmCadOrc_Aprov.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadOrc_Aprov.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMAprova_Orc.cdsOrdemServico_Aprov);
end;

procedure TfrmCadOrc_Aprov.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMAprova_Orc);
end;

procedure TfrmCadOrc_Aprov.btnConfirmarClick(Sender: TObject);
begin
  if (fDMAprova_Orc.cdsOrdemServico_AprovTIPO.AsString <> 'A') and (fDMAprova_Orc.cdsOrdemServico_AprovTIPO.AsString <> 'N') and
     (fDMAprova_Orc.cdsOrdemServico_AprovTIPO.AsString <> 'P') then
  begin
    MessageDlg('*** Tipo não foi escolhido!', mtInformation, [mbOk], 0);
    exit;
  end;
  if fDMAprova_Orc.cdsOrdemServico_AprovDATA.AsDateTime < fDMCadOrdemServico.cdsOrdemServico_ConsultaDTEMISSAO.AsDateTime then
  begin
    MessageDlg('*** Data da aprovação não pode ser menor que a data de emissão!', mtInformation, [mbOk], 0);
    exit;
  end;
  if (fDMAprova_Orc.cdsOrdemServico_AprovTIPO.AsString = 'N') and (fDMAprova_Orc.cdsOrdemServico_AprovID_MOTIVO.AsInteger <= 0) then
  begin
    MessageDlg('*** Quando for Não Aprovado, é obrigatório informar o Motivo!', mtInformation, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  
  fDMAprova_Orc.cdsOrdemServico_Aprov.Post;
  fDMAprova_Orc.cdsOrdemServico_Aprov.ApplyUpdates(0);
  Close;
end;

procedure TfrmCadOrc_Aprov.SpeedButton2Click(Sender: TObject);
var
  ffrmCadMotivo: TfrmCadMotivo;
begin
  ffrmCadMotivo := TfrmCadMotivo.Create(self);
  ffrmCadMotivo.ShowModal;
  FreeAndNil(ffrmCadMotivo);
  fDMAprova_Orc.cdsMotivo.Close;
  fDMAprova_Orc.cdsMotivo.Open;
end;

procedure TfrmCadOrc_Aprov.SpeedButton5Click(Sender: TObject);
begin
  fDMAprova_Orc.cdsMotivo.Close;
  fDMAprova_Orc.cdsMotivo.Open;
end;

procedure TfrmCadOrc_Aprov.btnInformarClick(Sender: TObject);
begin
  Panel3.Enabled       := True;
  btnInformar.Enabled  := False;
  btnConfirmar.Enabled := True;
  if fDMAprova_Orc.cdsOrdemServico_Aprov.RecordCount > 0 then
    fDMAprova_Orc.cdsOrdemServico_Aprov.Edit
  else
    fDMAprova_Orc.prc_Inserir(fDMCadOrdemServico.cdsOrdemServico_ConsultaID.AsInteger,1);
  DBRadioGroup1.SetFocus;
end;

end.
