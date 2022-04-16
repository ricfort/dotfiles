#                      _
#                     : \
#                     ;\ \_                   _
#                     ;@: ~:              _,-;@)
#                     ;@: ;~:          _,' _,'@;
#                     ;@;  ;~;      ,-'  _,@@@,'
#                    |@(     ;      ) ,-'@@@-;
#                    ;@;   |~~(   _/ /@@@@@@/
#                    \@\   ; _/ _/ /@@@@@@;~
#                     \@\   /  / ,'@@@,-'~
#                       \\  (  ) :@@(~
#                    ___ )-'~~~~`--/ ___
#                   (   `--_    _,--'   )
#                  (~`- ___ \  / ___ -'~)
#                 __~\_(   \_~~_/   )_/~__
# /\ /\ /\     ,-'~~~~~`-._ 0\/0 _,-'~~~~~`-.
#| |:  ::|    ;     ______ `----'  ______    :
#| `'  `'|    ;    {      \   ~   /      }   |
# \_   _/     `-._      ,-,' ~~  `.-.      _,'        |\
#   \ /_          `----' ,'       `, `----'           : \
#   |_( )                `-._/#\_,-'                  :  )
# ,-'  ~)           _,--./  (###)__                   :  :
# (~~~~_)          /       ; `-'   `--,               |  ;
# (~~~' )         ;       /@@@@@@.    `.              | /
# `.HH~;        ,-'  ,-   |@@@ @@@@.   `.             .')
#  `HH `.      ,'   /     |@@@@@ @@@@.  `.           / /(~)
#   HH   \_   ,'  _/`.    |@@@@@ @@@@@;  `.          ; (~~)
#   ~~`.   \_,'  /   ;   .@@@@@ @@@@@@;\_  \___      ; H~\)
#       \_     _/    `.  |@@@@@@ @@@@@;  \     `----'_HH[~)
#         \___/       `. :@@@@@ @@@@@@'   \__,------' HH ~
#        ______        ; |@@@@@@ @@@'                 HH
#      _)      \_,     ; :@@@@@@@@@;                  ~~
#    _;          \\   ,' |@@@@@@@@@:
#  ,'     ; :      \_,   :@@@@@@@@@@.
#  `.__,-'~~`._,-.  ,    :@@@@@@@@@@`.
#                 \/    /@@@@@@@@@@@@:
#                 /    ,@@@@@@@@@@@@@@.
#                |    ,@@@@@@@@@@@@@@@:
#                |    :@@@@@@@@@@@@@@@'
#                `.   \@@@@/  `@@@@@/(
#                  )   ~~~/    \~~~~  \
#                  :     /       \_    \
#                  (    /          \_   `.
#                  /   ;             \_  `.
#                 /   /                \  `.
#                /   /                  `.  \
#              ,'  ,'/~~)                ;  /
#              {   `'   (               /  /
#              `.___,-'  \             /  /
#                 __/     |           /  /
#                /        |           : :   __
#                :        |           ; : _;  )__
#                (  |  |  /          /  `,'  ~   )_
#                 `-:__;-'          :  ,'      ~~  ;
#                                  /          (_,--'
#                                 (       ,-'~~#


