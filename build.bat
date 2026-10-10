:: .NET Framework 4.5
msbuild "ZipExtractor\ZipExtractor.csproj" /p:TargetFramework=net472;Configuration=Release /verbosity:minimal
msbuild "AutoUpdater.NET\AutoUpdater.NET.csproj" /p:OutputPath=build\lib\net472;TargetFramework=net472;Configuration=Release /verbosity:minimal


:: .NET 8.0
dotnet publish --configuration Release --framework net8.0-windows "ZipExtractor\ZipExtractor.csproj" --output "AutoUpdater.NET\Resources"
dotnet publish --configuration Release --framework net8.0-windows "AutoUpdater.NET\AutoUpdater.NET.csproj" --output "AutoUpdater.NET\build\lib\net8.0-windows7.0"

:: .NET 8.0
dotnet publish --configuration Release --framework net10.0-windows "ZipExtractor\ZipExtractor.csproj" --output "AutoUpdater.NET\Resources"
dotnet publish --configuration Release --framework net10.0-windows "AutoUpdater.NET\AutoUpdater.NET.csproj" --output "AutoUpdater.NET\build\lib\net10.0-windows7.0"


:: Remove unnecessary files
Powershell.exe -ExecutionPolicy Bypass -NoLogo -NoProfile -Command "Remove-Item -path AutoUpdater.NET\build\lib\* -include runtimes,Microsoft.Web.WebView2*,AutoUpdater.NET.deps.json -Recurse"

:: Create NuGet package
nuget pack AutoUpdater.NET\build\Autoupdater.NET.Official.nuspec -Verbosity detailed -OutputDirectory C:\Debug\RunyLibs\Debug

pause