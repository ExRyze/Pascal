program read;

uses crt;

var
  f : TextFile;
  text: string;

begin
  clrscr;
  WriteLn('Isi file text.txt :');
  Assign(f, 'text.txt');
  Reset(f);
  while not EOF(f) do
  begin
    ReadLn(f, text);
    WriteLn(text);
  end;
  Close(f);
  readkey();
end.