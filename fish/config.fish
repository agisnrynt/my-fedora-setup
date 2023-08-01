if status is-interactive
    # Commands to run in interactive sessions can go here
    #
    ### Install Starship
    # curl -sS https://starship.rs/install.sh | sh
    ### Install usefull app
    # sudo dnf install gh lsd alacritty   
    ### Starship fish config
    starship init fish | source
    set fish_greeting ""
    ### Semi permanent fish $PATH
    source .fishrc
    #
    ### Setting maximum installed kernel installed limit in /etc/dnf.conf
    # [main]
    # gpgcheck=1
    # installonly_limit=2
    # clean_requirements_on_remove=True
    #
    ### Aliasing
    alias ls=lsd
    alias pkg-update="dnf check-update"
    alias pkg-upgrade="sudo dnf upgrade"
    alias pkg-install="sudo dnf install"
    alias pkg-remove="sudo dnf remove"
    alias pkg-list-installed="dnf list installed"
    alias pkg-list-available="dnf list available"
    alias pkg-repo-list="dnf repolist all"
    alias pkg-info="dnf info"
    alias pkg-search="dnf search"
    alias pkg-include="dnf provides"
    alias pkg-reinstall="dnf reinstall"
    alias pkg-autoremove="sudo dnf clean all;sudo dnf clean dbcache;sudo dnf clean expire-cache;sudo dnf clean metadata;sudo dnf clean packages;sudo dnf autoremove"
    alias pkg-history="dnf history"
    alias pkg-history-id="dnf history info"
    alias dpkg-install="sudo dnf localinstall"
    # Aliasing for git
    alias git-uname="--global user.name"
    alias git-email="--global user.email"
    alias commit-now="commit --allow-empty-message -m ''"
end
