unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Generics.Collections;

type

  TPessoa = record
    Cpf: String;
    Nome: String;
  end;

  TForm2 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }

    Lista: TDictionary<String, TPessoa>;
  public
    { Public declarations }

    procedure KeyNotify(Sender: TObject; const Item: String; Action: TCollectionNotification);
    procedure ValueNotify(Sender: TObject; const Item: TPessoa; Action: TCollectionNotification);

  end;

var
  Form2: TForm2;

implementation

uses
  System.Generics.Defaults;

{$R *.dfm}

procedure TForm2.Button10Click(Sender: TObject);
begin
  Lista.OnKeyNotify := KeyNotify;
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
  Lista.OnValueNotify := ValueNotify;
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa.Cpf := edit1.Text;
  Pessoa.Nome := edit2.Text;
  Lista.Add(Pessoa.Cpf, Pessoa);
end;

procedure TForm2.Button2Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  if Lista.TryGetValue(Edit1.Text, Pessoa) then
  begin
    Memo1.Lines.Add(Pessoa.Cpf + ' - ' + Pessoa.Nome);
  end
  else
  begin
    Memo1.Lines.Add('Pessoa não localizada');
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Lista.Remove(Edit1.Text);
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  if Lista.ContainsKey(Edit1.Text) then
  begin
    memo1.Lines.Add('Pessoa Localizada.');
  end
  else
  begin
    memo1.Lines.Add('Pessoa não localizada.');
  end;
end;

procedure TForm2.Button5Click(Sender: TObject);
var
  Pessoa: TPessoa;
  c: IEqualityComparer<TPessoa>;
  Value: TPessoa;
begin
  Pessoa.Nome := edit2.Text;
  Pessoa.Cpf := edit1.Text;

  c := TEqualityComparer<TPessoa>.Default;

  for Value in Lista.Values do
  begin
    if c.Equals(Value, Pessoa) then
    begin
      memo1.Lines.Add('Pessoa localizada.');
    end;
  end;

 { if Lista.ContainsValue(Pessoa) then
    memo1.Lines.Add('Pessoa localizada.')
  else
    memo1.Lines.Add('Pessoa não localizada.');}
end;

procedure TForm2.Button6Click(Sender: TObject);
var
  Pessoa: TPessoa;
begin
  Pessoa.Cpf := edit1.Text;
  Pessoa.Nome := edit2.Text;
  Lista.AddOrSetValue(Pessoa.Cpf, Pessoa);
end;

procedure TForm2.Button7Click(Sender: TObject);
var
  Key: String;
begin
  for key in Lista.Keys do
  begin
    memo1.Lines.Add(Key);
  end;
end;

procedure TForm2.Button8Click(Sender: TObject);
var
  Value: TPessoa;
begin
  for Value in Lista.Values do
  begin
    Memo1.Lines.Add(Value.Cpf + ' - '+ Value.Nome);
  end;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
  Lista.Clear;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Lista := TDictionary<String,TPessoa>.Create;
end;

procedure TForm2.KeyNotify(Sender: TObject; const Item: String;
  Action: TCollectionNotification);
begin
  case Action of
    cnAdded: Memo1.Lines.Add('A chave '+ item + ' foi adicionada');
    cnRemoved: Memo1.Lines.Add('A chave '+ item + ' foi removida');
  end;
end;

procedure TForm2.ValueNotify(Sender: TObject; const Item: TPessoa;
  Action: TCollectionNotification);
begin
  case Action of
    cnAdded: Memo1.Lines.Add('A pessoa  '+ item.Nome + ' foi adicionada');
    cnRemoved: Memo1.Lines.Add('A pessoa '+ item.Nome + ' foi removida');
  end;
end;

end.
