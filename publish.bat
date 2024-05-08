
rem C:\Users\jjiangz4\Downloads\nuget.exe install secure-file -ExcludeVersion
rem C:\Users\jjiangz4\Downloads\nuget.exe restore
rem "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" "%~dp0ZipExtractor\ZipExtractor.csproj" /p:TargetFramework=net40;Configuration=Debug /verbosity:minimal
rem "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" "%~dp0AutoUpdater.NET\AutoUpdater.NET.csproj" /p:TargetFramework=net40;Configuration=Debug /verbosity:minimal
rem "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" "%~dp0ZipExtractor\ZipExtractor.csproj" /p:TargetFramework=net45;Configuration=Debug /verbosity:minimal
rem "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" "%~dp0AutoUpdater.NET\AutoUpdater.NET.csproj" /p:TargetFramework=net45;Configuration=Debug /verbosity:minimal
rem C:\Users\jjiangz4\Downloads\nuget.exe pack "%~dp0AutoUpdater.NET\build\Autoupdater.NET.Official.nuspec"
move "%~dp0*.nupkg" C:\Debug\RunyLibs\Debug\