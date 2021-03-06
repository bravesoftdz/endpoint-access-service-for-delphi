unit uMyController;

interface
uses System.SysUtils,System.Classes, controller;

type
  MyController = class (TController)
  public
    function hello : String;
    function helloWithParam(param : String) : String;
  end;

implementation

function MyController.hello: String;
begin
  result := 'Hello!';
end;


function MyController.helloWithParam(param: String): String;
begin
  result := 'Hello '+param+'!';
end;

initialization
  RegisterClass(MyController);

finalization
  UnRegisterClass(MyController);
end.
