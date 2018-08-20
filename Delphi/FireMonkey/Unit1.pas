unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, System.Rtti, FMX.Grid.Style,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.DB, FireDAC.Comp.DataSet, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, FMX.Controls.Presentation, FMX.ScrollBox,
  FMX.Grid, FireDAC.Comp.Client, FMX.StdCtrls, FMX.Edit, FMX.DateTimeCtrls, FMX.SearchBox,
  FMX.Layouts, FMX.ListBox, FMX.Objects, FMX.Effects;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    Grid1: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    FDTable1EmployeeID: TFDAutoIncField;
    FDTable1LastName: TStringField;
    FDTable1FirstName: TStringField;
    FDTable1Title: TStringField;
    FDTable1TitleOfCourtesy: TStringField;
    FDTable1BirthDate: TDateTimeField;
    edtId: TEdit;
    lblId: TLabel;
    LinkControlToField1: TLinkControlToField;
    BindExpression1: TBindExpression;
    edtFirstName: TEdit;
    lblFirstName: TLabel;
    LinkControlToField2: TLinkControlToField;
    BindExpression2: TBindExpression;
    EdtLastName: TEdit;
    lblLastName: TLabel;
    LinkControlToField3: TLinkControlToField;
    BindExpression3: TBindExpression;
    DateEdit1: TDateEdit;
    Label1: TLabel;
    LinkControlToField4: TLinkControlToField;
    BindExpression4: TBindExpression;
    Label2: TLabel;
    qtdeRegistros: TLabel;
    BindExpression5: TBindExpression;
    ListBox1: TListBox;
    SearchBox1: TSearchBox;
    StyleBook1: TStyleBook;
    LinkListControlToField1: TLinkListControlToField;
    ShadowEffect1: TShadowEffect;
    Image1: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
