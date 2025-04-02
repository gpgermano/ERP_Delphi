unit Service.cadastro;

interface

uses
  FireDAC.DApt,
  System.SysUtils,
  System.Classes,
  FireDAC.Comp.DataSet,
  Service.conexao,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.DatS;

type
  TServiceCadastro = class(TDataModule)
    QRY_pessoas: TFDQuery;
    QRY_pessoasPES_CODIGO: TIntegerField;
    QRY_pessoasPES_RAZAO: TStringField;
    QRY_pessoasPES_FANTASIA: TStringField;
    QRY_pessoasPES_TELEFONE: TStringField;
    QRY_pessoasPES_CNPJCPF: TStringField;
    QRY_pessoasPES_IREG: TStringField;
    QRY_pessoasPES_OBSERVACAO: TStringField;
    QRY_pessoasPES_TIPOPESSOA: TIntegerField;
    QRY_enderecos: TFDQuery;
    QRY_enderecosEND_CODIGO: TIntegerField;
    QRY_enderecosEND_PESSOA: TIntegerField;
    QRY_enderecosEND_CEP: TStringField;
    QRY_enderecosEND_CIDADE: TStringField;
    QRY_enderecosEND_ENDERECO: TStringField;
    QRY_enderecosEND_BAIRRO: TStringField;
    QRY_enderecosEND_OBSERVACAO: TStringField;
    QRY_enderecosEDN_NUMERO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
