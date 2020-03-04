unit ufrmCarregaXML;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxButtonEdit, cxGroupBox,
  Vcl.StdCtrls, Vcl.FileCtrl, ACBrBase, ACBrDFe, ACBrNFe, Vcl.Menus, cxButtons,
  dxBarBuiltInMenu, Vcl.ComCtrls, cxPC, Vcl.OleCtrls, SHDocVw,
  ACBrUtil, pcnConversao, pcnConversaoNFe, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef,
  FireDAC.Phys.SQLite, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  pcnNFe, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid;

type
  TfrmCarregaXML = class(TForm)
    cxGroupBox1: TcxGroupBox;
    edt_path: TcxButtonEdit;
    flst_Lista_XML: TFileListBox;
    ACBrNFe1: TACBrNFe;
    pgcXML: TcxPageControl;
    tabArqXML: TcxTabSheet;
    tabWbXML: TcxTabSheet;
    WBResposta: TWebBrowser;
    bd_XML_nfe: TFDConnection;
    qryNfe: TFDQuery;
    qryNfeid_nfe: TFDAutoIncField;
    qryNfeinfNFe: TStringField;
    qryNfecUF: TStringField;
    qryNfecNF: TStringField;
    qryNfemod: TStringField;
    qryNfeserie: TIntegerField;
    qryNfenNF: TIntegerField;
    qryNfedhSaiEnt: TDateTimeField;
    qryNfetpNF: TIntegerField;
    qryNfeidDest: TIntegerField;
    qryNfecMunFG: TIntegerField;
    qryNfetpImp: TIntegerField;
    qryNfetpEmis: TIntegerField;
    qryNfecDV: TIntegerField;
    qryNfetpAmb: TIntegerField;
    qryNfefinNFe: TIntegerField;
    qryNfeindFinal: TIntegerField;
    qryNfeindPres: TIntegerField;
    qryNfeprocEmi: TIntegerField;
    qryNfeverProc: TStringField;
    Panel1: TPanel;
    btnGravar: TcxButton;
    qryNfedhEmi: TDateTimeField;
    qryNfenatop: TStringField;
    tabBanco: TcxTabSheet;
    qryConsNfe: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    StringField6: TStringField;
    dtsConsNfe: TDataSource;
    dtsNfe: TDataSource;
    btnCarregarNFe: TcxButton;
    qmemArquivos: TFDMemTable;
    qmemArquivosArquivo: TStringField;
    qmemArquivosmgs: TStringField;
    dtsArquivos: TDataSource;
    grdArq: TcxGrid;
    grdArqDBTableView1: TcxGridDBTableView;
    grdArqDBTableView1Arquivo: TcxGridDBColumn;
    grdArqLevel1: TcxGridLevel;
    btn_carXML: TcxButton;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1id_nfe: TcxGridDBColumn;
    cxGrid1DBTableView1infNFe: TcxGridDBColumn;
    cxGrid1DBTableView1cUF: TcxGridDBColumn;
    cxGrid1DBTableView1cNF: TcxGridDBColumn;
    cxGrid1DBTableView1natop: TcxGridDBColumn;
    cxGrid1DBTableView1mod: TcxGridDBColumn;
    cxGrid1DBTableView1serie: TcxGridDBColumn;
    cxGrid1DBTableView1nNF: TcxGridDBColumn;
    cxGrid1DBTableView1dhEmi: TcxGridDBColumn;
    cxGrid1DBTableView1dhSaiEnt: TcxGridDBColumn;
    cxGrid1DBTableView1tpNF: TcxGridDBColumn;
    cxGrid1DBTableView1idDest: TcxGridDBColumn;
    cxGrid1DBTableView1cMunFG: TcxGridDBColumn;
    cxGrid1DBTableView1tpImp: TcxGridDBColumn;
    cxGrid1DBTableView1tpEmis: TcxGridDBColumn;
    cxGrid1DBTableView1cDV: TcxGridDBColumn;
    cxGrid1DBTableView1tpAmb: TcxGridDBColumn;
    cxGrid1DBTableView1finNFe: TcxGridDBColumn;
    cxGrid1DBTableView1indFinal: TcxGridDBColumn;
    cxGrid1DBTableView1indPres: TcxGridDBColumn;
    cxGrid1DBTableView1procEmi: TcxGridDBColumn;
    cxGrid1DBTableView1verProc: TcxGridDBColumn;
    qryConstaNfe: TFDQuery;
    qryConstaNfeinfNFe: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edt_pathPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure btn_carXMLClick(Sender: TObject);
    procedure flst_Lista_XMLDblClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCarregarNFeClick(Sender: TObject);
  private
    { Private declarations }
    procedure carrega_dir(path: string);
    function seleciona_dir: string;
    procedure Carrega_NFE(arq: string; flg_limpa: Boolean = true);
    procedure Carrega_NFEs;
    procedure LoadXML(arq: string);
    procedure LoadXML_TV(arq: string);
    procedure Grava_Banco;
    procedure XMLCarregado(arq: string);
    function NFeImportada(infNFe: string): Boolean;
  public
    { Public declarations }
  end;

var
  frmCarregaXML: TfrmCarregaXML;

implementation

{$R *.dfm}

procedure TfrmCarregaXML.btnCarregarNFeClick(Sender: TObject);
begin
  qryConsNfe.Close;
  qryConsNfe.Open;
end;

procedure TfrmCarregaXML.btnGravarClick(Sender: TObject);
begin
  qmemArquivos.EmptyDataSet;
  Carrega_NFEs;
  Grava_Banco;
end;

procedure TfrmCarregaXML.btn_carXMLClick(Sender: TObject);
begin
  Carrega_NFEs;
  if ACBrNFe1.NotasFiscais.Count > 0 then
    ShowMessage('Número de NF-e carregada: ' + inttostr(ACBrNFe1.NotasFiscais.Count));
end;

procedure TfrmCarregaXML.carrega_dir(path: string);
begin
  edt_path.Text:= path;
  flst_Lista_XML.Directory:= path;
end;

procedure TfrmCarregaXML.Carrega_NFE(arq: string; flg_limpa: Boolean);
begin
  if flg_limpa then
    ACBrNFe1.NotasFiscais.Clear;
  ACBrNFe1.NotasFiscais.LoadFromFile(edt_path.Text + arq, False);
end;

procedure TfrmCarregaXML.Carrega_NFEs;
var i: Integer;
    arq: string;
begin
  try
    Screen.Cursor:= crHourGlass;

    ACBrNFe1.NotasFiscais.Clear;
    for I := 0 to flst_Lista_XML.Count - 1 do
    begin
     arq:= flst_Lista_XML.Items[i];
     Carrega_NFE(arq, false);
    end;
  finally
    Screen.Cursor:= crDefault;
  end;
end;

procedure TfrmCarregaXML.edt_pathPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var path: string;
begin
  path:= seleciona_dir;
  if path <> '' then
    carrega_dir(path);
end;

