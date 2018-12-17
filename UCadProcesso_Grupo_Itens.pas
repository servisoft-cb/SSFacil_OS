unit UCadProcesso_Grupo_Itens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadProcesso_Grupo, StdCtrls, DBCtrls, RxLookup, Buttons,
  ExtCtrls, DB;

type
  TfrmCadProcesso_Grupo_Itens = class(TForm)
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    Label3: TLabel;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadProcesso_Grupo: TDMCadProcesso_Grupo;
  end;

var
  frmCadProcesso_Grupo_Itens: TfrmCadProcesso_Grupo_Itens;

implementation

uses rsDBUtils, UCadProcesso, UCadServico_OS;

{$R *.dfm}

procedure TfrmCadProcesso_Grupo_Itens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.State in [dsEdit,dsInsert] then
    fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Cancel;
  Action := Cafree;
end;

procedure TfrmCadProcesso_Grupo_Itens.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadProcesso_Grupo);
end;

procedure TfrmCadProcesso_Grupo_Itens.BitBtn1Click(Sender: TObject);
begin
  if trim(RxDBLookupCombo1.Text) = '' then
  begin
    MessageDlg('*** Processo não foi informado!', mtError, [mbOk], 0);
    RxDBLookupCombo1.SetFocus;
    exit;
  end;
  fDMCadProcesso_Grupo.cdsProcesso_Grupo_Itens.Post;
  Close;
end;

procedure TfrmCadProcesso_Grupo_Itens.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadProcesso_Grupo_Itens.SpeedButton13Click(Sender: TObject);
begin
  frmCadProcesso := TfrmCadProcesso.Create(self);
  frmCadProcesso.ShowModal;
  FreeAndNil(frmCadProcesso);
  fDMCadProcesso_Grupo.cdsProcesso.Close;
  fDMCadProcesso_Grupo.cdsProcesso.Open;
end;

procedure TfrmCadProcesso_Grupo_Itens.SpeedButton14Click(Sender: TObject);
begin
  fDMCadProcesso_Grupo.cdsProcesso.Close;
  fDMCadProcesso_Grupo.cdsProcesso.Open;
end;

procedure TfrmCadProcesso_Grupo_Itens.SpeedButton1Click(Sender: TObject);
begin
  frmCadServico_OS := TfrmCadServico_OS.Create(self);
  frmCadServico_OS.ShowModal;
  FreeAndNil(frmCadServico_OS);
  fDMCadProcesso_Grupo.cdsServico_OS.Close;
  fDMCadProcesso_Grupo.cdsServico_OS.Open;
end;

procedure TfrmCadProcesso_Grupo_Itens.SpeedButton2Click(Sender: TObject);
begin
  fDMCadProcesso_Grupo.cdsServico_OS.Close;
  fDMCadProcesso_Grupo.cdsServico_OS.Open;
end;

end.
