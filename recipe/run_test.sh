#!/bin/bash

sklex_root="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
count=3
while [[ count -ne 0 ]]; do
    if [[ -d $sklex_root/.ci/ && -d $sklex_root/examples/ && -d $sklex_root/tests/ && -d $sklex_root/daal4py/sklearn ]]; then
        break
    fi
    sklex_root="$( dirname "${sklex_root}" )"
    count=$(($count - 1))
done

if [[ count -eq 0 ]]; then
    echo "run_test.sh did not find the required testing directories"
    exit 1
fi

return_code=0

if [ -z "${PYTHON}" ]; then
    export PYTHON=python
fi

${PYTHON} -c "from sklearnex import patch_sklearn; patch_sklearn()"
return_code=$(($return_code + $?))

echo "NO_DIST=$NO_DIST"
if [[ ! $NO_DIST ]]; then
    echo "MPI pytest run"
    mpirun --version
    mpirun -n 4 pytest --verbose -s ${sklex_root}/tests/test*spmd*.py
    return_code=$(($return_code + $?))
fi

pytest --verbose -s ${sklex_root}/tests
return_code=$(($return_code + $?))

pytest --verbose --pyargs daal4py
return_code=$(($return_code + $?))

pytest --verbose --pyargs sklearnex
return_code=$(($return_code + $?))

pytest --verbose --pyargs onedal
return_code=$(($return_code + $?))

pytest --verbose -s ${sklex_root}/.ci/scripts/test_global_patch.py
return_code=$(($return_code + $?))

exit $return_code