procedure TfrmCarregaXML.flst_Lista_XMLDblClick(Sender: TObject);
begin
  Carrega_NFE(flst_Lista_XML.Items[flst_Lista_XML.ItemIndex]);
  LoadXML(edt_path.Text + flst_Lista_XML.Items[flst_Lista_XML.ItemIndex]);
  LoadXML_TV(edt_path.Text + flst_Lista_XML.Items[flst_Lista_XML.ItemIndex]);
end;

procedure TfrmCarregaXML.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qryConsNfe.Close;
  qmemArquivos.Close;
  bd_XML_nfe.Connected := false;

  action:= cafree;
end;

procedure TfrmCarregaXML.FormCreate(Sender: TObject);
var path: string;
begin
  qmemArquivos.Open;
  pgcXML.ActivePage:= tabArqXML;
  path:= ExtractFilePath(application.ExeName)+'XML\';
  carrega_dir(path);
end;

procedure TfrmCarregaXML.Grava_Banco;
var i, x: integer;
    nfe: TNFe;
    arq: string;
begin
  try
    Screen.Cursor:= crHourGlass;
    if not bd_XML_nfe.Connected then
      bd_XML_nfe.Open;

    qryNfe.Open;
    for I := 0 to ACBrNFe1.NotasFiscais.Count - 1  do
    begin
      try
        nfe:= ACBrNFe1.NotasFiscais.Items[i].NFe;

        if NFeImportada(nfe.infNFe.ID) then
          Continue;

        arq:= StringReplace(nfe.infNFe.ID,'NFe','',[rfReplaceAll]) + '.xml';
        XMLCarregado(arq);

        qryNfe.Append;
        qryNfeinfNFe.AsString     := nfe.infNFe.ID;
        qryNfecUF.AsString        := IntToStr(nfe.Ide.cUF);
        qryNfecNF.AsString        := IntToStr(nfe.Ide.cNF);
        qryNfenatop.AsString      := nfe.Ide.natOp;
        qryNfemod.AsString        := IntToStr(nfe.Ide.modelo);
        qryNfeserie.AsInteger     := nfe.Ide.serie;
        qryNfenNF.AsInteger       := nfe.Ide.nNF;
        qryNfedhEmi.AsDateTime    := nfe.Ide.dEmi;
        qryNfedhSaiEnt.AsDateTime := nfe.Ide.dSaiEnt;
        qryNfetpNF.AsInteger      := strtoint(tpNFToStr(nfe.Ide.tpNF));
        qryNfeidDest.AsInteger    := strtoint(DestinoOperacaoToStr(nfe.Ide.idDest));
        qryNfecMunFG.AsInteger    := nfe.Ide.cMunFG;
        qryNfetpImp.AsInteger     := strtoint(TpImpToStr(nfe.Ide.tpImp));
        qryNfetpEmis.AsInteger    := strtoint(TpEmisToStr(nfe.Ide.tpEmis));
        qryNfecDV.AsInteger       := nfe.Ide.cDV;
        qryNfetpAmb.AsInteger     := strtoint(TpAmbToStr(nfe.Ide.tpAmb));
        qryNfefinNFe.AsInteger    := strtoint(FinNFeToStr(nfe.Ide.finNFe));
        qryNfeindFinal.AsInteger  := strtoint(ConsumidorFinalToStr(nfe.Ide.indFinal));
        qryNfeindPres.AsInteger   := strtoint(PresencaCompradorToStr(nfe.Ide.indPres));
        qryNfeprocEmi.AsInteger   := strtoint(procEmiToStr(nfe.Ide.procEmi));
        qryNfeverProc.AsString    := nfe.Ide.verProc;

        qryNfe.Post;
        //
      except

      end;
    end;
    qryNfe.Close;
    ShowMessage('Fim da gravação');
  finally
    Screen.Cursor:= crDefault;
    flst_Lista_XML.Clear;
    flst_Lista_XML.Refresh;
  end;
end;

procedure TfrmCarregaXML.LoadXML(arq: string);
begin
  WBResposta.Navigate(edt_path.Text + arq);
end;

procedure TfrmCarregaXML.LoadXML_TV(arq: string);
var
  i, j, k, n: integer;
  Nota, Node, NodePai, NodeItem: TTreeNode;
