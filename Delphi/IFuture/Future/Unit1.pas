unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Threading, Vcl.StdCtrls,
  System.Rtti;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
    procedure processarStatusFuture(poTask: IFuture<string>);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  task1, task2, task3: IFuture<string>;
begin
  task1 := TTask.Future<string>(function:string
                               begin
                                 Sleep(8000);
                                 Result := 'Thread de 8 seg finalizada';
                               end);

  task2 := TTask.Future<string>(function:string
                                 begin
                                   Sleep(6000);
                                   Result := 'Thread de 6 seg finalizada';
                                 end);

  task3 := TTask.Future<string>(function:string
                                 begin
                                   Sleep(4000);
                                   Result := 'Thread de 4 seg finalizada';
                                 end);

  ProcessarStatusFuture(task3);
  ProcessarStatusFuture(task2);
  ProcessarStatusFuture(task1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  TThread.CreateAnonymousThread(procedure
                                var
                                  task: IFuture<string>;
                                begin
                                  task := TTask.Future<string>(function: string
                                                               begin
                                                                 Sleep(10000);
                                                                 result := 'Terminou os 10 seg';
                                                               end);

                                  while not (TTaskStatus.Completed = task.Status) do
                                    continue;

                                  TThread.Synchronize(TThread.CurrentThread,
                                                      procedure
                                                      begin
                                                        Memo1.Lines.Add(task.Value);
                                                      end);
                                end).Start;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  task1: IFuture<string>;
begin
  task1 := TTask.Future<string>(function:string
                               begin
                                 Sleep(10000);
                                 Result := 'Thread de 10 seg finalizada';
                               end);
  Memo1.Lines.Add(task1.Value);
end;

procedure TForm1.processarStatusFuture(poTask: IFuture<string>);
begin
  Memo1.Lines.Add(TRttiEnumerationType.GetName<TTaskStatus>(poTask.Status));
  Memo1.Lines.Add(poTask.value);
  Memo1.Lines.Add(TRttiEnumerationType.GetName<TTaskStatus>(poTask.Status));
end;

end.
