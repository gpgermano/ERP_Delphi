unit Service.conexao;

interface

uses
  Dialogs,
  Data.DB,
  FireDAC.DatS,
  FireDAC.Phys,
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.Client,
  FireDAC.Comp.UI,
  FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase,
  FireDAC.Phys.FB,
  System.IniFiles,
  FireDAC.Stan.Param,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  Provider.constants;

type
  TServiceConexao = class(TDataModule)
    FDConn: TFDConnection;
    WaitCursor: TFDGUIxWaitCursor;
    FDBDriverLink: TFDPhysFBDriverLink;
    QRY_filial: TFDQuery;
    QRY_filialFIL_CODIGO: TIntegerField;
    QRY_filialFIL_RAZAO: TStringField;
    QRY_filialFIL_FANTASIA: TStringField;
    QRY_filialFIL_CNPJ: TStringField;
    QRY_filialFIL_TELEFONE: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceConexao: TServiceConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TServiceConexao.DataModuleCreate(Sender: TObject);
var
  LinFile : TInifile;
  LDatabase : String;
  LUserName : String;
  LPassword : String;
  LServidor : String;
  LPorta : integer;
  LCaminho : String;
begin
  FDConn.Connected := False;

  LCaminho := ExtractFileDir(ParamStr(0)) + '\Login.ini';
  if not FileExists(LCaminho) then
    ShowMessage('Arquivo Login.ini n�o encontrado:' + LCaminho);

  LinFile := TIniFile.Create(LCaminho);
  try
    LDatabase := LinFile.ReadString('Conexao', 'Database', LDatabase);
    LServidor := LinFile.ReadString('Conexao', 'Servidor', LServidor);
    LPorta := LinFile.ReadInteger('Conexao', 'Porta', LPorta);

    LUserName := 'SYSDBA';
    LPassword := 'masterkey';

    FDConn.Params.Values['Database'] := LDatabase;
    FDConn.Params.Values['UserName'] := LUserName;
    FDConn.Params.Values['Server'] := LServidor;
    FDConn.Params.Values['Port'] := LPorta.ToString;

    FDConn.Connected := True;
  finally
    LinFile.Free;
  end;

  // Carregamento filial
  QRY_filial.Close;
  QRY_filial.Params[0].AsInteger := 2;
  QRY_filial.Open();

  iCOD_FILIAL := QRY_filialFIL_CODIGO.AsInteger;
  sRAZAO_FILIAL := QRY_filialFIL_RAZAO.AsString;
end;

end.
