program DelphAiTests;
{

  Delphi DUnit-Testprojekt
  -------------------------
  Dieses Projekt enthält das DUnit-Test-Framework und die GUI/Konsolen-Test-Runner.
  Fügen Sie den Bedingungen in den Projektoptionen "CONSOLE_TESTRUNNER" hinzu,
  um den Konsolen-Test-Runner zu verwenden.  Ansonsten wird standardmäßig der
  GUI-Test-Runner verwendet.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  DUnitTestRunner,
  TestAI in 'TestAI.pas',
  AI.Neuron in '..\Source\AI.Neuron.pas',
  AI.Types in '..\Source\AI.Types.pas';

{$R *.RES}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

