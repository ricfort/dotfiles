# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8
plugins=(zsh-autosuggestions git zsh-syntax-highlighting)


export ZSH=/Users/ricfort/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/Code/kotlin-language-server/server/build/install/server/bin
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh

plugins=(zsh-autosuggestions)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh_profile

export PATH=/opt/homebrew/bin:$PATH;
PATH="${PATH}:${HOME}/go/bin"
export JAVA_OPTS=-Xmx12g
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="true"
CASE_SENSITIVE="true"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export GITHUB_USERNAME=ricfort 

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(starship init zsh)"

yabai --start-service
