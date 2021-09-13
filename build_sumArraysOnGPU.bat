cd ./build/Debug
set "vcvarsdir=C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC"
@REM set "vcvarsdir=C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\VC\Auxiliary\Build"
pushd "%vcvarsdir%"
call vcvarsall.bat x64
popd
cmake.exe --build . --config Debug --target all -- -j 6 && exit || pause && exit
cd ../..