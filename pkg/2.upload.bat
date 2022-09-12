
@for /f "tokens=1,2 delims==, " %%i in (setup.py) do @if "%%i"=="name" set namePart=%%j
@for /f "tokens=1,2 delims==, " %%i in (setup.py) do @if "%%i"=="version" set versionPart=%%j

set fname=dist/%namePart:~1,-1%-%versionPart:~1,-1%.tar.gz

IF EXIST %fname% (
	echo upload file, %fname%
	twine upload %fname%
) ELSE (
	echo !!! file not exists, %fname%
)

pause