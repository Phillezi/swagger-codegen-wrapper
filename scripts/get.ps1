
$unixUrl = "https://raw.githubusercontent.com/Phillezi/swagger-codegen-wrapper/main/codegenw"
$windowsUrl = "https://raw.githubusercontent.com/Phillezi/swagger-codegen-wrapper/main/codegenw.cmd"
$codegenCliUrl = "https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.62/swagger-codegen-cli-3.0.62.jar"

$codegenCliPath = ".\.codegen\swagger-codegen-cli.jar"
$unixScriptPath = "codegenw"
$windowsScriptPath = "codegenw.cmd"

if (-not (Test-Path -Path ".\.codegen")) {
    New-Item -ItemType Directory -Force -Path ".\.codegen"
}

Write-Host "Downloading Unix wrapper script..."
Invoke-WebRequest -Uri $unixUrl -OutFile $unixScriptPath

Write-Host "Downloading Windows wrapper script..."
Invoke-WebRequest -Uri $windowsUrl -OutFile $windowsScriptPath

Write-Host "Downloading swagger-codegen-cli JAR file..."
Invoke-WebRequest -Uri $codegenCliUrl -OutFile $codegenCliPath

Write-Host "All files downloaded successfully!"
Write-Host "Try running:"
Write-Host "  .\$windowsScriptPath --help"