# Run road runner run
# Plugins {{{
# ==============================================================================

    # Load the Antibody plugin manager for zsh.
    source <(antibody init)

    # Setup required env var for oh-my-zsh plugins
    export ZSH="$(antibody home)/https-COLON--SLASH--SLASH-github.com-SLASH-robbyrussell-SLASH-oh-my-zsh"

    antibody bundle robbyrussell/oh-my-zsh
    antibody bundle robbyrussell/oh-my-zsh path:plugins/adb
    antibody bundle robbyrussell/oh-my-zsh path:plugins/bower
    antibody bundle robbyrussell/oh-my-zsh path:plugins/composer
    antibody bundle robbyrussell/oh-my-zsh path:plugins/cp
    antibody bundle robbyrussell/oh-my-zsh path:plugins/dnf
    antibody bundle robbyrussell/oh-my-zsh path:plugins/docker
    antibody bundle robbyrussell/oh-my-zsh path:plugins/docker-compose
    antibody bundle robbyrussell/oh-my-zsh path:plugins/git
    antibody bundle robbyrussell/oh-my-zsh path:plugins/git-flow
    antibody bundle robbyrussell/oh-my-zsh path:plugins/gpg-agent
    antibody bundle robbyrussell/oh-my-zsh path:plugins/gulp
    antibody bundle robbyrussell/oh-my-zsh path:plugins/httpie
    antibody bundle robbyrussell/oh-my-zsh path:plugins/jsontools
    antibody bundle robbyrussell/oh-my-zsh path:plugins/jump
    antibody bundle robbyrussell/oh-my-zsh path:plugins/nmap
    antibody bundle robbyrussell/oh-my-zsh path:plugins/npm
    antibody bundle robbyrussell/oh-my-zsh path:plugins/pass
    antibody bundle robbyrussell/oh-my-zsh path:plugins/rsync
    antibody bundle robbyrussell/oh-my-zsh path:plugins/ssh-agent
    antibody bundle robbyrussell/oh-my-zsh path:plugins/z

    # Other bundles
    antibody bundle sampson-chen/sack
    antibody bundle zsh-users/zsh-autosuggestions

    # This needs to be the last bundle.
    antibody bundle zsh-users/zsh-syntax-highlighting

    # Load the theme.
    # antibody bundle robbyrussell/oh-my-zsh path:themes/robbyrussell.zsh-theme
    antibody bundle dracula/zsh

# }}}

# Configuration {{{
# ==============================================================================

    HYPHEN_INSENSITIVE="true"
    ENABLE_CORRECTION="false"
    COMPLETION_WAITING_DOTS="true"
    HIST_STAMPS="yyyy-mm-dd"

    typeset -U path cdpath fpath

    # Vim mode
    bindkey -v
    export KEYTIMEOUT=1

    path=(
        $HOME/.local/bin
        $HOME/.bin
        $HOME/bin
        $HOME/.composer/vendor/bin
        $HOME/.go/bin
        ./vendor/bin
        $path
    )

    setopt auto_cd
    cdpath=(
        $HOME/Code
    )

    zstyle ':completion:*' group-name ''
    zstyle ':completion:*:descriptions' format %d
    zstyle ':completion:*:descriptions' format %B%d%b
    zstyle ':completion:*:complete:(cd|pushd):*' tag-order \
            'local-directories named-directories'

    export EDITOR='vim'
    export NVIM_LISTEN_ADDRESS='/tmp/nvimsocket'
    export FZF_DEFAULT_COMMAND='ag -u -g ""'

    unsetopt sharehistory

# }}}


# Aliases 

    # Git
    alias g="git"
    alias gs="git s"
    alias nah="git reset --hard;git clean -df"
    alias co="git checkout"

    # Docker
    alias d="docker"
    alias dc="docker-compose"
    alias dce="docker-compose exec"
    alias dcea="docker-compose exec app"
    dceas () {
        docker-compose exec app su app -c "$*"
    }

    # General
    alias vim="nvim"
    alias copy="xclip -selection clipboard"
    alias paste="xclip -o -selection clipboard"
    # Open vim with z argument
    v() {
      if [ -n "$1" ]; then
        z $1
      fi

      nvim
    }

    # cd() {
    #     cd $1 && eval ls
    # }
    # alias cd="cdls"
    open () {
        xdg-open $* > /dev/null 2>&1
    }

    if (( $+commands[tag] )); then
        tag() { command tag "$@"; source ${TAG_ALIAS_FILE:-/tmp/tag_aliases} 2>/dev/null }
        alias ag=tag
    fi

# }}}

# Interactive shell startup scripts {{{
# ==============================================================================

    if [[ $- == *i* && $0 == '/bin/zsh' ]]; then
        ~/.dotfiles/scripts/login.sh
    fi

# }}}

# vim: set nospell foldmethod=marker foldlevel=0:

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# WIP 

export PATH="$PATH:/opt/homebrew/bin/"
eval "$(starship init zsh)"
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/completion.zsh
# Initialize the completion system
autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/history.zsh
alias ls='ls -G'
source ~/.zsh/key-bindings.zsh

