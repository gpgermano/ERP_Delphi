inherited ViewFornecedores: TViewFornecedores
  Caption = 'ViewFornecedores'
  StyleElements = [seFont, seClient, seBorder]
  ExplicitLeft = -251
  ExplicitTop = -99
  TextHeight = 15
  inherited pnlTopo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited lblTitulo: TLabel
      Width = 904
      Height = 35
      Caption = 'Fornecedores'
      StyleElements = [seFont, seClient, seBorder]
      ExplicitWidth = 115
    end
    inherited pnlIcone: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited pnlFechar: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
  end
  inherited pnlRodape: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited btnNovo: TSpeedButton
      OnClick = btnNovoClick
    end
    inherited btnEditar: TSpeedButton
      OnClick = btnEditarClick
    end
    inherited btnCancelar: TSpeedButton
      OnClick = btnCancelarClick
    end
    inherited btnSalvar: TSpeedButton
      OnClick = btnSalvarClick
    end
    inherited btnExlcuir: TSpeedButton
      OnClick = btnExlcuirClick
    end
  end
  inherited pnlLinhaDeFundo: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited CardPanel_listas: TCardPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited card_pesquisa: TCard
        StyleElements = [seFont, seClient, seBorder]
        ExplicitLeft = 24
        ExplicitTop = -3
        ExplicitWidth = 1024
        ExplicitHeight = 480
        inherited pnlTituloPesquisa: TPanel
          StyleElements = [seFont, seClient, seBorder]
          ExplicitWidth = 1024
          inherited lblTituloPesquisa: TLabel
            StyleElements = [seFont, seClient, seBorder]
          end
          inherited edtPesquisa: TSearchBox
            StyleElements = [seFont, seClient, seBorder]
          end
        end
        inherited DBG_dados: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'PES_CODIGO'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_RAZAO'
              Title.Caption = 'Nome Fornecedor'
              Width = 169
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_TELEFONE'
              Title.Caption = 'Telefone'
              Width = 204
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PES_CNPJCPF'
              Title.Caption = 'CNPJ/CPF'
              Visible = True
            end>
        end
      end
      inherited card_cadastro: TCard
        StyleElements = [seFont, seClient, seBorder]
        object lblPes_Codigo: TLabel
          Left = 13
          Top = 77
          Width = 55
          Height = 21
          Caption = 'C'#243'digo'
          FocusControl = edtFor_CODIGO
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblPesCnpjCpf: TLabel
          Left = 173
          Top = 77
          Width = 74
          Height = 21
          Caption = 'CNPJ/CPF'
          FocusControl = edtForCnpjCPF
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblNomeFornecedor: TLabel
          Left = 329
          Top = 77
          Width = 137
          Height = 21
          Caption = 'Nome Fornecedor'
          FocusControl = edtForRazao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPesFantasia: TLabel
          Left = 735
          Top = 77
          Width = 63
          Height = 21
          Caption = 'Fantasia'
          FocusControl = edtForFantasia
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblPes_IREG: TLabel
          Left = 13
          Top = 133
          Width = 137
          Height = 21
          Caption = 'Inscri'#231#227'o Estadual'
          FocusControl = edtFor_IRGE
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lblPesTelefone: TLabel
          Left = 269
          Top = 133
          Width = 66
          Height = 21
          Caption = 'Telefone'
          FocusControl = edtFor_Telefone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object LblPesObservacao: TLabel
          Left = 13
          Top = 189
          Width = 90
          Height = 21
          Caption = 'Observa'#231#227'o'
          FocusControl = edtFor_Observacao
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object PnlTituloCadCliente: TPanel
          Left = 0
          Top = 0
          Width = 1024
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          Color = 10132122
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGray
          Font.Height = -21
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          ExplicitTop = 8
          object lblTituloCadastro: TLabel
            Left = 33
            Top = 16
            Width = 241
            Height = 30
            Alignment = taCenter
            Caption = 'Cadastro de Fornecedores'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -21
            Font.Name = 'Segoe UI Semilight'
            Font.Style = []
            ParentFont = False
          end
        end
        object edtFor_CODIGO: TDBEdit
          Left = 13
          Top = 104
          Width = 154
          Height = 23
          DataField = 'PES_CODIGO'
          DataSource = dsDados
          ReadOnly = True
          TabOrder = 1
        end
        object edtForCnpjCPF: TDBEdit
          Left = 173
          Top = 104
          Width = 150
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_CNPJCPF'
          DataSource = dsDados
          TabOrder = 2
        end
        object edtForRazao: TDBEdit
          Left = 329
          Top = 104
          Width = 400
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_RAZAO'
          DataSource = dsDados
          TabOrder = 3
        end
        object edtForFantasia: TDBEdit
          Left = 735
          Top = 104
          Width = 250
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_FANTASIA'
          DataSource = dsDados
          TabOrder = 4
        end
        object edtFor_IRGE: TDBEdit
          Left = 13
          Top = 160
          Width = 250
          Height = 23
          DataField = 'PES_IREG'
          DataSource = dsDados
          TabOrder = 5
        end
        object edtFor_Telefone: TDBEdit
          Left = 269
          Top = 160
          Width = 150
          Height = 23
          DataField = 'PES_TELEFONE'
          DataSource = dsDados
          TabOrder = 6
        end
        object edtFor_Observacao: TDBEdit
          Left = 13
          Top = 216
          Width = 969
          Height = 23
          CharCase = ecUpperCase
          DataField = 'PES_OBSERVACAO'
          DataSource = dsDados
          TabOrder = 7
        end
      end
    end
  end
  inherited dsDados: TDataSource
    DataSet = ServiceCadastro.QRY_pessoas
    Left = 680
    Top = 35
  end
end
