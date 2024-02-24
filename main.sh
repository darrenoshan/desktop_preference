#!/usr/bin/bash
#------------------------

sudo sed -i /etc/vimrc -e "s/set hlsearch/set nohlsearch/g"
sudo timedatectl set-ntp true
sudo usermod -a -G wireshark "$USERNAME"
sudo usermod -a -G docker "$USERNAME"

# View current settings - gsettings list-recursively org.gnome.desktop.interface
# Font Settings
gsettings set org.gnome.desktop.interface document-font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface font-name 'Noto Sans 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrains Mono 12'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Noto Sans 11'

# Other Settings
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface clock-show-weekday true

# Enable window buttons
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# Set new windows centered
gsettings set org.gnome.mutter center-new-windows true

gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'

# file explorer
gsettings set org.gnome.nautilus.preferences show-create-link true
gsettings set org.gnome.nautilus.preferences show-delete-permanently true
gsettings set org.gtk.gtk4.Settings.FileChooser sort-directories-first true
gsettings set org.gtk.Settings.FileChooser sort-directories-first true

gsettings set org.gnome.shell favorite-apps "['org.gnome.Terminal.desktop', 'google-chrome.desktop', 'org.gnome.Nautilus.desktop', 'winbox.desktop', 'code.desktop', 'org.remmina.Remmina.desktop', 'xed.desktop', 'virtualbox.desktop', 'org.gnome.TextEditor.desktop', 'gnome-system-monitor.desktop', 'firefox.desktop', 'dbeaver-ce.desktop', 'org.gnome.Calendar.desktop', 'org.gnome.Calculator.desktop', 'org.gnome.Settings.desktop', 'org.gnome.Software.desktop']"

gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'ir')]"
gsettings set org.gnome.desktop.input-sources per-window true

gsettings set org.gnome.gnome-system-monitor current-tab 'resources'
gsettings set org.gnome.gnome-system-monitor cpu-stacked-area-chart true
gsettings set org.gnome.gnome-system-monitor graph-data-points 600
gsettings set org.gnome.gnome-system-monitor logarithmic-scale true
gsettings set org.gnome.gnome-system-monitor network-in-bits true
gsettings set org.gnome.gnome-system-monitor network-total-unit true 
gsettings set org.gnome.gnome-system-monitor update-interval 1000

gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-timeout 0
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'

profile="org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/"
gsettings set "$profile" "background-color" 'rgb(0,0,0)'
gsettings set "$profile" "default-size-columns" 220
gsettings set "$profile" "default-size-rows" 220
gsettings set "$profile" "font" 'Monospace 16'
gsettings set "$profile" "foreground-color" 'rgb(0,255,0)'
gsettings set "$profile" "use-system-font" false
gsettings set "$profile" "use-theme-colors" false

dconf write /org/gnome/shell/extensions/persian-calendar/widget-format "'%D %MM ماه %Y'"
dconf write /org/gnome/shell/extensions/persian-calendar/index "3"
dconf write /org/gnome/shell/extensions/persian-calendar/position "'center'"
