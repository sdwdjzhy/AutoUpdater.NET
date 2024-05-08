
C:\Users\jjiangz4\Downloads\nuget.exe install secure-file -ExcludeVersion
C:\Users\jjiangz4\Downloads\nuget.exe restore
"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" "%~dp0ZipExtractor\ZipExtractor.csproj" /p:TargetFramework=net40;Configuration=Release /verbosity:minimal
"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" "%~dp0AutoUpdater.NET\AutoUpdater.NET.csproj" /p:TargetFramework=net40;Configuration=Release /verbosity:minimal
"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" "%~dp0ZipExtractor\ZipExtractor.csproj" /p:TargetFramework=net45;Configuration=Release /verbosity:minimal
"C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" "%~dp0AutoUpdater.NET\AutoUpdater.NET.csproj" /p:TargetFramework=net45;Configuration=Release /verbosity:minimal
C:\Users\jjiangz4\Downloads\nuget.exe pack "%~dp0AutoUpdater.NET\build\Autoupdater.NET.Official.nuspec"