# .zlogin

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin"
export PATH="$HOME/local/bin:$PATH"

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Go
export GOENV_ROOT="$HOME/.goenv"
export GOPATH="$HOME/go"
eval "$(goenv init -)"

# Python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
