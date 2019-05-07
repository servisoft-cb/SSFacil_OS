unit UCadOrdemServico_Proc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, ExtCtrls,
  StdCtrls, RxLookup, Mask, DBCtrls, Buttons, DB, RzCmboBx, RzDBCmbo, RxDBComb, RzTabs, NxCollection, 
  RXDBCtrl, ToolEdit;

type
  TfrmCadOrdemServico_Proc = class(TForm)
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label11: TLabel;
    DBDateEdit2: TDBDateEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label7: TLabel;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label6: TLabel;
    DBMemo4: TDBMemo;
    SpeedButton5: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    RxDBLookupCombo3: TRxDBLookupCombo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  frmCadOrdemServico_Proc: TfrmCadOrdemServico_Proc;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadOrdemServico_Proc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Proc.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Proc.Cancel;
  Action := Cafree;
end;

procedure TfrmCadOrdemServico_Proc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
end;

procedure TfrmCadOrdemServico_Proc.BitBtn1Click(Sender: TObject);
begin
  fDMCadOrdemServico.vMsgOS := '';
  if fDMCadOrdemServico.cdsOrdemServico_ProcID_PROCESSO.AsInteger <= 0 then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Processo não informado!';
  if trim(fDMCadOrdemServico.vMsgOS) <> '' then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;

  try
    fDMCadOrdemServico.cdsOrdemServico_ProcNOME_PROCESSO.AsString := RxDBLookupCombo1.Text;
    if fDMCadOrdemServico.cdsOrdemServico_ProcID_SERVICO_OS.AsInteger > 0 then
    begin
      if fDMCadOrdemServico.cdsServico_OS.Locate('ID',fDMCadOrdemServico.cdsOrdemServico_ProcID_SERVICO_OS.AsInteger,[loCaseInsensitive]) then
      begin
        fDMCadOrdemServico.cdsOrdemServico_ProcNOME_SERVICO_OS.AsString := fDMCadOrdemServico.cdsServico_OSNOME.AsString;
      end;
    end;
    fDMCadOrdemServico.cdsOrdemServico_ProcOBSAUX.AsString := fDMCadOrdemServico.cdsOrdemServico_ProcOBS.Value;
    fDMCadOrdemServico.cdsOrdemServico_Proc.Post;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  Close;
end;

procedure TfrmCadOrdemServico_Proc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadOrdemServico_Proc.SpeedButton5Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsProcesso.Close;
  fDMCadOrdemServico.cdsProcesso.Open;
end;

procedure TfrmCadOrdemServico_Proc.SpeedButton1Click(Sender: TObject);
begin
  fDMCadOrdemServico.cdsServico_OS.Close;
  fDMCadOrdemServico.cdsServico_OS.Open;
end;

end.
