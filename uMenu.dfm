object frmMenu: TfrmMenu
  Left = 0
  Top = 0
  Caption = 'Menu principal'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = mnuPrincipal
  OnCreate = FormCreate
  TextHeight = 15
  object mnuPrincipal: TMainMenu
    Left = 280
    Top = 16
    object mnuItemCidades: TMenuItem
      Caption = 'Cidades'
      object mnuItem001: TMenuItem
        Caption = '(001) Manuten'#231#227'o'
        OnClick = mnuItem001Click
      end
    end
    object mnuItemClientes: TMenuItem
      Caption = 'Clientes'
      object mnuItem002: TMenuItem
        Caption = '(002) Manuten'#231#227'o'
      end
    end
    object mnuItemRelatorio: TMenuItem
      Caption = 'Relat'#243'rios'
      object mnuItem003: TMenuItem
        Caption = '(003) Relat'#243'rio de cidades'
      end
      object mnuItem004: TMenuItem
        Caption = '(004) Relat'#243'rio de clientes'
      end
    end
  end
end
