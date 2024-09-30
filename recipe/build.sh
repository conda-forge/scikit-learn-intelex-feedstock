#!/bin/bash

if [ -z "${PYTHON}" ]; then
    export PYTHON=python
fi

if [ ! -z "${PKG_VERSION}" ]; then
    export SKLEARNEX_VERSION=$PKG_VERSION
fi

if [ -z "${DALROOT}" ]; then
    export DALROOT=${PREFIX}
fi

if [ -z "${MPIROOT}" ] && [ -z "${NO_DIST}" ]; then
    export MPIROOT=${PREFIX}
fi
# reset preferred compilers to avoid usage of icx/icpx by default in all cases
if [ ! -z "${CC_FOR_BUILD}" ] && [ ! -z "${CXX_FOR_BUILD}" ]; then
    export CC=$CC_FOR_BUILD
    export CXX=$CXX_FOR_BUILD
fi
# source compiler if DPCPPROOT is set outside of conda-build
if [ ! -z "${DPCPPROOT}" ]; then
    source ${DPCPPROOT}/env/vars.sh
fi

${PYTHON} setup.py install --single-version-externally-managed --record record.txt
