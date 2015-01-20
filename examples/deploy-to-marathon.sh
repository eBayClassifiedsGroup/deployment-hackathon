#!/bin/bash

usage() {
cat <<_END_
Usage:
	$0 -h marathon-host  json-file
_END_
}
while getopts ":h:" opt; do
  case $opt in
    h)
      host=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      usage >&2
      exit 1
      ;;
  esac
done
shift $((OPTIND-1))

json=$1

if [ -z "$host" ] ; then
	echo "missing host argument" >&2
	usage >&2
	exit 1
fi

if [ -z "$json" ] ; then
	echo "missing json file parameter" >&2
	usage >&2
	exit 1
fi


curl -X POST -H "Content-Type: application/json" http://$host:8080/v2/apps -d@$json
