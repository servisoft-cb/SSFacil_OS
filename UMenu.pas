unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ComCtrls, jpeg, Menus,
  ToolWin, Types, UCBase, UCDBXConn, ActnList, ImgList, ShellAPI, ExtCtrls, RLConsts, IniFiles, Midaslib, DBClient, frxpngimage,
  SqlExpr;

type
  TfMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    UCDBXConn1: TUCDBXConn;
    UCSettings1: TUCSettings;
    Administrao1: TMenuItem;
    CadastrodeUsurios1: TMenuItem;
    PerfildeUsurios1: TMenuItem;
    LogdoSistema1: TMenuItem;
    N1: TMenuItem;
    rocarSenha1: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    ActionList1: TActionList;
    ImageList1: TImageList;
    ToolBar1: TToolBar;
    alCliente: TAction;
    alNotaFiscal: TAction;
    alProduto: TAction;
    alMovimentos: TAction;
    alSaida: TAction;
    alTransportador: TAction;
    alFornecedor: TAction;
    Image2: TImage;
    alCompras: TAction;
    alPedido: TAction;
    N19: TMenuItem;
    N9: TMenuItem;
    lbDatabase: TLabel;
    N4: TMenuItem;
    UCControls1: TUCControls;
    ToolButton2: TToolButton;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ProcessosGrupos1: TMenuItem;
    UserControl1: TUserControl;
    ServioOS1: TMenuItem;
    CadastrodeParadas1: TMenuItem;
    CadastrodeProdutos1: TMenuItem;
    ToolButton4: TToolButton;
    CadastrodeTestesEnsaio1: TMenuItem;
    CadastrodeMotivos1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    ToolButton5: TToolButton;
    Label4: TLabel;
    Label5: TLabel;
    ConsultaProcesso1: TMenuItem;
    Consultar1: TMenuItem;
    ConsultarOS1: TMenuItem;
    ConsultarIndicardePrazoEntrega1: TMenuItem;
    ConsultaOSCanceladas1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure UserControl1AfterLogin(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure ProcessosGrupos1Click(Sender: TObject);
    procedure ServioOS1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure CadastrodeParadas1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure CadastrodeProdutos1Click(Sender: TObject);
    procedure CadastrodeTestesEnsaio1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure CadastrodeMotivos1Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ConsultaProcesso1Click(Sender: TObject);
    procedure ConsultarOS1Click(Sender: TObject);
    procedure ConsultarIndicardePrazoEntrega1Click(Sender: TObject);
    procedure ConsultaOSCanceladas1Click(Sender: TObject);
  private
    { Private declarations }
    procedure prc_Habilita_Menu;

    //ffrmCadPais: TfrmCadPais;
  public
    { Public declarations }
    vTipoPessoa: String;
    vPath: String;
    vVersao: String;

    procedure OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: String = '');
    procedure GetBuildInfo(exeName: String; var V1, V2, V3, V4: word);
    function GetBuildInfoAsString: string;
  end;

var
  fMenu: TfMenu;

implementation

uses DmdDatabase, uUtilPadrao, UCadOrdemServico, UCadProcesso, UCadProcesso_Grupo, UCadServico_OS, UProcesso_ES, uCadParada,
  UBaixa_Mat_OS, UCadProduto, UCadOrc, uCadEnsaio, uCadMotivo,
  UConsProcesso, UConsOrdemServico, UConsIndPrazoEntrega,
  UConsOrdemServico_Canc;

{$R *.dfm}

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMenu.OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa: String = '');
var
  existe: TForm;
  j: Byte;
begin
  existe := nil;
  for j := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[j] is FClass then
      existe := Screen.Forms[j];
  end;

  if not (existe = nil) then
  begin
    existe.BringToFront;
    existe.SetFocus;
  end
  else
  begin
    Application.CreateForm(FClass,existe);
    existe.FormStyle := fsMDIChild;
    if existe.Name = 'frmCadPessoa' then
      vTipoPessoa := TipoPessoa;
    existe.Show;
  end;
  existe.WindowState := vEstado;
end;

procedure TfMenu.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TfMenu.FormCreate(Sender: TObject);
var
  TaskBarH: THandle;
  TaskBarR: TRect;
  //vDia, vMes, vAno: Word;
//  i: Integer;
begin
  UserControl1.Execute;
  vPath := ExtractFilePath(Application.ExeName);
  lbDatabase.Caption := dmDatabase.scoDados.Params.Values['DATABASE'];

   // obtem o retangulo com o taskbar
  TaskBarH := FindWindow('Shell_TrayWnd', nil);
  GetWindowRect(TaskBarH, TaskBarR);
  // altura do taskbar = TaskBarR.
  Image2.Top  := Height - (Screen.Height - TaskBarR.Top) - Image2.Height - 32;
  Image2.Left := Screen.Width - Image2.Width - 16;

  vVersao := GetBuildInfoAsString;
  if vVersao <> '0.0.0.0' then
  begin
    Caption := Caption + ' - v' + vVersao;
  end;

