#source ~/.fancy-bash-promt.sh
alias pac=yay
alias btrmanager='pushd $HOME/.local/share/applications/ && gtk-launch buttermanager.desktop && popd'
#alias yay='doas pacmatic'
#alias sudo='doas'

# pacmatic needs to be run as root: https://github.com/keenerd/pacmatic/issues/35
alias pacmatic='sudo --preserve-env=pacman_program /usr/bin/pacmatic'

# Downgrade permissions as AUR helpers expect to be run as a non-root user. $UID is read-only in {ba,z}sh.
function yay --wraps pacman_program --description 'alias yay=pacman_program'
            pacman_program="sudo -u isa$UID /usr/bin/yay --pacman powerpill" pacmatic $argv
end

function spot --wraps spotify-tui_program --description 'little script for spotify tui'
	if not pgrep "spotifyd";
		spotifyd
	end
	
	spt
end

alias pls=sudo
alias gib=pac

set -gx PATH $PATH $HOME/bin
set -gx PATH /usr/bin/tizonia $PATH
set -gx PATH $PATH $HOME/.local/bin/
set -g theme_date_timezone America/Sao_Paulo
