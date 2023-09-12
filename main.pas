program lab1;

const
  SEMILLADJB = 1;
  PASODJB = 2;
  NDJB = 1000;

type
  Natural = 0..maxint;

procedure readAndHashLn(semilla, paso, N: Natural; var codigo: Natural);
var
  entrada: string;
  i: integer;
begin
  readln(entrada);
  codigo := semilla;
  for i := 1 to length(entrada) do
  begin
    codigo := codigo * paso + ord(entrada[i]);
    codigo := codigo mod N;
  end;
end;

procedure writeFallo(codigo: Natural);
begin
  writeln('Intento de login fallido (', codigo, ' de 3)');
end;

procedure login(codigo: Natural; intentos: integer; var ok: boolean);
var
  i: integer;
  entrada: string;
  hash: Natural;
begin
  ok := false;
  for i := 1 to intentos do
  begin
    writeln('Ingrese su contraseña, tiene hasta ', intentos, ' intentos.');
    readAndHashLn(SEMILLADJB, PASODJB, NDJB, hash);
    if hash = codigo then
    begin
      ok := true;
      writeln('Login realizado correctamente.');
      exit;
    end
    else
    begin
      writeFallo(i);
    end;
  end;
  writeln('Fuera de aquí!');
end;

var
  codigo: Natural;
  ok: boolean;

begin
  writeln('Registro de Usuario');
  writeln('Ingrese su contraseña:');
  readAndHashLn(SEMILLADJB, PASODJB, NDJB, codigo);
  writeln('Hash:', codigo);
  writeln('Login de Usuario');
  login(codigo, 3, ok);
end.