begin
{    trvwNFe.Items.Clear;

    for n:=0 to ACBrNFe1.NotasFiscais.Count-1 do
    begin
      with ACBrNFe1.NotasFiscais.Items[n].NFe do
      begin
         Nota := trvwNFe.Items.Add(nil,infNFe.ID);
         trvwNFe.Items.AddChild(Nota,'ID= ' +infNFe.ID);
         Node := trvwNFe.Items.AddChild(Nota,'procNFe');
         trvwNFe.Items.AddChild(Node,'tpAmb= '     +TpAmbToStr(procNFe.tpAmb));
         trvwNFe.Items.AddChild(Node,'verAplic= '  +procNFe.verAplic);
         trvwNFe.Items.AddChild(Node,'chNFe= '     +procNFe.chNFe);
         trvwNFe.Items.AddChild(Node,'dhRecbto= '  +DateTimeToStr(procNFe.dhRecbto));
         trvwNFe.Items.AddChild(Node,'nProt= '     +procNFe.nProt);
         trvwNFe.Items.AddChild(Node,'digVal= '    +procNFe.digVal);
         trvwNFe.Items.AddChild(Node,'cStat= '     +IntToStr(procNFe.cStat));
         trvwNFe.Items.AddChild(Node,'xMotivo= '   +procNFe.xMotivo);

         Node := trvwNFe.Items.AddChild(Nota,'Ide');
         trvwNFe.Items.AddChild(Node,'cNF= '     +IntToStr(Ide.cNF));
         trvwNFe.Items.AddChild(Node,'natOp= '   +Ide.natOp );
         trvwNFe.Items.AddChild(Node,'indPag= '  +IndpagToStr(Ide.indPag));
         trvwNFe.Items.AddChild(Node,'modelo= '  +IntToStr(Ide.modelo));
         trvwNFe.Items.AddChild(Node,'serie= '   +IntToStr(Ide.serie));
         trvwNFe.Items.AddChild(Node,'nNF= '     +IntToStr(Ide.nNF));
         trvwNFe.Items.AddChild(Node,'dEmi= '    +DateToStr(Ide.dEmi));
         trvwNFe.Items.AddChild(Node,'dSaiEnt= ' +DateToStr(Ide.dSaiEnt));
         trvwNFe.Items.AddChild(Node,'hSaiEnt= ' +DateToStr(Ide.hSaiEnt));
         trvwNFe.Items.AddChild(Node,'tpNF= '    +tpNFToStr(Ide.tpNF));
         trvwNFe.Items.AddChild(Node,'finNFe= '  +FinNFeToStr(Ide.finNFe));
         trvwNFe.Items.AddChild(Node,'verProc= ' +Ide.verProc);
         trvwNFe.Items.AddChild(Node,'cUF= '     +IntToStr(Ide.cUF));
         trvwNFe.Items.AddChild(Node,'cMunFG= '  +IntToStr(Ide.cMunFG));
         trvwNFe.Items.AddChild(Node,'tpImp= '   +TpImpToStr(Ide.tpImp));
         trvwNFe.Items.AddChild(Node,'tpEmis= '  +TpEmisToStr(Ide.tpEmis));
         trvwNFe.Items.AddChild(Node,'cDV= '     +IntToStr(Ide.cDV));
         trvwNFe.Items.AddChild(Node,'tpAmb= '   +TpAmbToStr(Ide.tpAmb));
         trvwNFe.Items.AddChild(Node,'finNFe= '  +FinNFeToStr(Ide.finNFe));
         trvwNFe.Items.AddChild(Node,'procEmi= ' +procEmiToStr(Ide.procEmi));
         trvwNFe.Items.AddChild(Node,'verProc= ' +Ide.verProc);
         trvwNFe.Items.AddChild(Node,'dhCont= '  +DateTimeToStr(Ide.dhCont));
         trvwNFe.Items.AddChild(Node,'xJust= '   +Ide.xJust);

         for i:=0 to Ide.NFref.Count-1 do
          begin
            if Ide.NFref.Items[i].refNFe <> '' then
            begin
              Node := trvwNFe.Items.AddChild(Node,'NFRef'+IntToStrZero(i+1,3));
              trvwNFe.Items.AddChild(Node,'refNFe= ' +Ide.NFref.Items[i].refNFe);
              trvwNFe.Items.AddChild(Node,'cUF= '    +IntToStr(Ide.NFref.Items[i].RefNF.cUF));
              trvwNFe.Items.AddChild(Node,'AAMM= '   +Ide.NFref.Items[i].RefNF.AAMM);
              trvwNFe.Items.AddChild(Node,'CNPJ= '   +Ide.NFref.Items[i].RefNF.CNPJ);
              trvwNFe.Items.AddChild(Node,'modelo= ' +IntToStr(Ide.NFref.Items[i].RefNF.modelo));
              trvwNFe.Items.AddChild(Node,'serie= '  +IntToStr(Ide.NFref.Items[i].RefNF.serie));
              trvwNFe.Items.AddChild(Node,'nNF= '    +IntToStr(Ide.NFref.Items[i].RefNF.nNF));
            end;

            if Ide.NFref.Items[i].RefECF.nCOO <> '' then
            begin
              Node := trvwNFe.Items.AddChild(Node,'refECF'+IntToStrZero(i+1,3));
              trvwNFe.Items.AddChild(Node,'mod= '  +ECFModRefToStr(Ide.NFref.Items[i].RefECF.modelo));
              trvwNFe.Items.AddChild(Node,'nECF= ' +Ide.NFref.Items[i].RefECF.nECF);
              trvwNFe.Items.AddChild(Node,'nCOO= ' +Ide.NFref.Items[i].RefECF.nCOO);
            end;
          end;

         Node := trvwNFe.Items.AddChild(Nota,'Emit');
         trvwNFe.Items.AddChild(Node,'CNPJCPF= ' +Emit.CNPJCPF);
         trvwNFe.Items.AddChild(Node,'IE='       +Emit.IE);
         trvwNFe.Items.AddChild(Node,'xNome='    +Emit.xNome);
         trvwNFe.Items.AddChild(Node,'xFant='    +Emit.xFant );
         trvwNFe.Items.AddChild(Node,'IEST='     +Emit.IEST);
         trvwNFe.Items.AddChild(Node,'IM='       +Emit.IM);
         trvwNFe.Items.AddChild(Node,'CNAE='     +Emit.CNAE);
         trvwNFe.Items.AddChild(Node,'CRT='      +CRTToStr(Emit.CRT));

         Node := trvwNFe.Items.AddChild(Node,'EnderEmit');
         trvwNFe.Items.AddChild(Node,'Fone='    +Emit.EnderEmit.fone);
         trvwNFe.Items.AddChild(Node,'CEP='     +IntToStr(Emit.EnderEmit.CEP));
         trvwNFe.Items.AddChild(Node,'xLgr='    +Emit.EnderEmit.xLgr);
         trvwNFe.Items.AddChild(Node,'nro='     +Emit.EnderEmit.nro);
         trvwNFe.Items.AddChild(Node,'xCpl='    +Emit.EnderEmit.xCpl);
         trvwNFe.Items.AddChild(Node,'xBairro=' +Emit.EnderEmit.xBairro);
         trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Emit.EnderEmit.cMun));
         trvwNFe.Items.AddChild(Node,'xMun='    +Emit.EnderEmit.xMun);
         trvwNFe.Items.AddChild(Node,'UF'       +Emit.EnderEmit.UF);
         trvwNFe.Items.AddChild(Node,'cPais='   +IntToStr(Emit.EnderEmit.cPais));
         trvwNFe.Items.AddChild(Node,'xPais='   +Emit.EnderEmit.xPais);

         if Avulsa.CNPJ  <> '' then
          begin
            Node := trvwNFe.Items.AddChild(Nota,'Avulsa');
            trvwNFe.Items.AddChild(Node,'CNPJ='    +Avulsa.CNPJ);
            trvwNFe.Items.AddChild(Node,'xOrgao='  +Avulsa.xOrgao);
            trvwNFe.Items.AddChild(Node,'matr='    +Avulsa.matr );
            trvwNFe.Items.AddChild(Node,'xAgente=' +Avulsa.xAgente);
            trvwNFe.Items.AddChild(Node,'fone='    +Avulsa.fone);
            trvwNFe.Items.AddChild(Node,'UF='      +Avulsa.UF);
            trvwNFe.Items.AddChild(Node,'nDAR='    +Avulsa.nDAR);
            trvwNFe.Items.AddChild(Node,'dEmi='    +DateToStr(Avulsa.dEmi));
            trvwNFe.Items.AddChild(Node,'vDAR='    +FloatToStr(Avulsa.vDAR));
            trvwNFe.Items.AddChild(Node,'repEmi='  +Avulsa.repEmi);
            trvwNFe.Items.AddChild(Node,'dPag='    +DateToStr(Avulsa.dPag));
          end;
         Node := trvwNFe.Items.AddChild(Nota,'Dest');
         trvwNFe.Items.AddChild(Node,'CNPJCPF= ' +Dest.CNPJCPF);
         trvwNFe.Items.AddChild(Node,'IE='       +Dest.IE);
         trvwNFe.Items.AddChild(Node,'ISUF='     +Dest.ISUF);
         trvwNFe.Items.AddChild(Node,'xNome='    +Dest.xNome);
         trvwNFe.Items.AddChild(Node,'email='    +Dest.Email);

         Node := trvwNFe.Items.AddChild(Node,'EnderDest');
         trvwNFe.Items.AddChild(Node,'Fone='    +Dest.EnderDest.Fone);
         trvwNFe.Items.AddChild(Node,'CEP='     +IntToStr(Dest.EnderDest.CEP));
         trvwNFe.Items.AddChild(Node,'xLgr='    +Dest.EnderDest.xLgr);
         trvwNFe.Items.AddChild(Node,'nro='     +Dest.EnderDest.nro);
         trvwNFe.Items.AddChild(Node,'xCpl='    +Dest.EnderDest.xCpl);
         trvwNFe.Items.AddChild(Node,'xBairro=' +Dest.EnderDest.xBairro);
         trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Dest.EnderDest.cMun));
         trvwNFe.Items.AddChild(Node,'xMun='    +Dest.EnderDest.xMun);
         trvwNFe.Items.AddChild(Node,'UF='      +Dest.EnderDest.UF );
         trvwNFe.Items.AddChild(Node,'cPais='   +IntToStr(Dest.EnderDest.cPais));
         trvwNFe.Items.AddChild(Node,'xPais='   +Dest.EnderDest.xPais);

         if Retirada.CNPJCPF <> '' then
          begin
            Node := trvwNFe.Items.AddChild(Nota,'Retirada');
            trvwNFe.Items.AddChild(Node,'CNPJ='    +Retirada.CNPJCPF);
            trvwNFe.Items.AddChild(Node,'xLgr='    +Retirada.xLgr);
            trvwNFe.Items.AddChild(Node,'nro='     +Retirada.nro);
            trvwNFe.Items.AddChild(Node,'xCpl='    +Retirada.xCpl);
            trvwNFe.Items.AddChild(Node,'xBairro=' +Retirada.xBairro);
            trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Retirada.cMun));
            trvwNFe.Items.AddChild(Node,'xMun='    +Retirada.xMun);
            trvwNFe.Items.AddChild(Node,'UF='      +Retirada.UF);
          end;

         if Entrega.CNPJCPF <> '' then
          begin
            Node := trvwNFe.Items.AddChild(Nota,'Entrega');
            trvwNFe.Items.AddChild(Node,'CNPJ='    +Entrega.CNPJCPF);
            trvwNFe.Items.AddChild(Node,'xLgr='    +Entrega.xLgr);
            trvwNFe.Items.AddChild(Node,'nro='     +Entrega.nro);
            trvwNFe.Items.AddChild(Node,'xCpl='    +Entrega.xCpl);
            trvwNFe.Items.AddChild(Node,'xBairro=' +Entrega.xBairro);
            trvwNFe.Items.AddChild(Node,'cMun='    +IntToStr(Entrega.cMun));
            trvwNFe.Items.AddChild(Node,'xMun='    +Entrega.xMun);
            trvwNFe.Items.AddChild(Node,'UF='      +Entrega.UF);
          end;

         for I := 0 to Det.Count-1 do
          begin
            with Det.Items[I] do
             begin
                 NodeItem := trvwNFe.Items.AddChild(Nota,'Produto'+IntToStrZero(I+1,3));
                 trvwNFe.Items.AddChild(NodeItem,'nItem='  +IntToStr(Prod.nItem) );
                 trvwNFe.Items.AddChild(NodeItem,'cProd='  +Prod.cProd );
                 trvwNFe.Items.AddChild(NodeItem,'cEAN='   +Prod.cEAN);
                 trvwNFe.Items.AddChild(NodeItem,'xProd='  +Prod.xProd);
                 trvwNFe.Items.AddChild(NodeItem,'NCM='    +Prod.NCM);
                 trvwNFe.Items.AddChild(NodeItem,'EXTIPI=' +Prod.EXTIPI);
                 trvwNFe.Items.AddChild(NodeItem,'CFOP='   +Prod.CFOP);
                 trvwNFe.Items.AddChild(NodeItem,'uCom='   +Prod.uCom);
                 trvwNFe.Items.AddChild(NodeItem,'qCom='   +FloatToStr(Prod.qCom));
                 trvwNFe.Items.AddChild(NodeItem,'vUnCom=' +FloatToStr(Prod.vUnCom));
                 trvwNFe.Items.AddChild(NodeItem,'vProd='  +FloatToStr(Prod.vProd));

                 trvwNFe.Items.AddChild(NodeItem,'cEANTrib=' +Prod.cEANTrib);
                 trvwNFe.Items.AddChild(NodeItem,'uTrib='    +Prod.uTrib);
                 trvwNFe.Items.AddChild(NodeItem,'qTrib='    +FloatToStr(Prod.qTrib));
                 trvwNFe.Items.AddChild(NodeItem,'vUnTrib='  +FloatToStr(Prod.vUnTrib));

                 trvwNFe.Items.AddChild(NodeItem,'vFrete='      +FloatToStr(Prod.vFrete));
                 trvwNFe.Items.AddChild(NodeItem,'vSeg='        +FloatToStr(Prod.vSeg));
                 trvwNFe.Items.AddChild(NodeItem,'vDesc='       +FloatToStr(Prod.vDesc));
                 trvwNFe.Items.AddChild(NodeItem,'vOutro='      +FloatToStr(Prod.vOutro));
                 trvwNFe.Items.AddChild(NodeItem,'indTot='      +indTotToStr(Prod.IndTot));
                 trvwNFe.Items.AddChild(NodeItem,'xPed='        +Prod.xPed);
                 trvwNFe.Items.AddChild(NodeItem,'nItemPedido=' +Prod.nItemPed);

                 trvwNFe.Items.AddChild(NodeItem,'infAdProd=' +infAdProd);

                 for J:=0 to Prod.DI.Count-1 do
                  begin
                    if Prod.DI.Items[j].nDi <> '' then
                     begin
                       with Prod.DI.Items[j] do
                        begin
                          NodePai := trvwNFe.Items.AddChild(NodeItem,'DI'+IntToStrZero(J+1,3));
                          trvwNFe.Items.AddChild(NodePai,'nDi='         +nDi);
                          trvwNFe.Items.AddChild(NodePai,'dDi='         +DateToStr(dDi));
                          trvwNFe.Items.AddChild(NodePai,'xLocDesemb='  +xLocDesemb);
                          trvwNFe.Items.AddChild(NodePai,'UFDesemb='    +UFDesemb);
                          trvwNFe.Items.AddChild(NodePai,'dDesemb='     +DateToStr(dDesemb));
                          trvwNFe.Items.AddChild(NodePai,'cExportador=' +cExportador);;

                          for K:=0 to adi.Count-1 do
                           begin
                             with adi.Items[K] do
                              begin
                                Node := trvwNFe.Items.AddChild(NodePai,'LADI'+IntToStrZero(K+1,3));
                                trvwNFe.Items.AddChild(Node,'nAdicao='     +IntToStr(nAdicao));
                                trvwNFe.Items.AddChild(Node,'nSeqAdi='     +IntToStr(nSeqAdi));
                                trvwNFe.Items.AddChild(Node,'cFabricante=' +cFabricante);
                                trvwNFe.Items.AddChild(Node,'vDescDI='     +FloatToStr(vDescDI));
                              end;
                           end;
                        end;
                     end
                    else
                      Break;
                  end;

                if Prod.veicProd.chassi <> '' then
                 begin
                   Node := trvwNFe.Items.AddChild(NodeItem,'Veiculo');
                   with Prod.veicProd do
                    begin
                      trvwNFe.Items.AddChild(Node,'tpOP='     +tpOPToStr(tpOP));
                      trvwNFe.Items.AddChild(Node,'chassi='   +chassi);
                      trvwNFe.Items.AddChild(Node,'cCor='     +cCor);
                      trvwNFe.Items.AddChild(Node,'xCor='     +xCor);
                      trvwNFe.Items.AddChild(Node,'pot='      +pot);
                      trvwNFe.Items.AddChild(Node,'Cilin='      +Cilin);
                      trvwNFe.Items.AddChild(Node,'pesoL='    +pesoL);
                      trvwNFe.Items.AddChild(Node,'pesoB='    +pesoB);
                      trvwNFe.Items.AddChild(Node,'nSerie='   +nSerie);
                      trvwNFe.Items.AddChild(Node,'tpComb='   +tpComb);
                      trvwNFe.Items.AddChild(Node,'nMotor='   +nMotor);
                      trvwNFe.Items.AddChild(Node,'CMT='     +CMT);
                      trvwNFe.Items.AddChild(Node,'dist='     +dist);
                      trvwNFe.Items.AddChild(Node,'anoMod='   +IntToStr(anoMod));
                      trvwNFe.Items.AddChild(Node,'anoFab='   +IntToStr(anoFab));
                      trvwNFe.Items.AddChild(Node,'tpPint='   +tpPint);
                      trvwNFe.Items.AddChild(Node,'tpVeic='   +IntToStr(tpVeic));
                      trvwNFe.Items.AddChild(Node,'espVeic='  +IntToStr(espVeic));
                      trvwNFe.Items.AddChild(Node,'VIN='      +VIN);
                      trvwNFe.Items.AddChild(Node,'condVeic=' +condVeicToStr(condVeic));
                      trvwNFe.Items.AddChild(Node,'cMod='     +cMod);
                    end;
                 end;

                 for J:=0 to Prod.med.Count-1 do
                  begin
                    Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento'+IntToStrZero(J+1,3) );
                    with Prod.med.Items[J] do
                     begin
                       trvwNFe.Items.AddChild(Node,'nLote=' +nLote);
                       trvwNFe.Items.AddChild(Node,'qLote=' +FloatToStr(qLote));
                       trvwNFe.Items.AddChild(Node,'dFab='  +DateToStr(dFab));
                       trvwNFe.Items.AddChild(Node,'dVal='  +DateToStr(dVal));
                       trvwNFe.Items.AddChild(Node,'vPMC='  +FloatToStr(vPMC));
                      end;
                  end;

                 for J:=0 to Prod.arma.Count-1 do
                  begin
                    Node := trvwNFe.Items.AddChild(NodeItem,'Arma'+IntToStrZero(J+1,3));
                    with Prod.arma.Items[J] do
                     begin
                       trvwNFe.Items.AddChild(Node,'nSerie=' +nSerie);
                       trvwNFe.Items.AddChild(Node,'tpArma=' +tpArmaToStr(tpArma));
                       trvwNFe.Items.AddChild(Node,'nCano='  +nCano);
                       trvwNFe.Items.AddChild(Node,'descr='  +descr);
                      end;
                  end;

                 if (Prod.comb.cProdANP > 0) then
                  begin
                   NodePai := trvwNFe.Items.AddChild(NodeItem,'Combustivel');
                   with Prod.comb do
                    begin
                      trvwNFe.Items.AddChild(NodePai,'cProdANP=' +IntToStr(cProdANP));
                      trvwNFe.Items.AddChild(NodePai,'CODIF='    +CODIF);
                      trvwNFe.Items.AddChild(NodePai,'qTemp='    +FloatToStr(qTemp));
                      trvwNFe.Items.AddChild(NodePai,'UFcons='    +UFcons);

                      Node := trvwNFe.Items.AddChild(NodePai,'CIDE'+IntToStrZero(I+1,3));
                      trvwNFe.Items.AddChild(Node,'qBCprod='   +FloatToStr(CIDE.qBCprod));
                      trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(CIDE.vAliqProd));
                      trvwNFe.Items.AddChild(Node,'vCIDE='     +FloatToStr(CIDE.vCIDE));

                      Node := trvwNFe.Items.AddChild(NodePai,'ICMSComb'+IntToStrZero(I+1,3));
                      trvwNFe.Items.AddChild(Node,'vBCICMS='   +FloatToStr(ICMS.vBCICMS));
                      trvwNFe.Items.AddChild(Node,'vICMS='     +FloatToStr(ICMS.vICMS));
                      trvwNFe.Items.AddChild(Node,'vBCICMSST=' +FloatToStr(ICMS.vBCICMSST));
                      trvwNFe.Items.AddChild(Node,'vICMSST='   +FloatToStr(ICMS.vICMSST));

                      if (ICMSInter.vBCICMSSTDest>0) then
                       begin
                         Node := trvwNFe.Items.AddChild(NodePai,'ICMSInter'+IntToStrZero(I+1,3));
                         trvwNFe.Items.AddChild(Node,'vBCICMSSTDest=' +FloatToStr(ICMSInter.vBCICMSSTDest));
                         trvwNFe.Items.AddChild(Node,'vICMSSTDest='   +FloatToStr(ICMSInter.vICMSSTDest));
                       end;

                      if (ICMSCons.vBCICMSSTCons>0) then
                       begin
                         Node := trvwNFe.Items.AddChild(NodePai,'ICMSCons'+IntToStrZero(I+1,3));
                         trvwNFe.Items.AddChild(Node,'vBCICMSSTCons=' +FloatToStr(ICMSCons.vBCICMSSTCons));
                         trvwNFe.Items.AddChild(Node,'vICMSSTCons='   +FloatToStr(ICMSCons.vICMSSTCons));
                         trvwNFe.Items.AddChild(Node,'UFCons='        +ICMSCons.UFcons);
                       end;
                    end;
                 end;

                 with Imposto do
                  begin
                     NodePai := trvwNFe.Items.AddChild(NodeItem,'Imposto');

                     if ISSQN.cSitTrib = ISSQNcSitTribVazio then
                     begin
                       Node := trvwNFe.Items.AddChild(NodePai,'ICMS');
                       with ICMS do
                        begin
                          trvwNFe.Items.AddChild(Node,'CST=' +CSTICMSToStr(CST));
                          trvwNFe.Items.AddChild(Node,'CSOSN=' +CSOSNIcmsToStr(CSOSN));
                          trvwNFe.Items.AddChild(Node,'orig='  +OrigToStr(ICMS.orig));
                          trvwNFe.Items.AddChild(Node,'modBC=' +modBCToStr(ICMS.modBC));
                          trvwNFe.Items.AddChild(Node,'pRedBC=' +FloatToStr(ICMS.pRedBC));
                          trvwNFe.Items.AddChild(Node,'vBC='   +FloatToStr(ICMS.vBC));
                          trvwNFe.Items.AddChild(Node,'pICMS=' +FloatToStr(ICMS.pICMS));
                          trvwNFe.Items.AddChild(Node,'vICMS=' +FloatToStr(ICMS.vICMS));
                          trvwNFe.Items.AddChild(Node,'modBCST='  +modBCSTToStr(ICMS.modBCST));
                          trvwNFe.Items.AddChild(Node,'pMVAST='   +FloatToStr(ICMS.pMVAST));
                          trvwNFe.Items.AddChild(Node,'pRedBCST=' +FloatToStr(ICMS.pRedBCST));
                          trvwNFe.Items.AddChild(Node,'vBCST='    +FloatToStr(ICMS.vBCST));
                          trvwNFe.Items.AddChild(Node,'pICMSST='  +FloatToStr(ICMS.pICMSST));
                          trvwNFe.Items.AddChild(Node,'vICMSST='  +FloatToStr(ICMS.vICMSST));
                          trvwNFe.Items.AddChild(Node,'vBCSTRet='   +FloatToStr(ICMS.vBCSTRet));
                          trvwNFe.Items.AddChild(Node,'vICMSSTRet=' +FloatToStr(ICMS.vICMSSTRet));
                          trvwNFe.Items.AddChild(Node,'pCredSN='   +FloatToStr(ICMS.pCredSN));
                          trvwNFe.Items.AddChild(Node,'vCredICMSSN='   +FloatToStr(ICMS.vCredICMSSN));
                        end;

                        Node := trvwNFe.Items.AddChild(NodePai,'ICMSUFDest');
                        with ICMSUFDest do
                        begin
                          trvwNFe.Items.AddChild(Node,'vBCUFDest='   +FloatToStr(vBCUFDest));
                          trvwNFe.Items.AddChild(Node,'pFCPUFDest='   +FloatToStr(pFCPUFDest));
                          trvwNFe.Items.AddChild(Node,'pICMSUFDest='   +FloatToStr(pICMSUFDest));
                          trvwNFe.Items.AddChild(Node,'pICMSInter='   +FloatToStr(pICMSInter));
                          trvwNFe.Items.AddChild(Node,'pICMSInterPart='   +FloatToStr(pICMSInterPart));
                          trvwNFe.Items.AddChild(Node,'vFCPUFDest='   +FloatToStr(vFCPUFDest));
                          trvwNFe.Items.AddChild(Node,'vICMSUFDest='   +FloatToStr(vICMSUFDest));
                          trvwNFe.Items.AddChild(Node,'vICMSUFRemet='   +FloatToStr(vICMSUFRemet));
                        end;
                     end
                     else
                     begin
                       Node := trvwNFe.Items.AddChild(NodePai,'ISSQN');
                       with ISSQN do
                        begin
                          trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(vBC));
                          trvwNFe.Items.AddChild(Node,'vAliq='     +FloatToStr(vAliq));
                          trvwNFe.Items.AddChild(Node,'vISSQN='    +FloatToStr(vISSQN));
                          trvwNFe.Items.AddChild(Node,'cMunFG='    +IntToStr(cMunFG));
                          trvwNFe.Items.AddChild(Node,'cListServ=' +cListServ);
                        end;
                     end;

                     if (IPI.vBC > 0) then
                      begin
                        Node := trvwNFe.Items.AddChild(NodePai,'IPI');
                        with IPI do
                         begin
                           trvwNFe.Items.AddChild(Node,'CST='       +CSTIPIToStr(CST));
                           trvwNFe.Items.AddChild(Node,'clEnq='    +clEnq);
                           trvwNFe.Items.AddChild(Node,'CNPJProd=' +CNPJProd);
                           trvwNFe.Items.AddChild(Node,'cSelo='    +cSelo);
                           trvwNFe.Items.AddChild(Node,'qSelo='    +IntToStr(qSelo));
                           trvwNFe.Items.AddChild(Node,'cEnq='     +cEnq);

                           trvwNFe.Items.AddChild(Node,'vBC='    +FloatToStr(vBC));
                           trvwNFe.Items.AddChild(Node,'qUnid='  +FloatToStr(qUnid));
                           trvwNFe.Items.AddChild(Node,'vUnid='  +FloatToStr(vUnid));
                           trvwNFe.Items.AddChild(Node,'pIPI='   +FloatToStr(pIPI));
                           trvwNFe.Items.AddChild(Node,'vIPI='   +FloatToStr(vIPI));
                         end;
                      end;

                     if (II.vBc > 0) then
                      begin
                        Node := trvwNFe.Items.AddChild(NodePai,'II');
                        with II do
                         begin
                           trvwNFe.Items.AddChild(Node,'vBc='      +FloatToStr(vBc));
                           trvwNFe.Items.AddChild(Node,'vDespAdu=' +FloatToStr(vDespAdu));
                           trvwNFe.Items.AddChild(Node,'vII='      +FloatToStr(vII));
                           trvwNFe.Items.AddChild(Node,'vIOF='     +FloatToStr(vIOF));
                         end;
                      end;

                     Node := trvwNFe.Items.AddChild(NodePai,'PIS');
                     with PIS do
                      begin
                        trvwNFe.Items.AddChild(Node,'CST=' +CSTPISToStr(CST));

                        if (CST = pis01) or (CST = pis02) then
                         begin
                           trvwNFe.Items.AddChild(Node,'vBC='  +FloatToStr(PIS.vBC));
                           trvwNFe.Items.AddChild(Node,'pPIS=' +FloatToStr(PIS.pPIS));
                           trvwNFe.Items.AddChild(Node,'vPIS=' +FloatToStr(PIS.vPIS));
                         end
                        else if CST = pis03 then
                         begin
                           trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(PIS.qBCProd));
                           trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(PIS.vAliqProd));
                           trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(PIS.vPIS));
                         end
                        else if CST = pis99 then
                         begin
                           trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(PIS.vBC));
                           trvwNFe.Items.AddChild(Node,'pPIS='      +FloatToStr(PIS.pPIS));
                           trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(PIS.qBCProd));
                           trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(PIS.vAliqProd));
                           trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(PIS.vPIS));
                         end;
                      end;

                     if (PISST.vBc>0) then
                      begin
                        Node := trvwNFe.Items.AddChild(NodePai,'PISST');
                        with PISST do
                         begin
                           trvwNFe.Items.AddChild(Node,'vBc='       +FloatToStr(vBc));
                           trvwNFe.Items.AddChild(Node,'pPis='      +FloatToStr(pPis));
                           trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(qBCProd));
                           trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(vAliqProd));
                           trvwNFe.Items.AddChild(Node,'vPIS='      +FloatToStr(vPIS));
                         end;
                        end;

                     Node := trvwNFe.Items.AddChild(NodePai,'COFINS');
                     with COFINS do
                      begin
                        trvwNFe.Items.AddChild(Node,'CST=' +CSTCOFINSToStr(CST));

                        if (CST = cof01) or (CST = cof02)   then
                         begin
                           trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(COFINS.vBC));
                           trvwNFe.Items.AddChild(Node,'pCOFINS=' +FloatToStr(COFINS.pCOFINS));
                           trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(COFINS.vCOFINS));
                         end
                        else if CST = cof03 then
                         begin
                           trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(COFINS.qBCProd));
                           trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(COFINS.vAliqProd));
                           trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(COFINS.vCOFINS));
                         end
                        else if CST = cof99 then
                         begin
                           trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(COFINS.vBC));
                           trvwNFe.Items.AddChild(Node,'pCOFINS='   +FloatToStr(COFINS.pCOFINS));
                           trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(COFINS.qBCProd));
                           trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(COFINS.vAliqProd));
                           trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(COFINS.vCOFINS));
                         end;
                      end;

                     if (COFINSST.vBC > 0) then
                      begin
                        Node := trvwNFe.Items.AddChild(NodePai,'COFINSST');
                        with COFINSST do
                         begin
                           trvwNFe.Items.AddChild(Node,'vBC='       +FloatToStr(vBC));
                           trvwNFe.Items.AddChild(Node,'pCOFINS='   +FloatToStr(pCOFINS));
                           trvwNFe.Items.AddChild(Node,'qBCProd='   +FloatToStr(qBCProd));
                           trvwNFe.Items.AddChild(Node,'vAliqProd=' +FloatToStr(vAliqProd));
                           trvwNFe.Items.AddChild(Node,'vCOFINS='   +FloatToStr(vCOFINS));
                         end;
                      end;
                  end;
               end;
            end;

         NodePai := trvwNFe.Items.AddChild(Nota,'Total');
         Node := trvwNFe.Items.AddChild(NodePai,'ICMSTot');
         trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(Total.ICMSTot.vBC));
         trvwNFe.Items.AddChild(Node,'vICMS='   +FloatToStr(Total.ICMSTot.vICMS));
         trvwNFe.Items.AddChild(Node,'vBCST='   +FloatToStr(Total.ICMSTot.vBCST));
         trvwNFe.Items.AddChild(Node,'vST='     +FloatToStr(Total.ICMSTot.vST));
         trvwNFe.Items.AddChild(Node,'vProd='   +FloatToStr(Total.ICMSTot.vProd));
         trvwNFe.Items.AddChild(Node,'vFrete='  +FloatToStr(Total.ICMSTot.vFrete));
         trvwNFe.Items.AddChild(Node,'vSeg='    +FloatToStr(Total.ICMSTot.vSeg));
         trvwNFe.Items.AddChild(Node,'vDesc='   +FloatToStr(Total.ICMSTot.vDesc));
         trvwNFe.Items.AddChild(Node,'vII='     +FloatToStr(Total.ICMSTot.vII));
         trvwNFe.Items.AddChild(Node,'vIPI='    +FloatToStr(Total.ICMSTot.vIPI));
         trvwNFe.Items.AddChild(Node,'vPIS='    +FloatToStr(Total.ICMSTot.vPIS));
         trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(Total.ICMSTot.vCOFINS));
         trvwNFe.Items.AddChild(Node,'vOutro='  +FloatToStr(Total.ICMSTot.vOutro));
         trvwNFe.Items.AddChild(Node,'vNF='     +FloatToStr(Total.ICMSTot.vNF));
         trvwNFe.Items.AddChild(Node,'vFCPUFDest='   +FloatToStr(Total.ICMSTot.vFCPUFDest));
         trvwNFe.Items.AddChild(Node,'vICMSUFDest='  +FloatToStr(Total.ICMSTot.vICMSUFDest));
         trvwNFe.Items.AddChild(Node,'vICMSUFRemet=' +FloatToStr(Total.ICMSTot.vICMSUFRemet));

         if Total.ISSQNtot.vServ > 0 then
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'ISSQNtot');
            trvwNFe.Items.AddChild(Node,'vServ='   +FloatToStr(Total.ISSQNtot.vServ));
            trvwNFe.Items.AddChild(Node,'vBC='     +FloatToStr(Total.ISSQNTot.vBC));
            trvwNFe.Items.AddChild(Node,'vISS='    +FloatToStr(Total.ISSQNTot.vISS));
            trvwNFe.Items.AddChild(Node,'vPIS='    +FloatToStr(Total.ISSQNTot.vPIS));
            trvwNFe.Items.AddChild(Node,'vCOFINS=' +FloatToStr(Total.ISSQNTot.vCOFINS));
          end;

         Node := trvwNFe.Items.AddChild(NodePai,'retTrib');
         trvwNFe.Items.AddChild(Node,'vRetPIS='   +FloatToStr(Total.retTrib.vRetPIS));
         trvwNFe.Items.AddChild(Node,'vRetCOFINS='+FloatToStr(Total.retTrib.vRetCOFINS));
         trvwNFe.Items.AddChild(Node,'vRetCSLL='  +FloatToStr(Total.retTrib.vRetCSLL));
         trvwNFe.Items.AddChild(Node,'vBCIRRF='   +FloatToStr(Total.retTrib.vBCIRRF));
         trvwNFe.Items.AddChild(Node,'vIRRF='     +FloatToStr(Total.retTrib.vIRRF));
         trvwNFe.Items.AddChild(Node,'vBCRetPrev='+FloatToStr(Total.retTrib.vBCRetPrev));
         trvwNFe.Items.AddChild(Node,'vRetPrev='  +FloatToStr(Total.retTrib.vRetPrev));

         NodePai := trvwNFe.Items.AddChild(Nota,'Transp');
         Node := trvwNFe.Items.AddChild(NodePai,'Transporta');
         trvwNFe.Items.AddChild(Node,'modFrete=' +modFreteToStr(Transp.modFrete));
         trvwNFe.Items.AddChild(Node,'CNPJCPF='  +Transp.Transporta.CNPJCPF);
         trvwNFe.Items.AddChild(Node,'xNome='    +Transp.Transporta.xNome);
         trvwNFe.Items.AddChild(Node,'IE='       +Transp.Transporta.IE);
         trvwNFe.Items.AddChild(Node,'xEnder='   +Transp.Transporta.xEnder);
         trvwNFe.Items.AddChild(Node,'xMun='     +Transp.Transporta.xMun);
         trvwNFe.Items.AddChild(Node,'UF='       +Transp.Transporta.UF);

         Node := trvwNFe.Items.AddChild(NodePai,'retTransp');
         trvwNFe.Items.AddChild(Node,'vServ='    +FloatToStr(Transp.retTransp.vServ));
         trvwNFe.Items.AddChild(Node,'vBCRet='   +FloatToStr(Transp.retTransp.vBCRet));
         trvwNFe.Items.AddChild(Node,'pICMSRet=' +FloatToStr(Transp.retTransp.pICMSRet));
         trvwNFe.Items.AddChild(Node,'vICMSRet=' +FloatToStr(Transp.retTransp.vICMSRet));
         trvwNFe.Items.AddChild(Node,'CFOP='     +Transp.retTransp.CFOP);
         trvwNFe.Items.AddChild(Node,'cMunFG='   +FloatToStr(Transp.retTransp.cMunFG));

         Node := trvwNFe.Items.AddChild(NodePai,'veicTransp');
         trvwNFe.Items.AddChild(Node,'placa='  +Transp.veicTransp.placa);
         trvwNFe.Items.AddChild(Node,'UF='     +Transp.veicTransp.UF);
         trvwNFe.Items.AddChild(Node,'RNTC='   +Transp.veicTransp.RNTC);

         for I:=0 to Transp.Reboque.Count-1 do
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'Reboque'+IntToStrZero(I+1,3));
            with Transp.Reboque.Items[I] do
             begin
               trvwNFe.Items.AddChild(Node,'placa=' +placa);
               trvwNFe.Items.AddChild(Node,'UF='    +UF);
               trvwNFe.Items.AddChild(Node,'RNTC='  +RNTC);
             end;
          end;

         for I:=0 to Transp.Vol.Count-1 do
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'Volume'+IntToStrZero(I+1,3));
            with Transp.Vol.Items[I] do
             begin
               trvwNFe.Items.AddChild(Node,'qVol='  +IntToStr(qVol));
               trvwNFe.Items.AddChild(Node,'esp='   +esp);
               trvwNFe.Items.AddChild(Node,'marca=' +marca);
               trvwNFe.Items.AddChild(Node,'nVol='  +nVol);
               trvwNFe.Items.AddChild(Node,'pesoL=' +FloatToStr(pesoL));
               trvwNFe.Items.AddChild(Node,'pesoB'  +FloatToStr(pesoB));

               for J:=0 to Lacres.Count-1 do
                begin
                  Node := trvwNFe.Items.AddChild(Node,'Lacre'+IntToStrZero(I+1,3)+IntToStrZero(J+1,3) );
                  trvwNFe.Items.AddChild(Node,'nLacre='+Lacres.Items[J].nLacre);
                end;
             end;
          end;

         NodePai := trvwNFe.Items.AddChild(Nota,'Cobr');
         Node    := trvwNFe.Items.AddChild(NodePai,'Fat');
         trvwNFe.Items.AddChild(Node,'nFat='  +Cobr.Fat.nFat);
         trvwNFe.Items.AddChild(Node,'vOrig=' +FloatToStr(Cobr.Fat.vOrig));
         trvwNFe.Items.AddChild(Node,'vDesc=' +FloatToStr(Cobr.Fat.vDesc));
         trvwNFe.Items.AddChild(Node,'vLiq='  +FloatToStr(Cobr.Fat.vLiq));

         for I:=0 to Cobr.Dup.Count-1 do
          begin
            Node    := trvwNFe.Items.AddChild(NodePai,'Duplicata'+IntToStrZero(I+1,3));
            with Cobr.Dup.Items[I] do
             begin
               trvwNFe.Items.AddChild(Node,'nDup='  +nDup);
               trvwNFe.Items.AddChild(Node,'dVenc=' +DateToStr(dVenc));
               trvwNFe.Items.AddChild(Node,'vDup='  +FloatToStr(vDup));
             end;
          end;

         NodePai := trvwNFe.Items.AddChild(Nota,'InfAdic');
         trvwNFe.Items.AddChild(NodePai,'infCpl='     +InfAdic.infCpl);
         trvwNFe.Items.AddChild(NodePai,'infAdFisco=' +InfAdic.infAdFisco);

         for I:=0 to InfAdic.obsCont.Count-1 do
          begin
            Node := trvwNFe.Items.AddChild(NodePai,'obsCont'+IntToStrZero(I+1,3));
            with InfAdic.obsCont.Items[I] do
             begin
               trvwNFe.Items.AddChild(Node,'xCampo=' +xCampo);
               trvwNFe.Items.AddChild(Node,'xTexto=' +xTexto);
             end;
          end;

           for I:=0 to InfAdic.obsFisco.Count-1 do
            begin
              Node := trvwNFe.Items.AddChild(NodePai,'obsFisco'+IntToStrZero(I+1,3));
              with InfAdic.obsFisco.Items[I] do
               begin
                  trvwNFe.Items.AddChild(Node,'xCampo=' +xCampo);
                  trvwNFe.Items.AddChild(Node,'xTexto=' +xTexto);
               end;
            end;

           for I:=0 to InfAdic.procRef.Count-1 do
            begin
              Node := trvwNFe.Items.AddChild(NodePai,'procRef'+IntToStrZero(I+1,3));
              with InfAdic.procRef.Items[I] do
               begin
                 trvwNFe.Items.AddChild(Node,'nProc='   +nProc);
                 trvwNFe.Items.AddChild(Node,'indProc=' +indProcToStr(indProc));
               end;
            end;

           if (exporta.UFembarq <> '') then
            begin
              Node := trvwNFe.Items.AddChild(Nota,'exporta');
              trvwNFe.Items.AddChild(Node,'UFembarq='   +exporta.UFembarq);
              trvwNFe.Items.AddChild(Node,'xLocEmbarq=' +exporta.xLocEmbarq);
            end;

           if (compra.xNEmp <> '') then
            begin
              Node := trvwNFe.Items.AddChild(Nota,'compra');
              trvwNFe.Items.AddChild(Node,'xNEmp=' +compra.xNEmp);
              trvwNFe.Items.AddChild(Node,'xPed='  +compra.xPed);
              trvwNFe.Items.AddChild(Node,'xCont=' +compra.xCont);
            end;
       end;
    end;     }
end;

function TfrmCarregaXML.NFeImportada(infNFe: string): Boolean;
begin
  qryConstaNfe.ParamByName('infNFe').AsString := infNFe;
  qryConstaNfe.Open;

  Result := qryConstaNfeinfNFe.AsString <> '';

  qryConstaNfe.Close;
end;

function TfrmCarregaXML.seleciona_dir: string;
var
  Pasta : String;
begin
  pasta:= '';
  SelectDirectory('Selecione a pasta do arquivo xml', '', Pasta);
  if (Trim(Pasta) <> '') then
    if (Pasta[Length(Pasta)] <> '\') then
      Pasta := Pasta + '\';
  Result := Pasta;
end;

procedure TfrmCarregaXML.XMLCarregado(arq: string);
begin
  // Arquivos estáticos
  if CopyFile(pwidechar(edt_path.Text + arq), pwidechar(edt_path.Text + 'importado\' + arq), true) then
  begin
    qmemArquivos.Append;
    qmemArquivosArquivo.AsString:= arq;
    qmemArquivosmgs.AsString:= 'Sucesso';
    qmemArquivos.Post;
    DeleteFile(pwidechar(edt_path.Text + arq));
  end;
end;

end.
