plugins=(zsh-autosuggestions git zsh-syntax-highlighting)

# There is a little bit of junk in this file. It is still under construction with moving stuff to zsh_profile.
export ZSH=$HOME/.oh-my-zsh
export XDG_CONFIG_HOME=$HOME/.config
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$HOME/Code/kotlin-language-server/server/build/install/server/bin
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh  # This needs to go away
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

# yabai --start-service
