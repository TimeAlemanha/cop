unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Threading, Vcl.StdCtrls, System.SyncObjs;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Memo2: TMemo;
    Button1: TButton;
    ckGerarException: TCheckBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherMemo(poMemo: TMemo);
    procedure PreencherMemoForParalelo(poMemo: TMemo);

    procedure CapturarException(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

const
  QTDE_LINHAS = 5000;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  PreencherMemo(memo1);
  PreencherMemo(memo2);
  //PreencherMemoForParalelo(memo2);
end;

procedure TForm1.CapturarException(Sender: TObject);
var
  ex: TObject;
begin
  if not (Sender is TThread) then
    Exit;

  ex := (Sender as TThread).FatalException;

  if not assigned(ex) then
    Exit;

  ShowMessage(Exception(ex).Message);
end;

procedure TForm1.PreencherMemo(poMemo: TMemo);
var
  MinhaThread: TThread;
begin
  MinhaThread := TThread.CreateAnonymousThread(procedure
                                               var
                                                 i: Integer;
                                               begin
                                                 if ckGerarException.Checked then
                                                   raise Exception.Create('Gerou Exception');

                                                 for i := 0 to QTDE_LINHAS do
                                                 begin
                                                   TThread.Synchronize(TThread.CurrentThread,
                                                                       procedure
                                                                       begin
                                                                         poMemo.Lines.Add('Linha ' + i.ToString());
                                                                       end);
                                                 end;
                                               end
                                              );

  MinhaThread.OnTerminate := CapturarException;
  MinhaThread.Start;
end;

procedure TForm1.PreencherMemoForParalelo(poMemo: TMemo);
begin
  TThread.CreateAnonymousThread(procedure
                                begin
                                  TParallel.For(0, QTDE_LINHAS,
                                  procedure (i: integer)
                                  begin
                                    TThread.Synchronize(TThread.CurrentThread,
                                      procedure
                                      begin
                                        poMemo.Lines.Add('Linha ' + i.ToString());
                                      end)
                                  end);
                                end
                               ).Start;
end;

end.
