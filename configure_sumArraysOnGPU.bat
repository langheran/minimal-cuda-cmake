rd /s /q build
mkdir build
cd build
mkdir Debug
cd Debug
set "vcvarsdir=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC"
@REM set "vcvarsdir=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build"
pushd "%vcvarsdir%"
call vcvarsall.bat x64
popd
@REM cmake.exe -G "Visual Studio 16 2019" -A "x64" ../..
cmake.exe -G "Ninja" ../..
cd ../..
pause
exit