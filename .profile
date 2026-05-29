
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
export GPG_TTY=$(tty)

# imagemagick
# export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
# export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
# export PATH=/usr/local/share/python:$PATH


local_python_dir=$(cd $(python3 -m pip show ifood-aws-login|sed -n "s/^Location: \(.*\)/\1/p;")/../../../bin; pwd)
export PATH=${local_python_dir}:${PATH}
[ -n  "${ZSH_VERSION}" ] && rehash && echo "export PATH=${local_python_dir}:\${PATH}" >> ~/.zshrc
[ -n "${BASH_VERSION}" ] && echo "export PATH=${local_python_dir}:\${PATH}" >> ~/.bashrc

# git completion
if [ -f ~/.git-completion.zsh ]; then
  . ~/.git-completion.zsh
fi

#sets up proper alias commands when called
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

export REQUESTER_TOKEN="eyJhbGciOiJFUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InBpcGUta2V5MDEifQ.eyJzdWIiOiJlZHVhcmRvLm1hdG9zQGlmb29kLmNvbS5iciIsImlhdCI6MTcxMzgwNTUwOCwiaXNzIjoiaUZvb2QtUGlwZWxpbmUiLCJlbnRpdHkiOiJ1c2VyIiwiZXhwIjoxNzEzODkxOTA4LCJyb2xlcyI6WyJEZXZlbG9wZXIvTG9jYWxDb21tZXJjZSIsIkRldmVsb3Blci9PcmRlckNvcmUiXX0.8NclRqnlqlf8ETri4VbtOyYbevW1xVJ8ktpJAntjg60eZE9P_tWBJKmLNKOnUDc-7IvtkYUCjiRYV_JMu9CgxQ"
