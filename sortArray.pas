program sortArray;

uses crt;

var 
  arr : array[1..10] of integer;
  i, j : integer;

const
  n : integer = 10;

procedure readArray;
begin
  for i:= 1 to n do
  begin
    write('Masukkan nilai array ke-',i,' = ');
    read(arr[i]);
  end;
end;

procedure writeArray;
begin
  write('Isi array = [');
  for i:= 1 to n do
  begin
    write(' ',arr[i],' ');
  end;
  write(']');
end;

function sortArray :boolean;
var
  tmp : integer;

begin
  sortArray := true;
  for i:= 1 to n do
    for j:= 1 to n-1 do
      begin
        if arr[j] > arr[j+1] then
        begin
          tmp := arr[j];
          arr[j] := arr[j+1];
          arr[j+1] := tmp;
          sortArray := false;
        end;
      end;
end;

begin
  clrscr;
  readArray();
  writeln();
  writeArray();
  writeln();
  if sortArray() = true then
    writeln('Array sudah terurut')
  else
    begin
      writeln('Pengurutan array dilakukan');
      writeArray();
    end;
  readkey();
end.