program Coder_and_decoder;

function translate(number: byte; shift: integer): byte;
begin
  translate := (((number - 97) + shift + 26) mod 26) + 97;
end;

function cipher(shift: integer; inputText: string): string;   
var
  number: byte;
  i: integer;
  symbol: char;
  outputSymbol: char;
  outletText: string;
begin
  i := 1;
  for i := 1 to length(inputText) do
  begin
    symbol := inputText[i];
    if symbol = ' ' then
      number := 32
    else
      number := translate(ord(symbol), shift);
    outputSymbol := chr(number);
    outletText := outletText + outputSymbol;
    cipher := outletText;
  end;
end;

procedure main();
var
  choose: integer;
  shift: integer;
  inputText, outletText: string;
begin
  writeln('Напишите кол-во смещений. ');
  readln(shift);
  writeln('Напишите текст. Пробелы будут заменятся другими символами.');
  readln(inputText);
  writeln('Зашифровать-1, Дешифровать-2.Только англ. алфавит.');
  readln(choose);
  if choose < 2 then
    outletText := cipher(shift, inputText)
  else
    outletText := cipher(-shift, inputText);
  writeln(outletText);
end;

begin
  main();
end.
