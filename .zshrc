# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias start="startxfce4"
alias myrepo="cd ~/Documents/github-repositories"
alias workrepo="cd ~/Documents/gitlab-repositories"
alias myacc="myrepo && cat __workConfig/ist/openfortivpn/ist_nizar"

alias forti-riko="sudo openfortivpn -c ~/Documents/github-repositories/__workConfig/ist/openfortivpn/ist_riko"
alias forti-qomar="sudo openfortivpn -c ~/Documents/github-repositories/__workConfig/ist/openfortivpn/ist_qomar"
alias forti-ika="sudo openfortivpn -c ~/Documents/github-repositories/__workConfig/ist/openfortivpn/ist_ika"
alias forti-nizar="sudo openfortivpn -c ~/Documents/github-repositories/__workConfig/ist/openfortivpn/ist_nizar"
alias forti-enroll="sudo openfortivpn -c ~/Documents/github-repositories/__workConfig/ist/openfortivpn/btn_enroll"

alias ovpn-riko="sudo openvpn ~/Documents/github-repositories/__workConfig/ist/vpn/Riko_Orlando.ovpn"
alias ovpn-nizar="sudo openvpn ~/Documents/github-repositories/__workConfig/ist/vpn/ahmad_nizar.ovpn"

# REPOSITORIES
alias report="cd ~/Documents/gitlab-repositories/frontend-ibb-report"
alias report-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-report.git"
alias report-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-report.git"

alias other="cd ~/Documents/gitlab-repositories/frontend-ibb-others"
alias other-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-others.git"
alias other-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-others.git"

alias autocollection="cd ~/Documents/gitlab-repositories/frontend-ibb-auto-collection"
alias autocollection-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-auto-collection.git"
alias autocollection-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-auto-collection.git"

alias submission="cd ~/Documents/gitlab-repositories/frontend-ibb-submission"
alias submission-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-submission.git"
alias submission-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-submission.git"

alias service="cd ~/Documents/gitlab-repositories/frontend-ibb-services"
alias service-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-services.git"
alias service-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-services.git"

alias dashboard="cd ~/Documents/gitlab-repositories/frontend-ibb-dashboard"
alias dashboard-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-dashboard.git"
alias dashboard-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-dashboard.git"

alias information="cd ~/Documents/gitlab-repositories/frontend-ibb-information"
alias information-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-information.git"
alias informtion-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-information.git"

alias login="cd ~/Documents/gitlab-repositories/frontend-ibb-login"
alias login-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-login.git"
alias login-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-login.git"

alias payment="cd ~/Documents/gitlab-repositories/frontend-ibb-payment"
alias payment-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-payment.git"
alias payment-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-payment.git"

alias purchase="cd ~/Documents/gitlab-repositories/frontend-ibb-purchase"
alias purchase-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/frontend-ibb-purchase.git"
alias purchase-btn="git remote set-url origin https://code.okd.local/ibb/frontend-ibb-purchase.git"

alias scibb="cd ~/Documents/gitlab-repositories/sc-ibb"
alias scibb-dev="git remote set-url origin https://code.mylabzolution.com/digital-banking/sc-ibb.git"
alias scibb-btn="git remote set-url origin https://code.okd.local/ibb/sc-ibb.git"

alias brave-disable-security="brave --user-data-dir=/tmp/temporary-chrome-profile-dir --disable-web-security"

alias update-config="cp -rf ~/.zshrc ~/Documents/github-repositories/my-dotfiles/ && cp -rf ~/.tmux.conf ~/Documents/github-repositories/my-dotfiles/ && cp -rf ~/.config/alacritty/ ~/Documents/github-repositories/my-dotfiles/.config/ && cp -rf ~/.config/nvim/ ~/Documents/github-repositories/my-dotfiles/.config/"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
