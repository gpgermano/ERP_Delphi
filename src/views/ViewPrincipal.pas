unit ViewPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  System.Actions,
  Vcl.ActnList,
  System.ImageList,
  Vcl.ImgList,
  Provider.constants, View.clientes, View.fornecedores;

type
  TFrmErpSimplesPricipal = class(TForm)
    pnlTop: TPanel;
    pnlMenu: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlDados: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lblVersaoTitulo: TLabel;
    Label1: TLabel;
    lblVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlImgUsuario: TPanel;
    imgUserBranca: TImage;
    pnlDadosUsuarios: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnLicenciado: TPanel;
    pnlLineLicenca: TPanel;
    pnlConteudoLicenca: TPanel;
    lbTitLicenciado: TLabel;
    lblLicenciado: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    ShapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnConfig: TSpeedButton;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnSair: TSpeedButton;
    imgUserLaranja: TImage;
    imgBackground: TImage;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserLaranjaMouseLeave(Sender: TObject);
    procedure imgUserBrancaMouseEnter(Sender: TObject);
  private
    procedure Get_lineMenu(Sender: Tobject);
  public
    { Public declarations }
  end;

var
  FrmErpSimplesPricipal: TFrmErpSimplesPricipal;

implementation

{$R *.dfm}


procedure TFrmErpSimplesPricipal.btnCaixaClick(Sender: TObject);
begin
  Get_lineMenu(Sender);
end;

procedure TFrmErpSimplesPricipal.btnClientesClick(Sender: TObject);
begin
  Get_lineMenu(Sender);
  ViewClientes := TViewClientes.Create(self);
  try
    ViewClientes.ShowModal;
  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TFrmErpSimplesPricipal.btnConfigClick(Sender: TObject);
begin
  Get_lineMenu(Sender);
end;

procedure TFrmErpSimplesPricipal.btnFornecedoresClick(Sender: TObject);
begin
  Get_lineMenu(Sender);
  ViewFornecedores := TViewFornecedores.Create(self);
  try
    ViewFornecedores.ShowModal;
  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TFrmErpSimplesPricipal.btnProdutosClick(Sender: TObject);
begin
  Get_lineMenu(Sender);
end;

procedure TFrmErpSimplesPricipal.btnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmErpSimplesPricipal.FormShow(Sender: TObject);
begin
  Get_lineMenu(btnClientes);
  lblLicenciado.Caption := sRAZAO_FILIAL;
end;

procedure TFrmErpSimplesPricipal.Get_lineMenu(Sender: Tobject);
begin
  ShapeMenu.Left  := 0;
  ShapeMenu.Top  := 0;
  ShapeMenu.Height := TSpeedButton(Sender).Height;
  ShapeMenu.Top := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TFrmErpSimplesPricipal.imgUserBrancaMouseEnter(Sender: TObject);
begin
  imgUserBranca.Visible := False;
  imgUserLaranja.Visible := True;
end;

procedure TFrmErpSimplesPricipal.imgUserLaranjaMouseLeave(Sender: TObject);
begin
  imgUserBranca.Visible := True;
  imgUserLaranja.Visible := False;
end;

procedure TFrmErpSimplesPricipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TFrmErpSimplesPricipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := clWhite;
end;

end.
