
# load dev, but only if present and the shell is interactive
if [[ -f /opt/dev/dev.sh ]] && [[ $- == *i* ]]; then
  source /opt/dev/dev.sh
fi

alias pu='git add . ; git ci -m "automatic push" ; git push origin HEAD'
alias rb='git pull --rebase origin master ; git push origin HEAD -f'
