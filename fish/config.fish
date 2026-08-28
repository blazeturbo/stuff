
 # Environment Variables

set -gx MOZ_ENABLE_WAYLAND 1


# Disable Fish Greeting

set -g fish_greeting ""


# Interactive Shell Setup

if status is-interactive

   # Launch Fastfetch on terminal startup

   fastfetch

end


# Initialize Starship Prompt

starship init fish | source


# Aliases

alias roblox='flatpak run --env=XDG_DATA_HOME="$HOME/.config/sober_main" org.vinegarhq.Sober'

alias vesktop='vesktop'

alias zen='zen-browser'

alias bye="qdbus6 org.kde.Shutdown /Shutdown org.kde.Shutdown.logout"

alias restartkde="plasmashell --replace &; disown"

alias shutdown="qdbus6 org.kde.Shutdown /Shutdown org.kde.Shutdown.logoutAndShutdown"

alias bios="systemctl reboot --firmware-setup"

fish_add_path /home/rad/.spicetify
