# Darkly — Custom Qt6 Application Style

This directory contains my customized build of [Darkly](https://github.com/Bali10050/Darkly), packaged as `ocean`.

The package includes the customized Darkly Qt6 style and its KDE integration. The `darklyrc` file contains my personal Darkly configuration.

## Requirements

* Arch Linux or an Arch-based distribution
* KDE Plasma
* Fish
* `base-devel`
* Qt6/KDE dependencies required by the PKGBUILD

## Installation

Open Konsole and enter the Darkly directory:

```fish
cd ~/Documents/VSPROJECTS/dot/darkly
```

Build and install the package:

```fish
makepkg -si
```

Install the Darkly configuration:

```fish
mkdir -p ~/.config
cp darklyrc ~/.config/darklyrc
```

Restart Qt applications after installation so they load the new style.

## Selecting Darkly

Open:

**System Settings → Colors & Themes → Application Style**

Select:

**Darkly**

Then apply the changes.

## Configuration

The custom configuration is stored at:

```text
~/.config/darklyrc
```

The repository copy is:

```text
darklyrc
```

If the configuration is changed, copy the updated file back into this directory so it can be preserved in the dotfiles repository.

## Updating

To rebuild the customized package after changing the source or PKGBUILD:

```fish
cd ~/Documents/VSPROJECTS/dot/darkly
makepkg -si
```

## Uninstalling

Remove the custom package with:

```fish
sudo pacman -R ocean
```

Then select another application style in KDE System Settings.

## Notes

This is a customized Darkly build rather than the standard `darkly-bin` package.

The package is named `ocean` to distinguish the customized build from the upstream Darkly packages.
