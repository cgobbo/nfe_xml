program CarregaXML;

uses
  Vcl.Forms,
  ufrmCarregaXML in 'ufrmCarregaXML.pas' {frmCarregaXML};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCarregaXML, frmCarregaXML);
  Application.Run;
end.
