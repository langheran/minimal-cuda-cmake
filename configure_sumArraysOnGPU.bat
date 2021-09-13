rd /s /q build
mkdir build
cd build
mkdir Debug
cd Debug
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\VC\vcvarsall.bat" x64
cmake.exe -G "Ninja" ../..
cd ../..
pause
exit