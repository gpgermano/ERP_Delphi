unit View.fornecedores;

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
  View.base.listas,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Service.cadastro, Provider.constants, Vcl.Mask, Vcl.DBCtrls;

type
  TViewFornecedores = class(TViewBaseListas)
    PnlTituloCadCliente: TPanel;
    lblTituloCadastro: TLabel;
    lblPes_Codigo: TLabel;
    edtFor_CODIGO: TDBEdit;
    LblPesCnpjCpf: TLabel;
    edtForCnpjCPF: TDBEdit;
    LblNomeFornecedor: TLabel;
    edtForRazao: TDBEdit;
    lblPesFantasia: TLabel;
    edtForFantasia: TDBEdit;
    LblPes_IREG: TLabel;
    edtFor_IRGE: TDBEdit;
    lblPesTelefone: TLabel;
    edtFor_Telefone: TDBEdit;
    edtFor_Observacao: TDBEdit;
    LblPesObservacao: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExlcuirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFornecedores: TViewFornecedores;

implementation

{$R *.dfm}

procedure TViewFornecedores.btnCancelarClick(Sender: TObject);
begin// cancelar
  inherited;
  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
     ServiceCadastro.QRY_pessoas.Cancel;

  CardPanel_listas.ActiveCard := card_pesquisa;
end;

procedure TViewFornecedores.btnEditarClick(Sender: TObject);
begin // editar
  inherited;
  CardPanel_listas.ActiveCard := card_cadastro;
  edtForCnpjCPF.SetFocus;
  ServiceCadastro.QRY_pessoas.Edit;
end;

procedure TViewFornecedores.btnExlcuirClick(Sender: TObject);
begin // excluir
  inherited;
  if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
  begin
    ServiceCadastro.QRY_pessoas.Delete;
    ShowMessage('Fornecedor excluido com sucesso.');
    CardPanel_listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewFornecedores.btnNovoClick(Sender: TObject);
begin // novo
  inherited;
  CardPanel_listas.ActiveCard := card_cadastro;
  edtForCnpjCPF.SetFocus;
  ServiceCadastro.QRY_pessoas.Insert;
end;

procedure TViewFornecedores.btnSalvarClick(Sender: TObject);
begin// salvar
  inherited;
  ServiceCadastro.QRY_pessoas.Edit;

  if ServiceCadastro.QRY_pessoas.State in dsEditModes then
  begin
    ServiceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := 2;
    ServiceCadastro.QRY_pessoas.Post;
    ShowMessage('Fornecedor salvo com sucesso.');
    CardPanel_listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewFornecedores.FormShow(Sender: TObject);
begin // show
  inherited;
  GET_Pessoas(2);
end;

end.
