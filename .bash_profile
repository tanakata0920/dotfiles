# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

function nc_start() {
  touch /app/homes/unit/tanakata/NCApplication/src/app/homes_v5_pc/tmp/restart.txt;
  touch /app/homes/unit/tanakata/NCApplication/src/app/homes_v5_sp/tmp/restart.txt;
}
alias nc_start=nc_start
# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
export HISTSIZE=100000
