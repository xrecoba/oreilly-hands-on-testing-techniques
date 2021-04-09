https://stryker-mutator.io/docs/stryker-net/Configuration

'dotnet stryker' from tests.csproj folder.

Rationale:
* Mutator will find that changing error message on first exception leaves one survivor. Also, since there's no test checking second exception it will ignore mutating the second's exception message, as that would surely survive.
* Given this information, work from here :-)