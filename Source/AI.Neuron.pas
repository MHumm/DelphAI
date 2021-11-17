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
unit AI.Neuron;

interface

uses
  AI.Types;

type
  /// <summary>
  ///   Abstract base class for neurons
  /// </summary>
  TBaseNeuron = class(TObject)
  strict private
  strict protected
  public
  end;

  /// <summary>
  ///   A concrete implementation of a neuron
  /// </summary>
  TNeuron = class(TBaseNeuron)
  strict private
  strict protected
  public
    function GetNumber:Integer;
  end;

implementation

{ TNeuron }

function TNeuron.GetNumber: Integer;
begin
  // Just to be able to generate a DUnit skeleton
  Result := 42;
end;

end.
