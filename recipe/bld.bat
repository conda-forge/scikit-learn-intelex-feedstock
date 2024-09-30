@echo off

IF NOT DEFINED PYTHON (set PYTHON="python")
IF DEFINED PKG_VERSION (set SKLEARNEX_VERSION=%PKG_VERSION%)
IF NOT DEFINED DALROOT (set DALROOT=%PREFIX%)
IF NOT DEFINED MPIROOT IF "%NO_DIST%"=="" (set MPIROOT=%PREFIX%\Library)

rem reset preferred compilers to avoid usage of icx/icpx by default in all cases
set CC=cl.exe
set CXX=cl.exe

rem source compiler if DPCPPROOT is set outside of conda-build
IF DEFINED DPCPPROOT (
    echo "Sourcing DPCPPROOT"
    call "%DPCPPROOT%\env\vars.bat"
)

%PYTHON% setup.py install --single-version-externally-managed --record record.txt
