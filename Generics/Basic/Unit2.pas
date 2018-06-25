unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  {Classe Generica T (Type)}
  TKeyValue<T> = class
  private
    FKey: String;
    FValue: T;
    procedure SetKey(const Value: String);
    procedure SetValue(const Value: T);
  published
    property Key: String read FKey write SetKey;
    property Value: T read FValue write SetValue;
  end;

  TForm2 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  Key: TKeyValue<TForm>;
begin
  Key := TKeyValue<TForm>.Create;
  try
    Key.FKey := 'Form1 ';
    Key.FValue := Self;

    ShowMessage(Key.FKey + ' - ' + Key.FValue.Name);
  finally

  end;
end;

{ TKeyValue<T> }

procedure TKeyValue<T>.SetKey(const Value: String);
begin
  FKey := Value;
end;

procedure TKeyValue<T>.SetValue(const Value: T);
begin
  FValue := Value;
end;

end.
