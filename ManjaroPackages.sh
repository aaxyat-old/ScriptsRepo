#!/bin/sh
sudo pacman-mirrors -f 50 &&
wget https://raw.githubusercontent.com/aaxyat/ScriptsRepo/main/pacman.conf &&
sudo mv pacman.conf /etc/pacman.conf &&
sudo pacman -S --needed  git base-devel yay && 
mkdir -p ~/Documents/git/ &&
cd ~/Documents/git/ &&
if cd ScriptsRepo; then echo "Repo Exists"; else git clone https://github.com/aaxyat/ScriptsRepo.git; fi &&
cp ScriptsRepo/wall.jpg ~/Pictures/wall.jpg &&
cp ScriptsRepo/lock.jpg ~/Pictures/lock.jpg &&
yay -S --noconfirm paru &&
paru -Syu --sudoloop --noconfirm --needed acpi acpid adobe-source-han-sans-cn-fonts adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts adobe-source-sans-fonts alacarte android-tools appimagelauncher autoconf automake b43-fwcutter baobab bison bluemail bmenu btrfsmaintenance caffeine-ng caprine cheese dconf-editor deja-dup discord-canary ecryptfs-utils firefox-gnome-theme-maia flex fragments gdm-plymouth geary glibc-locales gnome-appfolders-manager gnome-backgrounds gnome-boxes gnome-calculator gnome-calendar gnome-characters gnome-chess gnome-clocks gnome-contacts gnome-firmware gnome-font-viewer gnome-logs gnome-mines gnome-shell-extension-gnome-ui-tune gnome-shell-extension-gsconnect gnome-shell-extension-x11gestures gnome-system-monitor gnome-todo gnome-user-docs gnome-weather go google-chrome gparted grub-theme-manjaro gthumb gtkhash-nautilus gtksourceview-pkgbuild gufw heroic-games-launcher-bin htop iagno ibus inetutils intel-ucode iputils joindesktop-bin kvantum licenses lollypop make man-db man-pages manjaro-alsa manjaro-artwork manjaro-documentation-en manjaro-dynamic-wallpaper manjaro-firmware manjaro-gnome-extension-settings manjaro-gstreamer manjaro-hello manjaro-input manjaro-log-helper manjaro-printer manjaro-pulse manjaro-release manjaro-system manjaro-zsh-config memtest86+ mkinitcpio-openswap mousetweaks mpv nano-syntax-highlighting nautilus-admin nautilus-empty-file neofetch nerd-fonts-fira-code network-manager-sstp networkmanager-openconnect networkmanager-openvpn networkmanager-pptp networkmanager-strongswan networkmanager-vpnc nextcloud-client nfs-utils noto-fonts-compat ntp numlockx onlyoffice-desktopeditors papirus-maia-icon-theme patch pkgconf plymouth-theme-manjaro polkit-gnome pycharm-professional quadrapassel rclone sassc spectre-meltdown-checker starship steam-manjaro sushi systemd-fsck-silent telegram-desktop termius timeshift-autosnap-manjaro totem ttf-inconsolata ttf-indic-otf vi viber vino visual-studio-code-bin wallpapers-2018 wallpapers-juhraya webapp-manager webstorm xdg-user-dirs-gtk xdman xf86-video-amdgpu xf86-video-ati xf86-video-intel xf86-video-nouveau xorg-mkfontscale xorg-xinit  m4 make autoconf pkgconf gcc flex automake gc guile go google-chrome telegram-desktop pycharm-professional webstorm visual-studio-code-bin rclone yt-dlp mpv nodejs npm libreoffice-fresh ttf-ms-fonts nerd-fonts-fira-code kvantum-qt5 fish viber nextcloud-client starship bluemail onlyoffice mpv gitkraken &&
sudo pacman -R --noconfirm yay &&
cd ~/Documents/git/ &&
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme theme &&
git clone https://github.com/vinceliuice/WhiteSur-icon-theme icon &&
git clone https://github.com/vinceliuice/WhiteSur-cursors cursor &&
bash theme/install.sh &&
sudo bash theme/tweaks.sh -d -g -b ~/Pictures/lock.jpg &&
bash icon/install.sh &&
bash cursor/install.sh
