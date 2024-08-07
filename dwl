#!/bin/bash
true>"$HOME/.dwl_startup_script_log"
exec >> "$HOME/.dwl_startup_script_log"
exec 2>&1

source ~/.profile

echo "running ssh-agent"
eval $(ssh-agent)

export MOZ_ENABLE_WAYLAND=1

dwl.exe -s "$HOME/.wayland_startup_script_post <&-" > "$HOME/.dwl_output.log" 2>&1
