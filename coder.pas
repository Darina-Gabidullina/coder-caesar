program Coder_and_decoder; 

procedure cipher;{Зашифровка }   
var
  shift: integer;
  number: byte;
  i: integer;
  inputText: string;
  symbol: char;
  outletText: string;
begin
  writeln('Напишите кол-во смещений. ');
  readln(shift);
  writeln('Напишите текст. Пробелы будут заменятся другими символами.');
  readln(inputText);
  writeln('Шифр==> ');
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


procedure decipher;{дешифровка }
var
  shift: integer;
  number: byte;
  i: integer;
  inputText: string;
  symbol: char;
  outletText: string;
begin
  writeln('Напишите кол-во смещений.');
  readln(shift);
  writeln('Напишите текст. Пробелы будут заменятся другими символами.');
  readln(inputText);
  writeln('Шифр==> ');
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
  writeln('Выберете  что вы хотите сделать, зашифровать ( напишите 1) или расшифровать (напишите 2 ) текст. Зашифровывается только англ. алфавит.');
  readln(choose);
  if (choose = 1) then
    cipher
  else decipher;
end.
