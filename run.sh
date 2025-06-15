#!/usr/bin/env sh

export TODESK_PACK_NAME=todesk
TODESK_PATH=/app/$TODESK_PACK_NAME
TODESK_BIN_PATH=$TODESK_PATH/bin
TODESK_CONF_PATH=$XDG_CONFIG_HOME


# 后台
$TODESK_BIN_PATH/todeskc $TODESK_BIN_PATH/todeskd $TODESK_CONF_PATH/todeskd.conf
/app/todesk/bin/todeskd -f $XDG_CONFIG_HOME/todeskd.conf &

# 前台
sleep 4
$TODESK_BIN_PATH/todesk
pkill todeskd
exit
