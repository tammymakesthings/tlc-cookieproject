#!/bin/sh
if [ "${1#-}" != "$1" ]; then
	set -- /opt/sbcl/bin/sbcl "$@"
fi
exec "$@"
