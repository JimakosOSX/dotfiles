#!/usr/bin/env bash

# exit on error
set -e 

# Based on /var/lib/portage/world
packages=("app-admin/ansible" "app-admin/sudo" "app-admin/terraform" "app-containers/docker" "app-containers/docker-cli" "app-editors/emacs" "app-editors/neovim" "app-editors/vim" "app-editors/vscode" "app-emulation/libvirt" "app-emulation/qemu" "app-emulation/virt-manager" "app-misc/neofetch" "app-misc/screen" "app-misc/tmux" "app-portage/cpuid2cpuflags" "app-shells/fzf" "app-shells/zsh" "app-shells/zsh-syntax-highlighting" "dev-db/postgresql" "dev-python/pip" "dev-vcs/git" "games-misc/cowsay" "gnome-base/gnome" "gnome-base/gnome-shell" "mail-client/thunderbird-bin" "media-fonts/alee-fonts" "media-fonts/corefonts" "media-fonts/farsi-fonts" "media-fonts/fonts-meta" "media-fonts/lohit-bengali" "media-fonts/lohit-tamil" "media-fonts/mikachan-font-ttf" "media-fonts/noto-emoji" "media-fonts/thaifonts-scalable" "media-libs/libsndfile" "media-video/ffmpeg" "net-im/slack" "net-im/teams" "net-misc/chrony" "net-misc/teamviewer" "net-misc/zerotier" "net-p2p/qbittorrent" "net-vpn/networkmanager-openvpn" "sys-apps/exa" "sys-boot/grub" "sys-boot/os-prober" "sys-fs/btrfs-progs" "sys-fs/dosfstools" "sys-fs/ntfs3g" "sys-kernel/gentoo-kernel-bin" "sys-kernel/linux-firmware" "sys-process/at" "sys-process/cronie" "sys-process/htop" "www-client/firefox-bin" "www-client/links")

emerge --noreplace -a -t --unordered-display --quiet-build ${packages[@]}

echo Enjoy!
