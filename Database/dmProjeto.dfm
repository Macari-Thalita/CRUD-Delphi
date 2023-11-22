object dataProjeto: TdataProjeto
  OnCreate = DataModuleCreate
  Height = 319
  Width = 342
  object fdConexao: TFDConnection
    Params.Strings = (
      'Database=C:\DB\PROJETO2.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Server=localhost'
      'Port=3050'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 80
  end
  object fdDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Windows\System32\FBCLIENT.DLL'
    Left = 24
    Top = 168
  end
  object fdtCidades: TFDTable
    IndexFieldNames = 'CIDADE_ID'
    Connection = fdConexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'CIDADES'
    Left = 272
    Top = 120
    object fdtCidadesCIDADE_ID: TIntegerField
      FieldName = 'CIDADE_ID'
      Origin = 'CIDADE_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdtCidadesCIDADE_NOME: TStringField
      FieldName = 'CIDADE_NOME'
      Origin = 'CIDADE_NOME'
      Required = True
      Size = 100
    end
    object fdtCidadesCIDADE_UF: TStringField
      FieldName = 'CIDADE_UF'
      Origin = 'CIDADE_UF'
      Required = True
      FixedChar = True
      Size = 2
    end
  end
end
