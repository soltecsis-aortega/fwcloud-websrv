#!/bin/sh
#############################################
##                                         ##
##  FWCloud.net                            ##
##  https://fwcloud.net                    ##
##  info@fwcloud.net                       ##
##                                         ##
##  Developed by SOLTECSIS, S.L.           ##
##  https://soltecsis.com                  ##
##  info@soltecsis.com                     ##
##                                         ##
#############################################

RDIR="/opt/fwcloud"

# If /opt/fwcloud dir is empty, remove it and remove fwcloud user and group.
if [ -d "$RDIR" ]; then
    rm -rf "${RDIR}/ui"
    rm -rf "${RDIR}/websrv"

  if [ ! "$(ls -A $RDIR)" ]; then # Root directory is empty.
    rmdir "$RDIR"

    userdel fwcloud 2>/dev/null
    groupdel fwcloud 2>/dev/null
  fi
fi

exit 0
