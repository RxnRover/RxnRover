@echo off
setLOCAL EnableDelayedExpansion

REM ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
REM Generate Documentation Script
REM
REM Author: Zachery Crandall
REM
REM Generate documentation for Reaction Rover using AntiDoc CLI and Sphinx.
REM
REM Usage (<> = required; [] = optional; comma-separated = equivalent flags):
REM build_docs.bat [-h,--help] [-s]
REM     -h, --help  Prints this usage statement.
REM     -s          Skip AntiDoc generation and only run Sphinx.
REM ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set PY=python
set PIP=pip
set REQFILE=requirements.txt
set VENV=venv
set VENVDIR=venv

REM Create full paths from relative paths.
REM Note: %~dp0 gets the absolute path.
set "PROJECT_PATH=%~dp0..\Reaction Rover.lvproj"
set "ADOC_PATH=%~dp0source\_static\api\index.adoc"

REM Command line flags
REM These flags are uninitialized, but become defined if the relevant flag is set.
set "HELP="

REM Parse command line options
:parse
if "%~1"==""               ( goto endparse ) else (
if "%~1"=="-h"             ( set HELP=1 ) else (
if "%~1"=="--help"         ( set HELP=1 ) else (
if "%~1"=="-s"             ( set SPHINX_ONLY=1 ) else (
echo Invalid argument^^! Argument received^: %~1
set HELP=1
))))
shift
goto parse
:endparse

REM Print the help statement and exit
if defined HELP (
    echo Usage (^<^> = required^; [] = optional^; comma-separated = equivalent flags^)^:
    echo build_docs.bat [-h,--help] [-s]
    echo     -h, --help  Prints this usage statement.
    echo     -s          Skip AntiDoc generation and only run Sphinx.
    goto :EOF
)

REM Skip to Sphinx if flag is set
if defined SPHINX_ONLY (
    echo Skipping to Sphinx documentation generation.
    goto sphinx
)

REM Generate static HTML with AntiDoc CLI
echo Generating project documentation with AntiDoc CLI...

g-cli --lv-ver 2020 Antidoc -- -pp "%PROJECT_PATH%" -t "Reaction Rover Documentation" -out "%ADOC_PATH%"

REM Convert asciidoc (*.adoc) file to HTML
echo Converting asciidoc ^(^*.adoc^) file to HTML using asciidoctor...

call asciidoctor -r asciidoctor-diagram/graphviz -b html5 "%ADOC_PATH%"


:sphinx

REM Check for virtual environment. Set it up if it does not exist.
if not exist %VENVDIR%\ (
    echo.Creating virtual environment...
    %PY% -m %VENV% %VENVDIR% && set VENV_SUCCESS=1 & set NEW_VENV=1
) else (
    set VENV_SUCCESS=1
)

if defined VENV_SUCCESS (
    echo.Activating virtual environment...
    call .\%VENVDIR%\Scripts\activate
) else (
    echo Virtual environment creation failed. Please make sure you have write permissions to the documentation directory.
    goto :EOF
)

if defined NEW_VENV (
    echo.Installing dependencies...
    %PY% -m %PIP% install -r %REQFILE%
)

REM Generate Sphinx documentation
echo Generating documentation with Sphinx...

call .\make.bat html

REM Pause if run from being double-clicked, so the user can see the output
if %0 == "%~0" pause