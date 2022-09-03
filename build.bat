@echo off
rem C:\DMC\dm\bin\sppn.exe

if not exist build (mkdir build)
copy .\include\raylib.dll .\build
copy .\include\raylibdll.lib .\build

pushd build

sppn ..\source\raylib.c
dmd -m64 -c ..\source\main.d raylib.i 
dmd main.obj raylib.obj raylibdll.lib -m64 -g

popd

IF "%~1"=="run" (
.\build\main.exe
)