program ErpSimples;

uses
  Vcl.Forms,
  ViewPrincipal in 'ViewPrincipal.pas' {FrmErpSimplesPricipal},
  Service.conexao in '..\services\Service.conexao.pas' {ServiceConexao: TDataModule},
  Service.cadastro in '..\services\Service.cadastro.pas' {ServiceCadastro: TDataModule},
  Provider.constants in '..\providers\Provider.constants.pas',
  View.base in 'View.base.pas' {ViewBase},
  View.base.listas in 'View.base.listas.pas' {ViewBaseListas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmErpSimplesPricipal, FrmErpSimplesPricipal);
  Application.CreateForm(TServiceConexao, ServiceConexao);
  Application.CreateForm(TServiceCadastro, ServiceCadastro);
  Application.CreateForm(TViewBaseListas, ViewBaseListas);
  Application.Run;
end.
