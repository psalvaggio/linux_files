# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -f ${HOME}/.git_bash_functions ]; then
  source ${HOME}/.git_bash_functions
fi

alias cf="clang-format"

function git-clean-branches() {
  git fetch -p && \
  for branch in `git branch -vv | grep ': gone]' | awk '{print $1}'`; do \
    git branch -D $branch; \
  done
}

export PS1="\[\e[1;32m\][\[\e[1;93m\]\W\[\e[1;32m\]\`parse_git_branch\`]$\[\e[m\] "
export PATH=$PATH:$HOME/bin:$HOME/.local/bin
