program Coder_and_decoder; 

procedure cipher;{���������� }   
var
  shift: integer;
  number: byte;
  i: integer;
  inputText: string;
  symbol: char;
  outletText: string;
begin
  writeln('�������� ���-�� ��������. ');
  readln(shift);
  writeln('�������� �����. ������� ����� ��������� ������� ���������.');
  readln(inputText);
  writeln('����==> ');
  i := 1;
  for i := 1 to length(inputText) do
  begin
    symbol := inputText[i];
    number := ord(symbol) + shift; 
    if number > 122 then
    begin
      write(chr(number - 26))       
    end
    else
      write(chr(number));
  end;
end;


procedure decipher;{���������� }
var
  shift: integer;
  number: byte;
  i: integer;
  inputText: string;
  symbol: char;
  outletText: string;
begin
  writeln('�������� ���-�� ��������.');
  readln(shift);
  writeln('�������� �����. ������� ����� ��������� ������� ���������.');
  readln(inputText);
  writeln('����==> ');
  i := 1;
  for i := 1 to length(inputText) do
  begin
    symbol := inputText[i];
    number := ord(symbol) - shift;
    if number < 97 then
    begin
      write(chr(number +26))
    end
    else
      write(chr(number));
  end;
end;

var
  symbol, outletText: char;
  choose: integer;

begin
  writeln('��������  ��� �� ������ �������, ����������� ( �������� 1) ��� ������������ (�������� 2 ) �����. ��������������� ������ ����. �������.');
  readln(choose);
  if (choose = 1) then
    cipher
  else decipher;
end.