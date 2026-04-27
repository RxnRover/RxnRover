@ECHO off

:: Activate the virtual environment
call ..\venv\Scripts\activate.bat

:: Run the Python optimizer using the default "python" command *must be in PATH*
python "..\src\main.py" "..\config\default-config.json"

:: Deactivate the virtual environment when finished
call ..\venv\Scripts\deactivate.bat

:: Pause after the script is finished for debugging
IF "%1" == "DEBUG" (
    pause
)
