source ~/.config/zsh/aliases.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2022-08-30 08:26:17
export PATH="/Users/rizaldim/.local/bin:$PATH"

export PATH="/Users/rizaldim/Library/Python/3.10/bin:$PATH"
export PATH="/Users/rizaldim/Library/Python/3.11/bin:$PATH"
export PATH="/Users/rizaldim/Library/Android/sdk/platform-tools:$PATH"
export PATH="/Users/rizaldim/go/bin:$PATH"

complete -C '/usr/local/bin/aws_completer' aws

export VIMCONFIG=$HOME/.config/nvim
export VIMDATA=$HOME/.local/share/nvim
export FZF_DEFAULT_COMMAND='rg --files'


export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# So that compiler can find ruby
export LDFLAGS="-L/opt/homebrew/opt/ruby/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby/include"

eval "$(rbenv init - zsh)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rizaldim/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/rizaldim/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rizaldim/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/rizaldim/opt/google-cloud-sdk/completion.zsh.inc'; fi

# kubectl autocomplete
source <(kubectl completion zsh)

alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