end;

procedure TfMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Encerrar o programa SSF�cil?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    CanClose := False
  else
    CanClose := True;
end;

procedure TfMenu.GetBuildInfo(exeName: String; var V1, V2, V3, V4: word);
var
  VerInfoSize, VerValueSize, Dummy: DWORD;
  VerInfo: Pointer;
  VerValue: PVSFixedFileInfo;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(exeName), Dummy);
  if VerInfoSize > 0 then
  begin
    GetMem(VerInfo,VerInfoSize);
    try
      if GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo) then
      begin
        VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
        with VerValue^ do
        begin
          V1 := dwFileVersionMS shr 16;
          V2 := dwFileVersionMS and $FFFF;
          V3 := dwFileVersionLS shr 16;
          V4 := dwFileVersionLS and $FFFF;
        end;
      end;
    finally
      FreeMem(VerInfo,VerInfoSize);
    end;
  end;
end;

function TfMenu.GetBuildInfoAsString: string;
var
  V1, V2, V3, V4: word;
begin
  GetBuildInfo(GetCurrentDir + '\SSFacil.EXE', V1, V2, V3, V4);
  Result := IntToStr(V1) + '.' + IntToStr(V2) + '.' +
    IntToStr(V3) + '.' + IntToStr(V4);
end;

procedure TfMenu.UserControl1AfterLogin(Sender: TObject);
begin
  prc_Habilita_Menu;
end;

procedure TfMenu.FormShow(Sender: TObject);
begin
  prc_Habilita_Menu;

  lbDatabase.Top  := Image2.Top - 15;
  lbDatabase.Left := Image2.Left - 269;
end;

procedure TfMenu.prc_Habilita_Menu;
begin
  vUsuario := UserControl1.CurrentUser.LoginName;
end;

procedure TfMenu.ToolButton2Click(Sender: TObject);
begin
  OpenForm(TfrmCadOrdemServico,wsMaximized,'');
end;

procedure TfMenu.N4Click(Sender: TObject);
begin
  OpenForm(TfrmCadProcesso,wsMaximized,'');
end;

procedure TfMenu.ProcessosGrupos1Click(Sender: TObject);
begin
  OpenForm(TfrmCadProcesso_Grupo,wsMaximized,'');
end;

procedure TfMenu.ServioOS1Click(Sender: TObject);
begin
  OpenForm(TfrmCadServico_OS,wsMaximized,'');
end;

procedure TfMenu.ToolButton1Click(Sender: TObject);
begin
  OpenForm(TfrmProcesso_ES,wsMaximized,'');
end;

procedure TfMenu.CadastrodeParadas1Click(Sender: TObject);
begin
  OpenForm(TfrmCadParada,wsMaximized,'');
end;

procedure TfMenu.ToolButton3Click(Sender: TObject);
begin
  OpenForm(TfrmBaixa_Mat_OS,wsMaximized,'');
end;

procedure TfMenu.CadastrodeProdutos1Click(Sender: TObject);
begin
  OpenForm(TfrmCadProduto,wsMaximized,'');
end;

procedure TfMenu.CadastrodeTestesEnsaio1Click(Sender: TObject);
begin
  OpenForm(TfrmCadEnsaio,wsMaximized,'');
end;

procedure TfMenu.ToolButton4Click(Sender: TObject);
begin
  OpenForm(TfrmCadOrc,wsMaximized,'');
end;

procedure TfMenu.CadastrodeMotivos1Click(Sender: TObject);
begin
  OpenForm(TfrmCadMotivo,wsMaximized,'');
end;

procedure TfMenu.ToolButton5Click(Sender: TObject);
begin
  CadastrodeProdutos1Click(Sender);
end;

procedure TfMenu.ConsultaProcesso1Click(Sender: TObject);
begin
  OpenForm(TfrmConsProcesso,wsMaximized,'');
end;

procedure TfMenu.ConsultarOS1Click(Sender: TObject);
begin
  OpenForm(TfrmConsOrdemServico,wsMaximized,'');
end;

procedure TfMenu.ConsultarIndicardePrazoEntrega1Click(Sender: TObject);
begin
  OpenForm(TfrmConsIndPrazoEntrega,wsMaximized,'');
end;

procedure TfMenu.ConsultaOSCanceladas1Click(Sender: TObject);
begin
  OpenForm(TfrmConsOrdemServico_Canc,wsMaximized,'');
end;

initialization
  //RLConsts.SetVersion(3,72,'B');

end.
