unit UCadOrdemServico_Terc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, UDMCadOrdemServico, ExtCtrls,
  StdCtrls, RxLookup, Mask, DBCtrls, Buttons, DB, RzCmboBx, RzDBCmbo, RxDBComb, RzTabs, NxCollection, 
  RXDBCtrl, ToolEdit;

type
  TfrmCadOrdemServico_Terc = class(TForm)
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
  end;

var
  frmCadOrdemServico_Terc: TfrmCadOrdemServico_Terc;

implementation

uses rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadOrdemServico_Terc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fDMCadOrdemServico.cdsOrdemServico_Terc.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Terc.Cancel;
  Action := Cafree;
end;

procedure TfrmCadOrdemServico_Terc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
end;

procedure TfrmCadOrdemServico_Terc.BitBtn1Click(Sender: TObject);
begin
  fDMCadOrdemServico.vMsgOS := '';
  if trim(fDMCadOrdemServico.cdsOrdemServico_TercNOME_TERCEIRO.AsString) = '' then
    fDMCadOrdemServico.vMsgOS := fDMCadOrdemServico.vMsgOS + #13 + '*** Terceiro não informado!';
  if trim(fDMCadOrdemServico.vMsgOS) <> '' then
  begin
    MessageDlg(fDMCadOrdemServico.vMsgOS, mtError, [mbOk], 0);
    exit;
  end;

  try
    fDMCadOrdemServico.cdsOrdemServico_Terc.Post;
  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar, ' + E.Message);
    end;
  end;
  Close;
end;

procedure TfrmCadOrdemServico_Terc.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

end.
