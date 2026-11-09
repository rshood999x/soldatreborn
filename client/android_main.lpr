library soldatandroid;

{$mode delphi}

uses
  cthreads,
  cwstring,
  SysUtils,
  Client in 'Client.pas';

function SDL_main(argc: Integer; argv: Pointer): Integer; cdecl;
begin
  DefaultSystemCodePage := CP_UTF8;
  StartGame;
  Result := 0;
end;

exports
  SDL_main;

begin
end.
