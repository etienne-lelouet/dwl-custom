#!/bin/sh
true>/tmp/dwl_logs
exec >> /tmp/dwl_logs
exec 2>&1

. ~/.profile

if [ -z "$XDG_SESSION_TYPE" ];
then
    export XDG_SESSION_TYPE="wayland"
fi

dwl.exe -s "$HOME/.xsessionrc <&-"
