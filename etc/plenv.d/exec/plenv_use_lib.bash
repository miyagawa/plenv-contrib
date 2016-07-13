#!/usr/bin/env bash
#
#

if [ -n "$PLENV_USE_LIB" ]; then
    local lib=${PLENV_VERSION}@${PLENV_USE_LIB}
    local local_lib=$PLENV_ROOT/libs/$lib

    if [ ! -d "$local_lib" ]; then

	echo "lib $lib doesn't exist. Create it first with 'PLENV_USE_LIB= plenv lib create $lib'"
	exit 1
    fi

    eval $($(plenv which perl) -Mlocal::lib -e 'local::lib->print_environment_vars_for(q['"$local_lib"'],(\$local::lib::VERSION > 1.008026) ? () : (0, local::lib->INTERPOLATE_ENV));')
fi
