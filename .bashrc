# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
alias t='cd /app/homes/unit/tanakata/'
alias ncl='tail -f /usr/local/nginx/logs/error.log'
