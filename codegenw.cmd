@echo off

REM Check if the Swagger Codegen JAR exists
if not exist ".\.codegen\swagger-codegen-cli.jar" (
    echo Error: swagger-codegen-cli.jar not found!
    echo Run the following command to install it:
    echo powershell -c "Invoke-WebRequest -Uri https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.62/swagger-codegen-cli-3.0.62.jar -OutFile .\.codegen\swagger-codegen-cli.jar"
    exit /b 1
)

REM Run the JAR with any passed arguments
java -jar .\.codegen\swagger-codegen-cli.jar %*
