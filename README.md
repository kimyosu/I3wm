# i3wm Dotfiles

A personal i3wm setup with **Nord** and **Black & White** themes.

## Programs

- i3wm
- Polybar
- Rofi
- Kitty
- Neovim
- Picom
- Variety
- Flameshot
- Starship

## Power Menu

Copy the Rofi themes:
```bash
sudo mkdir -p /usr/share/rofi/themes
sudo cp .config/powermenu/themes/* /usr/share/rofi/themes/
```

Install the required fonts:
```bash
mkdir -p ~/.local/share/fonts
cp .config/powermenu/fonts/* ~/.local/share/fonts/
fc-cache -fv
```

## Credits

The power menu was based on [rofi-presents](https://github.com/SapuSeven/rofi-presets)
