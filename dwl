#!/bin/bash
true>"$HOME/.dwl_startup_script_log"
exec >> "$HOME/.dwl_startup_script_log"
exec 2>&1

source ~/.profile

echo "running ssh-agent"
eval $(ssh-agent)

dwl.exe -s "$HOME/.wayland_startup_script_post <&-"
