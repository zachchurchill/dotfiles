# Utilize Homebrew's OpenSSL
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"

# Set OpenJDK first in path
export PATH="/usr/local/opt/openjdk/bin:$PATH"

# Default to Python 3.8 (instead of using system Python)
export PATH="/usr/local/opt/python@3.8/bin:$PATH"

# Use newer version of vim
export PATH="/usr/local/Cellar/vim/8.2.0654/bin:$PATH"

# Use GNU grep
export PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

# Customize terminal prompt
source "/usr/local/opt/zsh-git-prompt/zshrc.sh"
PROMPT='%B%F{blue}%1~%f%b $(git_super_status) %# '

# Load and enable Git completion
zstyle ':completion:*:*:git:*' script $(brew --prefix git)/share/zsh/site-functions/git-completion.bash
fpath=(~/.zsh $fpath)
autoload -Uz compinit && compinit

# Initialize shell for pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Function to make checking SHA-256 checksums easier
function check256sum() {
  if [[ "$#" -ne 2 ]] ; then
    echo 'usage: check256sum <file> <SHA256sum>'
    return 1
  fi

  echo 'calculating SHA256sum for given file...'
  actual=$(shasum -a 256 "$1" | cut -d' ' -f1)
  if [[ "$actual" == "$2" ]] ; then
    echo 'good'
    return 0
  else
    echo "error: expecting $2; received $actual"
    return 1
  fi
}

# Alias for mongodb
alias mongo=/usr/local/Cellar/mongodb-community@4.2/4.2.9/bin/mongo
alias mongod=/usr/local/Cellar/mongodb-community@4.2/4.2.9/bin/mongod

# For Tcl-Tk
echo 'export PATH="/usr/local/opt/tcl-tk/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/usr/local/opt/tcl-tk/lib"
export CPPFLAGS="-I/usr/local/opt/tcl-tk/include"
export PKG_CONFIG_PATH="/usr/local/opt/tcl-tk/lib/pkgconfig"
export PATH="/usr/local/opt/tcl-tk/bin:$PATH"
