#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
# vi text mode 
set -o vi

# Aliases
alias ls='ls --color=auto'
alias c='clear'
alias grep='grep --color=auto'
alias vim='nvim'
alias ..='cd ..'
alias pacman='sudo pacman'
alias ll='ls -la'
# git for dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
# git keys to keychain 
alias kgL='keychain --eval --quiet github_Landflier' 
alias kgD='keychain --eval --quiet Photoemission-doc-git' 
alias kgP='keychain --eval --quiet id_ed25519' 
# Pass aliases
alias pgL='pass github/personal/git_Landflier | xclip'
alias pgP='pass github/work/git_Photo | xclip' 
alias pgD='pass github/work/git_doc | xclip'
alias pmv='pass mail/gmail/vrad | xclip -selection clipboard'

# imec specific aliases
alias bjs='bundle exec jekyll serve --livereload'
alias cdweb='cd ~/Downloads/Internship_imec/yordan78.github.io/docs/'
alias cdpro='cd ~/Downloads/Internship_imec/Photoemission_analytical_model/'
# Colors for prompt
RESET="\[$(tput sgr0)\]"
GREEN="\[$(tput setaf 82)\]"
BLUE="\[$(tput setaf 69)\]"
MAGENTA="\[$(tput setaf 160)\]"
PS1="${GREEN}\u${RESET}@${BLUE}\w ${RESET}\$ "

# add tex to PATH
export PATH="${PATH}:/usr/local/texlive/2023/bin/x86_64-linux/"
# ruby and jekyll setup  
export PATH="${PATH}:~/.local/share/gem/ruby/3.0.0/bin"
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin" 
#add nvim as EDITOR
export EDITOR="/usr/bin/nvim"



eval $(keychain --eval --quiet --noask github_Landflier)
