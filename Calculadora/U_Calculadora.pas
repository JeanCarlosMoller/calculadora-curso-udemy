unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, System.Math.Vectors, FMX.Layouts,
  FMX.Controls3D, FMX.Layers3D, FMX.Edit;

type
  TForm1 = class(TForm)
    btn_1: TButton;
    btn_2: TButton;
    btn_3: TButton;
    btn_4: TButton;
    btn_5: TButton;
    btn_6: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_multiplicacao: TButton;
    btn_adicao: TButton;
    btn_subtracao: TButton;
    btn_ponto: TButton;
    btn_0: TButton;
    btn_igual: TButton;
    btn_divisao: TButton;
    caixa_botoes: TLayout;
    Layout1: TLayout;
    lb_operador: TLabel;
    lb_num1: TLabel;
    lb_num2: TLabel;
    btn_limpar: TButton;
    btn_c: TButton;
    btn_ce: TButton;
    procedure btn_subtracaoClick(Sender: TObject);
    procedure btn_multiplicacaoClick(Sender: TObject);
    procedure btn_adicaoClick(Sender: TObject);
    procedure btn_divisaoClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure btn_limparClick(Sender: TObject);
    procedure btn_2Click(Sender: TObject);
    procedure btn_3Click(Sender: TObject);
    procedure btn_4Click(Sender: TObject);
    procedure btn_5Click(Sender: TObject);
    procedure btn_6Click(Sender: TObject);
    procedure btn_7Click(Sender: TObject);
    procedure btn_8Click(Sender: TObject);
    procedure btn_9Click(Sender: TObject);
    procedure btn_0Click(Sender: TObject);
    procedure btn_pontoClick(Sender: TObject);
    procedure btn_cClick(Sender: TObject);
    procedure btn_ceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_0Click(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '0';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '0';
      end;
end;

procedure TForm1.btn_1Click(Sender: TObject);
begin

    if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '1';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '1';
      end;
end;

procedure TForm1.btn_2Click(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '2';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '2';
      end;
end;

procedure TForm1.btn_3Click(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '3';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '3';
      end;
end;

procedure TForm1.btn_4Click(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '4';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '4';
      end;
end;

procedure TForm1.btn_5Click(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '5';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '5';
      end;
end;

procedure TForm1.btn_6Click(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '6';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '6';
      end;
end;

procedure TForm1.btn_7Click(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '7';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '7';
      end;
end;

procedure TForm1.btn_8Click(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '8';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '8';
      end;
end;

procedure TForm1.btn_9Click(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + '9';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + '9';
      end;
end;

procedure TForm1.btn_adicaoClick(Sender: TObject);
begin

  lb_operador.Text := '+';
  btn_adicao.Enabled := false;
  btn_multiplicacao.Enabled := true;
  btn_subtracao.Enabled := true;
  btn_divisao.Enabled := true;



end;

procedure TForm1.btn_cClick(Sender: TObject);
begin

  lb_operador.Text := '';
  lb_num1.Text := '';
  lb_num2.Text := '';

  btn_divisao.Enabled := true;
  btn_multiplicacao.Enabled := true;
  btn_subtracao.Enabled := true;
  btn_adicao.Enabled := true;

end;

procedure TForm1.btn_ceClick(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := '';
      end
      else
      begin
         lb_num2.Text := '';
      end;
end;

procedure TForm1.btn_divisaoClick(Sender: TObject);
begin
  lb_operador.Text := '/';
  btn_divisao.Enabled := false;
  btn_multiplicacao.Enabled := true;
  btn_subtracao.Enabled := true;
  btn_adicao.Enabled := true;

end;

procedure TForm1.btn_igualClick(Sender: TObject);
  var n1, n2: double;
  var operador: Char;
begin

  n1 := strToFloat(lb_num1.Text);
  n2 := strToFloat(lb_num2.Text);

  //realizando a soma
  {if(lb_operador.Text = '+') Then
  Begin
    ShowMessage (FloatToStr(n1 + n2));
  end;

  //realizando a subtracao
  if(lb_operador.Text = '-') Then
  Begin
    ShowMessage (FloatToStr(n1 - n2));
  end;

  //realizando a multiplicacao
  if(lb_operador.Text = 'x') Then
  Begin
    ShowMessage (FloatToStr(n1 * n2));
  end;

    //realizando a divisao
  if(lb_operador.Text = '/') Then
  Begin
    ShowMessage (FloatToStr(n1 / n2));
  end;
   }

  //switch case
  operador := lb_operador.Text[1];
  case operador of
          '+' :
          begin
            ShowMessage (FloatToStr(n1 + n2));
          end;

          '-' :
          begin
            ShowMessage (FloatToStr(n1 + n2));
          end;

          'x' :
          begin
            ShowMessage (FloatToStr(n1 + n2));
          end;

          '/' :
          begin
            ShowMessage (FloatToStr(n1 + n2));
          end;
  end;

  lb_operador.Text := '';
  lb_num1.Text := '';
  lb_num2.Text := '';

  btn_divisao.Enabled := true;
  btn_multiplicacao.Enabled := true;
  btn_subtracao.Enabled := true;
  btn_adicao.Enabled := true;

end;

procedure TForm1.btn_limparClick(Sender: TObject);
begin
    if lb_operador.Text = '' then
      begin
       lb_num1.Text := copy (lb_num1.Text, 0, length(lb_num1.Text) -1);
      end
      else
      begin
        lb_num2.Text := copy (lb_num2.Text, 0, length(lb_num2.Text) -1);
      end;
end;

procedure TForm1.btn_multiplicacaoClick(Sender: TObject);
begin

  lb_operador.Text := 'x';
  btn_multiplicacao.Enabled := false;
  btn_subtracao.Enabled := true;
  btn_divisao.Enabled := true;
  btn_adicao.Enabled := true;


end;

procedure TForm1.btn_pontoClick(Sender: TObject);
begin
 if lb_operador.Text = '' then
      begin
       lb_num1.Text := lb_num1.Text + ',';
      end
      else
      begin
         lb_num2.Text := lb_num2.Text + ',';
      end;
end;

procedure TForm1.btn_subtracaoClick(Sender: TObject);
begin

  lb_operador.Text := '-';
  btn_subtracao.Enabled := false;
  btn_multiplicacao.Enabled := true;
  btn_divisao.Enabled := true;
  btn_adicao.Enabled := true;


end;

end.
