#!/bin/sh

dotnet test

rc=$?

if [[ $rc != 0 ]] ; then
    echo -e "test failed"
    exit $rc
fi

exit 0