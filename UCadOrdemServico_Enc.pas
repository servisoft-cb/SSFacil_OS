unit UCadOrdemServico_Enc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadOrdemServico, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit,
  RXDBCtrl, DBCtrls, RzEdit, RzDBEdit, DB;

type
  TfrmCadOrdemServico_Enc = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label6: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label1: TLabel;
    DBDateEdit2: TDBDateEdit;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    RzDBDateTimeEdit1: TRzDBDateTimeEdit;
    Label3: TLabel;
    Label4: TLabel;
    RzDBDateTimeEdit2: TRzDBDateTimeEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vFormEncerrar : Boolean;
  public
    { Public declarations }
    fDMCadOrdemServico: TDMCadOrdemServico;
    
  end;

var
  frmCadOrdemServico_Enc: TfrmCadOrdemServico_Enc;

implementation

uses rsDBUtils;


{$R *.dfm}

procedure TfrmCadOrdemServico_Enc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  vFormEncerrar := False;
  if fDMCadOrdemServico.cdsOrdemServico_Enc.State in [dsEdit,dsInsert] then
    fDMCadOrdemServico.cdsOrdemServico_Enc.Cancel;
  Action := Cafree;
end;

procedure TfrmCadOrdemServico_Enc.DBCheckBox1Click(Sender: TObject);
begin
  Label6.Visible            := (DBCheckBox1.Checked);
  DBDateEdit1.Visible       := (DBCheckBox1.Checked);
  Label3.Visible            := (DBCheckBox1.Checked);
  RzDBDateTimeEdit1.Visible := (DBCheckBox1.Checked);
  Label2.Visible  := ((DBCheckBox1.Checked) or (DBCheckBox2.Checked));
  DBMemo1.Visible := ((DBCheckBox1.Checked) or (DBCheckBox2.Checked));

  if not vFormEncerrar then
    exit;

  if fDMCadOrdemServico.cdsOrdemServico_Enc.State in [dsEdit,dsInsert] then
  begin
    if (DBCheckBox1.Checked) and (fDMCadOrdemServico.cdsOrdemServico_EncDTPROCESSO.AsDateTime <= 10) then
    begin
      fDMCadOrdemServico.cdsOrdemServico_EncDTPROCESSO.AsDateTime := Date;
      fDMCadOrdemServico.cdsOrdemServico_EncHRPROCESSO.AsDateTime := Now;
    end
    else
    if not(DBCheckBox1.Checked) then
    begin
      fDMCadOrdemServico.cdsOrdemServico_EncDTPROCESSO.Clear;
      fDMCadOrdemServico.cdsOrdemServico_EncHRPROCESSO.Clear;
    end;
  end;
end;

procedure TfrmCadOrdemServico_Enc.BitBtn1Click(Sender: TObject);
begin
  if fDMCadOrdemServico.cdsOrdemServico_EncPROCESSO.AsString <> 'S' then
  begin
    fDMCadOrdemServico.cdsOrdemServico_EncDTPROCESSO.Clear;
    fDMCadOrdemServico.cdsOrdemServico_EncHRPROCESSO.Clear;
  end;
  if fDMCadOrdemServico.cdsOrdemServico_EncMATERIAL.AsString <> 'S' then
  begin
    fDMCadOrdemServico.cdsOrdemServico_EncDTMATERIAL.Clear;
    fDMCadOrdemServico.cdsOrdemServico_EncHRMATERIAL.Clear;
  end;
  fDMCadOrdemServico.cdsOrdemServico_Enc.Post;
  fDMCadOrdemServico.cdsOrdemServico_Enc.ApplyUpdates(0);
  Close;
end;

procedure TfrmCadOrdemServico_Enc.DBCheckBox2Click(Sender: TObject);
begin
  Label1.Visible            := (DBCheckBox2.Checked);
  DBDateEdit2.Visible       := (DBCheckBox2.Checked);
  Label4.Visible            := (DBCheckBox2.Checked);
  RzDBDateTimeEdit2.Visible := (DBCheckBox2.Checked);
  
  Label2.Visible  := ((DBCheckBox1.Checked) or (DBCheckBox2.Checked));
  DBMemo1.Visible := ((DBCheckBox1.Checked) or (DBCheckBox2.Checked));

  if not vFormEncerrar then
    exit;

  if fDMCadOrdemServico.cdsOrdemServico_Enc.State in [dsEdit,dsInsert] then
  begin
    if (DBCheckBox2.Checked) and (fDMCadOrdemServico.cdsOrdemServico_EncDTMATERIAL.AsDateTime <= 10) then
    begin
      fDMCadOrdemServico.cdsOrdemServico_EncDTMATERIAL.AsDateTime := Date;
      fDMCadOrdemServico.cdsOrdemServico_EncHRMATERIAL.AsDateTime := Now;
    end
    else
    if not(DBCheckBox2.Checked) then
    begin
      fDMCadOrdemServico.cdsOrdemServico_EncDTMATERIAL.Clear;
      fDMCadOrdemServico.cdsOrdemServico_EncHRMATERIAL.Clear;
    end;
  end;
end;

procedure TfrmCadOrdemServico_Enc.BitBtn2Click(Sender: TObject);
begin
  if MessageDlg('Deseja cancelar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  Close;
end;

procedure TfrmCadOrdemServico_Enc.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadOrdemServico);
  vFormEncerrar := True;
end;

end.
