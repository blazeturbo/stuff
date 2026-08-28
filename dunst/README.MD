# Dunst

Custom Dunst notification configuration.

## Requirements

* Arch Linux or an Arch-based distribution
* KDE Plasma
* Dunst
* Fish

## Installation

Install Dunst:

```fish
sudo pacman -S dunst
```

Copy the configuration from this repository:

```fish
mkdir -p ~/.config/dunst
cp dunst/dunstrc ~/.config/dunst/dunstrc
```

Enable and start Dunst:

```fish
systemctl --user enable --now dunst.service
```

Reload the configuration:

```fish
dunstctl reload
```

Test notifications:

```fish
notify-send "Dunst" "Dunst is working."
```

## Configuration

The configuration is stored at:

```text
~/.config/dunst/dunstrc
```

The repository copy is:

```text
dunst/dunstrc
```

After editing the configuration, reload Dunst:

```fish
dunstctl reload
```

## Current Configuration

### General

* Font: DM Mono 10
* Size: 360×120
* Position: top-right
* Offset: 18×18
* Corner radius: 12px
* Frame width: 1px
* Dark blue background
* Cyan/blue foreground and frame colors
* Left-side notification icons
* Notifications pause when hovered
* Normal notifications remain for 6 seconds
* Critical notifications remain until dismissed
* Duplicate notifications are stacked

### Urgency

Low, normal, and critical notifications use different frame/background colors and timeouts.

## Notification Manager

Dunst is configured as the notification daemon and owns:

```text
org.freedesktop.Notifications
```

Only one notification daemon should own this D-Bus service at a time.

SwayNC should not be started simultaneously with Dunst.

## Uninstall

Stop and disable Dunst:

```fish
systemctl --user disable --now dunst.service
```

Remove the configuration:

```fish
rm ~/.config/dunst/dunstrc
```

Remove Dunst:

```fish
sudo pacman -R dunst
```
