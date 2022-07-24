#
# https://www.gnu.org/software/bash/manual/html_node/Aliases.html
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
#
# Place all additions into a separate file like ~/.config/bash/bash_aliases instead of adding them in ~/.bashrc directly.
# Source the separate aliases file in ~/.bashrc as below
# [[ -e ~/.bash_aliases ]] && . ~/.bash_aliases
#
# Do below to use this setup
#
# mkdir -p ~/.config/bash/ && cd ~/.config/bash/
# mv -v .bash_aliases .bash_aliases_original
# wget https://raw.githubusercontent.com/andrewchelladurai/configs/master/.bash_aliases
# Restart existing bash terminal sessions for changes to take effect
#

# Upgrade system and remove unwanted packages, then uncomment the correct alias type to use.
# This is for debian based systems
# alias upgradesys='sudo pkcon refresh && sudo pkcon -y update ; sudo apt autoremove -y && sudo apt autoclean -y'
# This is for Arch based systems
# alias upgradesys='sudo pacman -Syyu ; sudo pacman -Qtdq | sudo pacman -Rns - ;'

# This below is used spcifically in BSPWM
# we first need to save profiles using autorandr for this to work
alias athommonoff='autorandr --change atHomeExternalNotConnected && sleep 3 && bspc wm -r'
alias athommonon='autorandr --change atHomeExternalConnected && sleep 3 && bspc wm -r'

# restart networkmanager service using system control
alias restartNMW='sudo systemctl restart network-manager'

# restart networkmanager service using nm's own utility
alias restartNMCli='nmcli networking off ; sleep 10 ; nmcli networking on'

# LibVrt (VirtualBox Guests) and KVM (Android Emulators) conflict and do not run together.
# Stop KVM emulation, by disabling the kernel module
alias kvmstop="sudo rmmod kvm_intel ; sudo rmmod kvm"

# Start KVM emulation, by enabling the kernel module
alias kvmstart="sudo insmod /lib/modules/$(uname -r)/kernel/arch/x86/kvm/kvm.ko ; sudo insmod /lib/modules/$(uname -r)/kernel/arch/x86/kvm/kvm-intel.ko"

# Map NeoVim to vi
alias v="nvim"

# Start nVim in Realonly mode when needed
alias vr="nvim -R"

# Make some possibly destructive commands more interactive.
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# Alias list of files to be readable and easy on the eyes.
alias ll='ls -larth --color=auto'
alias l='ls -Fa --color=auto'

# Make output of commands human readable & use colors
alias df="df -h"
alias du="du -h"
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Make directory navigation painless
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# Show open ports by default
alias showports='netstat -tulanp'

# Make wget start with continue option by default
alias wget='wget -c'

# Nordvpn related commands (QuickConnect and Disconnect)
alias vpnc="nordvpn c"
alias vpnd="nordvpn d"

# Scrcpy commands : https://github.com/Genymobile/scrcpy 
# Enable Screen Mirroring on when physical device screen is off
# https://github.com/Genymobile/scrcpy#turn-screen-off
alias scrcpy='scrcpy --turn-screen-off --stay-awake'
