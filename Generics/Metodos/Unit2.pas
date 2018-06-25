unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  {Método com atributo generico}

  TUtils = class
    //Operador ternário
    class function IIF<T>(condicao: boolean; p1, p2: T): T;
  end;

  TProduto = class
  private
    FDescricao: String;
    procedure SetDescricao(const Value: String);
  published
    constructor Create;
    property Descricao: String read FDescricao write SetDescricao;
  end;

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
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

{ TUtils }

class function TUtils.IIF<T>(condicao: boolean; p1, p2: T): T;
begin
  if condicao then
    result := p1
  else
    result := p2;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Aux: Integer;
begin
  Aux := TUtils.IIF<INteger>(Edit1.Text <> '', 1, 2);

  ShowMessage(aux.ToString);
end;

{ TProduto }

constructor TProduto.Create;
begin
  FDescricao := 'Produto Generico';
end;

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Produto1, Produto2, Produto3: TProduto;
begin
  Produto2 := nil;

  Produto1 := TProduto.Create;
  Produto1.FDescricao := 'Mouse';

  try
    Produto3 := TUtils.IIF<TProduto>(Assigned(Produto1), Produto1, TProduto.Create);

    ShowMessage(Produto3.FDescricao);
  finally
  end;
end;

end.
