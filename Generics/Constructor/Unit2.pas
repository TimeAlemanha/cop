unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  {Constructor e Constraint}

  TPessoaFisica = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  published
    property Nome: String read FNome write SetNome;
  end;

  TPessoaJuridica = class
  private
    FRazaoSocial: String;
    procedure SetRazaoSocial(const Value: String);
  published
    property RazaoSocial: String read FRazaoSocial write SetRazaoSocial;
  end;

  //TPessoa<T: class, constructor> = class
  //TPessoa<T: constructor> = class
  TPessoa<T: constructor> = class
  private
    FEndereco: String;
    FTipo: T;
    procedure SetEndereco(const Value: String);
  published
    constructor Create;
    function getTipo: T;
    property Endereco: String read FEndereco write SetEndereco;
  end;

 { TTeste<T : IInterface> = class

  end;}

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

{ TPessoaFisica }

procedure TPessoaFisica.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TPessoaJuridica }

procedure TPessoaJuridica.SetRazaoSocial(const Value: String);
begin
  FRazaoSocial := Value;
end;

{ TPessoa<T> }

constructor TPessoa<T>.Create;
begin
  FTipo := T.Create;
end;

function TPessoa<T>.getTipo: T;
begin
  Result := FTipo;
end;

procedure TPessoa<T>.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa<TPessoaFisica>;
begin

  Pessoa := TPessoa<TPessoaFisica>.Create;
  try
    Pessoa.FTipo.Nome := 'Vinicius';
    Pessoa.SetEndereco('Rua tal e tal');

    ShowMessage(Pessoa.FTipo.Nome + ' mora '+ Pessoa.Endereco);
  finally
    FreeAndNIl(Pessoa);
  end;
end;

end.
