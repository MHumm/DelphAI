{*****************************************************************************
  The DelphAI team (see file NOTICE.txt) licenses this file
  to you under the Apache License, Version 2.0 (the
  "License"); you may not use this file except in compliance
  with the License. A copy of this licence is found in the root directory
  of this project in the file LICENCE.txt or alternatively at

    http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing,
  software distributed under the License is distributed on an
  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
  KIND, either express or implied.  See the License for the
  specific language governing permissions and limitations
  under the License.
*****************************************************************************}
unit TestAI;

interface

uses
  TestFramework, AI.Neuron, AI.Types;

type
  // Testmethoden für Klasse TNeuron

  TestTNeuron = class(TTestCase)
  strict private
    FNeuron: TNeuron;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure TestGetNumber;
  end;

implementation

procedure TestTNeuron.SetUp;
begin
  FNeuron := TNeuron.Create;
end;

procedure TestTNeuron.TearDown;
begin
  FNeuron.Free;
  FNeuron := nil;
end;

procedure TestTNeuron.TestGetNumber;
var
  ReturnValue: Integer;
begin
  ReturnValue := FNeuron.GetNumber;
  CheckEquals(42, ReturnValue, 'Wer hat denn das vergurkt? ;-) ');
end;

initialization
  // Alle Testfälle beim Testprogramm registrieren
  RegisterTest(TestTNeuron.Suite);
end.

