# Swagger codegen wrapper

This repo contains wrapper scripts for the [`swagger-codegen`](https://github.com/swagger-api/swagger-codegen) cli.

## Prerequisites

You need `Java` > version 8 to run the swagger-codegen cli. 

### Linux / MacOS

To run the add scripts you will need `curl`.

## Install

To add the wrapper scripts to a project, run one of the following command. It will get the wrapper scripts and the [`swagger-codegen`](https://github.com/swagger-api/swagger-codegen) cli jar file.

### Linux / MacOS

```bash
curl -fsSL https://raw.githubusercontent.com/Phillezi/swagger-codegen-wrapper/main/scripts/get.sh | bash
```

See what the script does [here](/scripts/get.sh).

### Windows

```ps
powershell -c "irm https://raw.githubusercontent.com/Phillezi/swagger-codegen-wrapper/main/scripts/get.ps1 | iex"
```

See what the script does [here](/scripts/get.ps1).

## Usage

When added to the project run it like:

### Linux / MacOS

```bash
./codegenw <args>
```

Example:

```bash
./codegenw --help
```

### Windows

```ps
.\codegenw.cmd <args>
```

Example:

```ps
.\codegenw.cmd --help
```
