# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc

## Starship for bash
eval "$(starship init bash)"

## others
## Set Maximum installed kernel to 1
# su -
# dnf -y remove --setopt installonly_limit=1 kernel
# dnf -y remove --setopt installonly_limit=1 kernel-core
### Install Starship
# curl -sS https://starship.rs/install.sh | sh
### Install usefull app
# sudo dnf install git gh lsd alacritty fastfetch mc
## Create vupress blog project
# npm init -D vuepress-theme-hope@(=version, see changelogs) /to/project/directory/
### Aliasing
alias rm="rm -rf"
alias ls="lsd -a"
alias extract-tar="tar -xvzf"
alias group-list="dnf group list --hidden"
alias group-info="dnf group info"
alias group-install="sudo dnf5 group install"
alias neofetch=fastfetch
alias pkg-update="dnf check-update"
alias pkg-upgrade="sudo dnf upgrade"
alias pkg-install="sudo dnf install"
alias pkg-remove="sudo dnf remove"
alias pkg-list-installed="dnf list installed"
alias pkg-search-installed="dnf list --installed | grep"
alias pkg-repo-list="dnf repolist all"
alias pkg-info="dnf info"
alias pkg-search="dnf search"
alias pkg-include="dnf provides"
alias pkg-reinstall="dnf reinstall"
alias pkg-autoremove="sudo dnf clean all;sudo dnf clean dbcache;sudo dnf clean expire-cache;sudo dnf clean metadata;sudo dnf clean packages;sudo dnf autoremove"
alias pkg-history="dnf history"
alias pkg-history-id="dnf history info"
alias dpkg-install="sudo rpm -i"
# Aliasing for git
alias git-user="git config --global user.name"
alias git-email="git config --global user.email"
alias git-commit-now="git commit --allow-empty-message -m ''"
