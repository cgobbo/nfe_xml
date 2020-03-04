object frmCarregaXML: TfrmCarregaXML
  Left = 0
  Top = 0
  Caption = 'Carrega XML'
  ClientHeight = 511
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox1: TcxGroupBox
    Left = 0
    Top = 0
    Align = alTop
    Caption = 'Selecione a pasta dos arquivos'
    TabOrder = 0
    ExplicitWidth = 584
    Height = 41
    Width = 685
    object edt_path: TcxButtonEdit
      Left = 2
      Top = 18
      Align = alClient
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
          Width = 50
        end>
      Properties.ReadOnly = True
      Properties.OnButtonClick = edt_pathPropertiesButtonClick
      TabOrder = 0
      Text = 'edt_path'
      ExplicitWidth = 505
      Width = 681
    end
  end
  object pgcXML: TcxPageControl
    Left = 0
    Top = 41
    Width = 685
    Height = 470
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = tabArqXML
    Properties.CustomButtons.Buttons = <>
    Properties.HotTrack = True
    ExplicitWidth = 584
    ClientRectBottom = 466
    ClientRectLeft = 4
    ClientRectRight = 681
    ClientRectTop = 24
    object tabArqXML: TcxTabSheet
      Caption = 'Arquivo XML'
      ImageIndex = 0
      ExplicitWidth = 576
      object flst_Lista_XML: TFileListBox
        Left = 0
        Top = 0
        Width = 377
        Height = 401
        Align = alClient
        ItemHeight = 13
        Mask = '*.xml'
        TabOrder = 0
        OnDblClick = flst_Lista_XMLDblClick
        ExplicitLeft = -6
        ExplicitTop = -5
      end
      object Panel1: TPanel
        Left = 0
        Top = 401
        Width = 677
        Height = 41
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 407
        ExplicitWidth = 646
        object btnGravar: TcxButton
          Left = 573
          Top = 1
          Width = 103
          Height = 39
          Align = alRight
          Caption = 'Gravar'
          TabOrder = 0
          OnClick = btnGravarClick
          ExplicitLeft = 542
          ExplicitTop = 6
        end
        object btn_carXML: TcxButton
          Left = 1
          Top = 1
          Width = 103
          Height = 39
          Align = alLeft
          Caption = 'Carrega XML'
          TabOrder = 1
          OnClick = btn_carXMLClick
        end
      end
      object grdArq: TcxGrid
        Left = 377
        Top = 0
        Width = 300
        Height = 401
        Align = alRight
        TabOrder = 2
        ExplicitLeft = 383
        ExplicitTop = -5
        object grdArqDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dtsArquivos
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsBehavior.IncSearch = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' dados para exibir>'
          OptionsView.GroupByBox = False
          OptionsView.Header = False
          object grdArqDBTableView1Arquivo: TcxGridDBColumn
            DataBinding.FieldName = 'Arquivo'
            Width = 350
          end
        end
        object grdArqLevel1: TcxGridLevel
          GridView = grdArqDBTableView1
        end
      end
    end
    object tabWbXML: TcxTabSheet
      Caption = 'WB XML'
      ImageIndex = 2
      ExplicitWidth = 576
      object WBResposta: TWebBrowser
        Left = 0
        Top = 0
        Width = 677
        Height = 442
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 559
        ExplicitHeight = 385
        ControlData = {
          4C000000F8450000AF2D00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126200000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tabBanco: TcxTabSheet
      Caption = 'Banco de dados'
      ImageIndex = 3
      ExplicitWidth = 576
      object btnCarregarNFe: TcxButton
        Left = 0
        Top = 0
        Width = 677
        Height = 25
        Align = alTop
        Caption = 'Carregar'
        TabOrder = 0
        OnClick = btnCarregarNFeClick
        ExplicitWidth = 576
      end
      object cxGrid1: TcxGrid
        Left = 0
        Top = 25
        Width = 677
        Height = 417
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 208
        ExplicitTop = 176
        ExplicitWidth = 250
        ExplicitHeight = 200
        object cxGrid1DBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = dtsConsNfe
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '<N'#227'o h'#225' dados para exibir>'
          object cxGrid1DBTableView1id_nfe: TcxGridDBColumn
            DataBinding.FieldName = 'id_nfe'
          end
          object cxGrid1DBTableView1infNFe: TcxGridDBColumn
            DataBinding.FieldName = 'infNFe'
          end
          object cxGrid1DBTableView1cUF: TcxGridDBColumn
            DataBinding.FieldName = 'cUF'
          end
          object cxGrid1DBTableView1cNF: TcxGridDBColumn
            DataBinding.FieldName = 'cNF'
          end
          object cxGrid1DBTableView1natop: TcxGridDBColumn
            DataBinding.FieldName = 'natop'
          end
          object cxGrid1DBTableView1mod: TcxGridDBColumn
            DataBinding.FieldName = 'mod'
          end
          object cxGrid1DBTableView1serie: TcxGridDBColumn
            DataBinding.FieldName = 'serie'
          end
          object cxGrid1DBTableView1nNF: TcxGridDBColumn
            DataBinding.FieldName = 'nNF'
          end
          object cxGrid1DBTableView1dhEmi: TcxGridDBColumn
            DataBinding.FieldName = 'dhEmi'
          end
          object cxGrid1DBTableView1dhSaiEnt: TcxGridDBColumn
            DataBinding.FieldName = 'dhSaiEnt'
          end
          object cxGrid1DBTableView1tpNF: TcxGridDBColumn
            DataBinding.FieldName = 'tpNF'
          end
          object cxGrid1DBTableView1idDest: TcxGridDBColumn
            DataBinding.FieldName = 'idDest'
          end
          object cxGrid1DBTableView1cMunFG: TcxGridDBColumn
            DataBinding.FieldName = 'cMunFG'
          end
          object cxGrid1DBTableView1tpImp: TcxGridDBColumn
            DataBinding.FieldName = 'tpImp'
          end
          object cxGrid1DBTableView1tpEmis: TcxGridDBColumn
            DataBinding.FieldName = 'tpEmis'
          end
          object cxGrid1DBTableView1cDV: TcxGridDBColumn
            DataBinding.FieldName = 'cDV'
          end
          object cxGrid1DBTableView1tpAmb: TcxGridDBColumn
            DataBinding.FieldName = 'tpAmb'
          end
          object cxGrid1DBTableView1finNFe: TcxGridDBColumn
            DataBinding.FieldName = 'finNFe'
          end
          object cxGrid1DBTableView1indFinal: TcxGridDBColumn
            DataBinding.FieldName = 'indFinal'
          end
          object cxGrid1DBTableView1indPres: TcxGridDBColumn
            DataBinding.FieldName = 'indPres'
          end
          object cxGrid1DBTableView1procEmi: TcxGridDBColumn
            DataBinding.FieldName = 'procEmi'
          end
          object cxGrid1DBTableView1verProc: TcxGridDBColumn
            DataBinding.FieldName = 'verProc'
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = cxGrid1DBTableView1
        end
      end
    end
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libNone
    Configuracoes.Geral.SSLCryptLib = cryNone
    Configuracoes.Geral.SSLHttpLib = httpNone
    Configuracoes.Geral.SSLXmlSignLib = xsNone
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 448
    Top = 120
  end
  object bd_XML_nfe: TFDConnection
    Params.Strings = (
      'Database=E:\proj_cg76\NFE\bd\bd_xml_nfe.db'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 448
    Top = 168
  end
  object qryNfe: TFDQuery
    Connection = bd_XML_nfe
    UpdateOptions.AutoIncFields = 'id_nfe'
    SQL.Strings = (
      'select * '
      'from nfe_ide'
      'where id_nfe = -1 '
      'order by id_nfe')
    Left = 448
    Top = 224
    object qryNfeid_nfe: TFDAutoIncField
      FieldName = 'id_nfe'
      Origin = 'id_nfe'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qryNfeinfNFe: TStringField
      FieldName = 'infNFe'
      Origin = 'infNFe'
      Required = True
      Size = 47
    end
    object qryNfecUF: TStringField
      FieldName = 'cUF'
      Origin = 'cUF'
      FixedChar = True
      Size = 2
    end
    object qryNfecNF: TStringField
      FieldName = 'cNF'
      Origin = 'cNF'
      Size = 8
    end
    object qryNfenatop: TStringField
      FieldName = 'natop'
      Origin = 'natop'
      Required = True
      Size = 60
    end
    object qryNfemod: TStringField
      FieldName = 'mod'
      Origin = 'mod'
      FixedChar = True
      Size = 2
    end
    object qryNfeserie: TIntegerField
      FieldName = 'serie'
      Origin = 'serie'
    end
    object qryNfenNF: TIntegerField
      FieldName = 'nNF'
      Origin = 'nNF'
    end
    object qryNfedhEmi: TDateTimeField
      FieldName = 'dhEmi'
      Origin = 'dhEmi'
    end
    object qryNfedhSaiEnt: TDateTimeField
      FieldName = 'dhSaiEnt'
      Origin = 'dhSaiEnt'
    end
    object qryNfetpNF: TIntegerField
      FieldName = 'tpNF'
      Origin = 'tpNF'
    end
    object qryNfeidDest: TIntegerField
      FieldName = 'idDest'
      Origin = 'idDest'
    end
    object qryNfecMunFG: TIntegerField
      FieldName = 'cMunFG'
      Origin = 'cMunFG'
    end
    object qryNfetpImp: TIntegerField
      FieldName = 'tpImp'
      Origin = 'tpImp'
    end
    object qryNfetpEmis: TIntegerField
      FieldName = 'tpEmis'
      Origin = 'tpEmis'
    end
    object qryNfecDV: TIntegerField
      FieldName = 'cDV'
      Origin = 'cDV'
    end
    object qryNfetpAmb: TIntegerField
      FieldName = 'tpAmb'
      Origin = 'tpAmb'
    end
    object qryNfefinNFe: TIntegerField
      FieldName = 'finNFe'
      Origin = 'finNFe'
    end
    object qryNfeindFinal: TIntegerField
      FieldName = 'indFinal'
      Origin = 'indFinal'
    end
    object qryNfeindPres: TIntegerField
      FieldName = 'indPres'
      Origin = 'indPres'
    end
    object qryNfeprocEmi: TIntegerField
      FieldName = 'procEmi'
      Origin = 'procEmi'
    end
    object qryNfeverProc: TStringField
      FieldName = 'verProc'
      Origin = 'verProc'
    end
  end
  object qryConsNfe: TFDQuery
    Connection = bd_XML_nfe
    UpdateOptions.AutoIncFields = 'id_nfe'
    SQL.Strings = (
      'select * '
      'from nfe_ide'
      'order by id_nfe')
    Left = 448
    Top = 320
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'id_nfe'
      Origin = 'id_nfe'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object StringField1: TStringField
      FieldName = 'infNFe'
      Origin = 'infNFe'
      Required = True
      Size = 47
    end
    object StringField2: TStringField
      FieldName = 'cUF'
      Origin = 'cUF'
      FixedChar = True
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'cNF'
      Origin = 'cNF'
      Size = 8
    end
    object StringField4: TStringField
      FieldName = 'natop'
      Origin = 'natop'
      Required = True
      Size = 60
    end
    object StringField5: TStringField
      FieldName = 'mod'
      Origin = 'mod'
      FixedChar = True
      Size = 2
    end
    object IntegerField1: TIntegerField
      FieldName = 'serie'
      Origin = 'serie'
    end
    object IntegerField2: TIntegerField
      FieldName = 'nNF'
      Origin = 'nNF'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'dhEmi'
      Origin = 'dhEmi'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'dhSaiEnt'
      Origin = 'dhSaiEnt'
    end
    object IntegerField3: TIntegerField
      FieldName = 'tpNF'
      Origin = 'tpNF'
    end
    object IntegerField4: TIntegerField
      FieldName = 'idDest'
      Origin = 'idDest'
    end
    object IntegerField5: TIntegerField
      FieldName = 'cMunFG'
      Origin = 'cMunFG'
    end
    object IntegerField6: TIntegerField
      FieldName = 'tpImp'
      Origin = 'tpImp'
    end
    object IntegerField7: TIntegerField
      FieldName = 'tpEmis'
      Origin = 'tpEmis'
    end
    object IntegerField8: TIntegerField
      FieldName = 'cDV'
      Origin = 'cDV'
    end
    object IntegerField9: TIntegerField
      FieldName = 'tpAmb'
      Origin = 'tpAmb'
    end
    object IntegerField10: TIntegerField
      FieldName = 'finNFe'
      Origin = 'finNFe'
    end
    object IntegerField11: TIntegerField
      FieldName = 'indFinal'
      Origin = 'indFinal'
    end
    object IntegerField12: TIntegerField
      FieldName = 'indPres'
      Origin = 'indPres'
    end
    object IntegerField13: TIntegerField
      FieldName = 'procEmi'
      Origin = 'procEmi'
    end
    object StringField6: TStringField
      FieldName = 'verProc'
      Origin = 'verProc'
    end
  end
  object dtsConsNfe: TDataSource
    DataSet = qryConsNfe
    Left = 492
    Top = 321
  end
  object dtsNfe: TDataSource
    DataSet = qryNfe
    Left = 484
    Top = 225
  end
  object qmemArquivos: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 368
    Top = 360
    object qmemArquivosArquivo: TStringField
      FieldName = 'Arquivo'
      Size = 100
    end
    object qmemArquivosmgs: TStringField
      FieldName = 'mgs'
    end
  end
  object dtsArquivos: TDataSource
    DataSet = qmemArquivos
    Left = 408
    Top = 360
  end
  object qryConstaNfe: TFDQuery
    Connection = bd_XML_nfe
    SQL.Strings = (
      'SELECT infNFe FROM nfe_ide where infNFe = :infNFe')
    Left = 304
    Top = 208
    ParamData = <
      item
        Name = 'INFNFE'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qryConstaNfeinfNFe: TStringField
      FieldName = 'infNFe'
      Origin = 'infNFe'
      Required = True
      Size = 47
    end
  end
end
