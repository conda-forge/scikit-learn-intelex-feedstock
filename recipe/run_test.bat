@echo off

rem %1 - scikit-learn-intelex repo root (should end with '\', leave empty if it's %cd% / $PWD)

set exitcode=0

IF NOT DEFINED PYTHON (set "PYTHON=python")

%PYTHON% -c "from sklearnex import patch_sklearn; patch_sklearn()" || set exitcode=1

rem Note: execute with argument --json-report as second argument
rem in order to produce a JSON report under folder '.pytest_reports'.
set with_json_report=0
if "%~2"=="--json-report" (
    set with_json_report=1
    mkdir .pytest_reports
    del /q .pytest_reports\*.json
)

if "%with_json_report%"=="1" (
    %PYTHON% -m pytest --verbose -s %1tests --json-report --json-report-file=.pytest_reports\legacy_report.json || set exitcode=1
    pytest --verbose --pyargs daal4py --json-report --json-report-file=.pytest_reports\daal4py_report.json || set exitcode=1
    pytest --verbose --pyargs sklearnex --json-report --json-report-file=.pytest_reports\sklearnex_report.json || set exitcode=1
    pytest --verbose --pyargs onedal --json-report --json-report-file=.pytest_reports\onedal_report.json || set exitcode=1
    pytest --verbose %1.ci\scripts\test_global_patch.py --json-report --json-report-file=.pytest_reports\global_patching_report.json || set exitcode=1
    if NOT EXIST .pytest_reports\legacy_report.json (
        echo "Error: JSON report files failed to be produced."
        set exitcode=1
    )
) else (
    rem TODO: replace command below after 2025.1 release
    %PYTHON% -m unittest discover -v -s %1tests -p test*.py || set exitcode=1
    pytest --verbose --pyargs daal4py || set exitcode=1
    pytest --verbose --pyargs sklearnex || set exitcode=1
    pytest --verbose --pyargs onedal || set exitcode=1
    pytest --verbose %1.ci\scripts\test_global_patch.py || set exitcode=1
)

EXIT /B %exitcode%
