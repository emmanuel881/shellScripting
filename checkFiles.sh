#!/usr/bin/bash

function usage() {
	echo "You need to provide a argument"
	echo "usage : $0 file_name"
}
function is_file_exist() {
	local file="$1"
	[[ -f "$file" ]] && return 0 || return 1
}

[[ $# -eq 0 ]] && usage

if ( is_file_exist "$1" )
then
	echo "file exist"
else
	echo "file does not exist"
fi

