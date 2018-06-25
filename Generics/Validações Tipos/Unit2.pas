unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  {Validações}
  TMeuArray = array [0..9] of String;

  TMeuArrayGenerico<T> = class
    FArray: array [0..9] of T;
  end;

  TMeuArrayA = TMeuArrayGenerico<string>;

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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
  {Validação pelo nome do tipo}
  Aux1: TMeuArray;
  Aux2: TMeuArray;
  Aux3: array [0..9] of String;
  Aux4: array [0..9] of String;
begin
  Aux1 := Aux2;
  //Aux1 := Aux3;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Aux1: TMeuArrayGenerico<string>;
  Aux2: TMeuArrayGenerico<string>;
  Aux3: TMeuArrayA;
  Aux4: TMeuArrayA;
begin
  Aux1 := Aux3;
end;

end.
