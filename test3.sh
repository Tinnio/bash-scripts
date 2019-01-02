#!/bin/bash
#_jail_dir="${1:-/home/phpcgi}"
#echo "Setting php-cgi at ${_jail_dir}..."

#_jail_dir2="${1:-/test}"
#echo "Setting php-cgi at ${_jail_dir2}..."

#[ this -eq that ] && CMD="/bin/ls" || CMD="/bin/date"
#$CMD

#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [[ $EUID -ne 0 ]]; then
   echo "EUID  $EUID"
   echo "This script must be run as root" 1>&2
   exit 1
fi
# ...

ME=$(basename -s .sh $0)
echo $ME

ME=$(dirname $0)
echo $ME

fbname=$(basename $0 | cut -d. -f1)
echo $fbname
