# Gentoo zsh aliases and functions
# Usage is also described at https://github.com/robbyrussell/oh-my-zsh/wiki/Plugins

# Look for emerge, and add some useful functions if we have it.
if [[ -x `which eix` ]]; then
  alias es='eix-sync' # sync packges using eix
  alias eix.i="eix -I"
  alias eix.s="eix -S"
else
fi

alias em='sudo emerge'
alias emw='em -uavND world'
alias rdrb="sudo revdep-rebuild"
alias em.1="em --oneshot"
alias em.r="em --unmerge"
alias em.s="em --sync"
alias em.u="em --update"
alias em.dc="em --depclean"
alias em.i="em --info"
if [[ -x `which genkernel` ]]; then
    alias kern-update="zcat /proc/config.gz > .config && genkernel --menuconfig --no-clean all && emerge @module-rebuild"
fi
if [[ -x `which layman` ]]; then
  ## layman aliases
  alias layman.add="sudo layman --add"
  alias layman.del="sudo layman --delete"
  alias layman.info="sudo layman --info"
  alias layman.list="sudo layman --list"
  alias layman.sync="sudo layman --sync"
fi
