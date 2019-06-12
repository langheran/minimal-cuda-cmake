rd /s /q build
mkdir build
cd build
mkdir Debug
cd Debug
cmake.exe -G "Ninja" ../..
cd ../..
pause
exit