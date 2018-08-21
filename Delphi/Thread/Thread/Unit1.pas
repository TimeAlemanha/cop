unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.SyncObjs;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FContador: Integer;
    FCriticalSection: TCriticalSection;
    procedure MostrarValor;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses System.Threading;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  ListaArquivos: TStringList;
  dtInicio, dtFim: TDateTime;
begin
  ListaArquivos := TStringList.Create;

  ListaArquivos.loadfromfile('d:\matheus\arquivo_20m.txt');

  dtInicio := Now;

  TParallel.For(0, Pred(ListaArquivos.Count),
            procedure (i: integer)
            begin
              TThread.Queue(TThread.CurrentThread,
                procedure
                begin
                  Memo1.Lines.Add(ListaArquivos[i]);
                end)
            end);

  dtFim := Now;

  ShowMessage(Format('%s linhas feitas em %s segundos.',
      [IntToStr(ListaArquivos.Count - 1), FormatDateTime('ss', dtFim - dtInicio)]));
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FContador := 0;

  TThread.CreateAnonymousThread(procedure
                                var
                                  i: Integer;
                                begin
                               //   FCriticalSection.Enter;
                                  try
                                    for i := 0 to 10000000 do
                                      TInterlocked.Increment(FContador);
                                    TThread.Synchronize(TThread.CurrentThread,
                                                        procedure
                                                        begin
                                                          MostrarValor;
                                                        end);
                                  finally
                                //    FCriticalSection.Leave;
                                  end;
                                end
                               ).Start;

  TThread.CreateAnonymousThread(procedure
                                var
                                  i: Integer;
                                begin
                                //  FCriticalSection.Enter;
                                  try
                                    for i := 0 to 10000000 do
                                      TInterlocked.Increment(FContador);
                                    TThread.Synchronize(TThread.CurrentThread,
                                                        procedure
                                                        begin
                                                          MostrarValor;
                                                        end);
                                  finally
                                //    FCriticalSection.Leave;
                                  end;
                                end
                               ).Start;

  TThread.CreateAnonymousThread(procedure
                                var
                                  i: Integer;
                                begin
                                //  FCriticalSection.Enter;
                                  try
                                    for i := 0 to 10000000 do
                                      TInterlocked.Increment(FContador);
                                    TThread.Synchronize(TThread.CurrentThread,
                                                        procedure
                                                        begin
                                                          MostrarValor;
                                                        end);
                                  finally
                                //    FCriticalSection.Leave;
                                  end;
                                end
                               ).Start;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FCriticalSection := TCriticalSection.create;
end;

procedure TForm1.MostrarValor;
begin
  showMessage(IntToStr(FContador));
end;

end.
