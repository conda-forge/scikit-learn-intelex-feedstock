@echo off

rem %1% - scikit-learn-intelex repo root (leave empty if it's PWD)

set exitcode=0

IF NOT DEFINED PYTHON (set PYTHON="python")

%PYTHON% -c "from sklearnex import patch_sklearn; patch_sklearn()" || set exitcode=1

%PYTHON% -m pytest --verbose -s %1%tests || set exitcode=1

pytest --verbose --pyargs daal4py || set exitcode=1
pytest --verbose --pyargs sklearnex || set exitcode=1
pytest --verbose --pyargs onedal || set exitcode=1
pytest --verbose %1%.ci\scripts\test_global_patch.py || set exitcode=1
EXIT /B %exitcode%
