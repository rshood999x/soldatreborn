library soldatandroid;

{$mode delphi}

uses
  cthreads,
  cwstring,
  SysUtils,
  SDL2,
  Client in 'Client.pas';

function SDL_main(argc: Integer; argv: Pointer): Integer; cdecl;
var
  Msg: AnsiString;
begin
  DefaultSystemCodePage := CP_UTF8;
  Msg := '';
  try
    StartGame;
  except
    on E: Exception do
      Msg := AnsiString('WYJATEK: ') + AnsiString(E.ClassName) + ': ' + AnsiString(E.Message);
  end;
  if Msg = '' then
    Msg := 'StartGame zakonczyl sie bez bledu (gra zamknela sie sama)';
  SDL_ShowSimpleMessageBox(SDL_MESSAGEBOX_ERROR, 'Soldat debug', PAnsiChar(Msg), nil);
  Result := 0;
end;

exports
  SDL_main;

begin
end.
