unit ufrmTabuadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtNum: TEdit;
    Label1: TLabel;
    btnCalc: TButton;
    edtMult: TEdit;
    Label2: TLabel;
    meResult: TMemo;
    procedure btnCalcClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcClick(Sender: TObject);

Var
  i, num, num2 : integer;

  begin
    meResult.Clear;
    if edtNum.Text = '' then
      begin
        ShowMessage('Digite um numero para a tabuada.');
        edtNum.SetFocus;
      end
        else
        begin
          num := StrToInt(edtNum.Text);
          num2 := StrToInt(edtMult.Text);
          for i := 1 to num2 do
            begin
              meResult.Lines.Add(IntToStr(num)+'x'+IntToStr(i)+'= '+IntToStr(num*i));
            end;

        end;
    edtNum.SetFocus;

  end;

  {
  //Apenas a variavel do contador
    begin
    if edtNum.Text = '' then
      begin
        ShowMessage('Digite um numero para a tabuada.');
        edtNum.SetFocus;
      end
        else
        begin
          for i := 0 to StrToInt(edtMult.Text) do
            begin
              meResult.Lines.Add(IntToStr(StrToInt(edtNum.Text)*i));
            end;
        end;
      edtNum.SetFocus;
      meResult.Clear;
  end;
  }

end.
