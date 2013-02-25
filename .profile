#ack alias for macports
alias ack='ack-5.12'

#ll alias
alias ll='ls -laG'
alias ls='ls -G'

#MacVim alias
alias vim='mvim -v'

#general
PATH=/usr/local/bin:/usr/local/sbin:$PATH

#betterment java path
JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

#for mongrel/tomcat with eclipse (betterment)
CATALINA_HOME=/Developer/apache-tomcat-6.0.35

#subversion path
PATH=$PATH:/opt/subversion/bin

#mysql path
PATH=$PATH:/usr/local/mysql/bin:/usr/local/oracle/instantclient_10_2

# appropriate PATH variable for use with MacPorts.
PATH=/opt/local/bin:/opt/local/sbin:$PATH
DYLD_LIBRARY_PATH=/Library/Java/lib/:/opt/local/lib:/usr/lib:.:$DYLD_LIBRARY_PATH

# Load RVM function
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

#subversion with apache
DYLD_LIBRARY_PATH=/opt/subversion/lib:$DYLD_LIBRARY_PATH

#oracle instant client
DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:/usr/local/oracle/instantclient_10_2
TNS_ADMIN=/usr/local/oracle/instantclient_10_2
SQLPATH=$SQLPATH:/usr/local/oracle/instantclient_10_2

#flash builder
export FLEX_HOME='/Applications/Adobe Flash Builder 4/sdks/3.5.0.12683B'
export RSL_VERSION=3.5.0.21474

#autojump
if [ -f /opt/local/etc/profile.d/autojump.sh ]; then
    . /opt/local/etc/profile.d/autojump.sh
fi
export AUTOJUMP_IGNORE_CASE=1
export AUTOJUMP_KEEP_SYMLINKS=1

#path to betterment scripts 
PATH=$PATH:~/wkspc/betterment/etc/development/scripts/

#cmus
PATH=$HOME/cmus/bin/:$PATH

export JAVA_HOME
export CATALINA_HOME
export SQLPATH
export TNS_ADMIN
#export DYLD_LIBRARY_PATH
export PATH
