program write;

var
  f : TextFile;

begin
  Assign(f, 'text.txt');
  ReWrite(f);
  WriteLn(f, 'Hello World!');
  Close(f);
end.
