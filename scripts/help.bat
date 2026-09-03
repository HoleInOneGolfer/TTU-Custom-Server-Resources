@echo off
setlocal

set ROOT_DIR=%~dp0..

if "%~1"=="" goto help
if /I "%~1"=="help" goto help
if /I "%~1"=="tree" goto tree
if /I "%~1"=="package" goto package
if /I "%~1"=="validate-python" goto validate_python
if /I "%~1"=="validate-json" goto validate_json

echo Unknown command: %~1
exit /b 1

:help
echo Usage: scripts\help.bat ^<command^>
echo.
echo Commands:
echo   help             Show this help text
echo   tree             Print repository tree
echo   package          Build release zip artifacts using Git Bash
echo   validate-python  Validate mannequins Python script
echo   validate-json    Validate datapack/resourcepack JSON files
exit /b 0

:tree
where tree >nul 2>&1
if errorlevel 1 (
  echo 'tree' command not found.
  exit /b 1
)
tree "%ROOT_DIR%"
exit /b 0

:package
where bash >nul 2>&1
if errorlevel 1 (
  echo Git Bash is required for packaging on Windows.
  exit /b 1
)
bash "%ROOT_DIR%/scripts/package.sh"
exit /b %errorlevel%

:validate_python
where python >nul 2>&1
if errorlevel 1 (
  echo Python is required.
  exit /b 1
)
python -m py_compile "%ROOT_DIR%\datapack\data\mannequins\main.py"
exit /b %errorlevel%

:validate_json
where python >nul 2>&1
if errorlevel 1 (
  echo Python is required.
  exit /b 1
)
python -c "import json,pathlib;root=pathlib.Path(r'%ROOT_DIR%');paths=sorted(list(root.glob('datapack/**/*.json'))+list(root.glob('resourcepack/**/*.json'))+list(root.glob('datapack/**/*.mcmeta'))+list(root.glob('resourcepack/**/*.mcmeta')));[json.load(p.open('r',encoding='utf-8')) for p in paths];print(f'Validated {len(paths)} JSON/mcmeta files')"
exit /b %errorlevel%
