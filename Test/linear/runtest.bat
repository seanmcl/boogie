@echo off
setlocal

set BGEXE=..\..\Binaries\Boogie.exe

for %%f in (list.bpl) do (
  echo.
  echo -------------------- %%f --------------------
  %BGEXE% %* /nologo /noinfer /typeEncoding:m /useArrayTheory /doModSetAnalysis %%f Maps.bpl
)

