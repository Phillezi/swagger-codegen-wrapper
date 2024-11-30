#!/bin/sh

UNIX_URL="https://raw.githubusercontent.com/Phillezi/swagger-codegen-wrapper/main/codegenw"
WINDOWS_URL="https://raw.githubusercontent.com/Phillezi/swagger-codegen-wrapper/main/codegenw.cmd"
CODEGEN_CLI_URL="https://repo1.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.62/swagger-codegen-cli-3.0.62.jar"

CODEGEN_DIR="./.codegen"

CODEGEN_CLI_PATH="$CODEGEN_DIR/swagger-codegen-cli.jar"
UNIX_SCRIPT_PATH="codegenw"
WINDOWS_SCRIPT_PATH="codegenw.cmd"

echo "Downloading Unix wrapper script..."
curl -Lo "$UNIX_SCRIPT_PATH" "$UNIX_URL"

echo "Downloading Windows wrapper script..."
curl -Lo "$WINDOWS_SCRIPT_PATH" "$WINDOWS_URL"

mkdir -p "$CODEGEN_DIR"

echo "Downloading swagger-codegen-cli JAR file..."
curl -Lo "$CODEGEN_CLI_PATH" "$CODEGEN_CLI_URL"

echo "All files downloaded successfully!"
echo "try running:"
echo "./codegenw --help"
