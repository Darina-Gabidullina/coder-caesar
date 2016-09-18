program Coder_and_decoder;

function cipher(shift1: integer; inputText1: string): string;{Зашифровка }   
var
  number: byte;
  i: integer;
  symbol1: char;
  outputSymbol: char;
  outletText1: string;
  justNumber: char;
begin
  writeln('Шифр==> ');
  i := 1;
  for i := 1 to length(inputText1) do
  begin
    symbol1 := inputText1[i];
    number := (((ord(symbol1) + shift1) - 18) mod 26) + 96; 
    outputSymbol := chr(number);
    outletText1 := outletText1 + outputSymbol;
    cipher := outletText1;
  end;
end;

function decipher(shift1: integer; inputText1: string): string;{Зашифровка }   
var
  number: byte;
  i: integer;
  symbol1: char;
  outputSymbol: char;
  outletText1: string;
  justNumber: char;
begin
  writeln('Шифр==> ');
  i := 1;
  for i := 1 to length(inputText1) do
  begin
    symbol1 := inputText1[i];
    number := (((ord(symbol1) - shift1) - 19) mod 26) + 97; 
    outputSymbol := chr(number);
    outletText1 := outletText1 + outputSymbol;
    decipher := outletText1;
  end;
end;


var
  symbol: char;
  choose: integer;
  shift: integer;
  inputText, outletText: string;

begin
  writeln('Напишите кол-во смещений. ');
  readln(shift);
  writeln('Напишите текст. Пробелы будут заменятся другими символами.');
  readln(inputText);
  writeln('Зашифровать-1, Расшифровать-2.Только англ. алфавит.');
  readln(choose);
  if choose<2 then
  outletText := cipher(shift, inputText)
   else
   outletText := decipher(shift, inputText );
  writeln(outletText);
end.