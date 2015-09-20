# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
# ZSH_THEME="nicoulaj"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git,mercurial)

# source $ZSH/oh-my-zsh.sh
source /home/vamshi/installations/common/antigen/antigen.zsh




antigen bundle robbyrussell/oh-my-zsh lib/

#
## Antigen Theme
# antigen theme jdavis/zsh-files themes/jdavis
#
##
## Antigen Bundles
##
#
antigen theme super-simple-hg
antigen bundle git
antigen bundle tmuxinator
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle rupa/z
antigen bundle common-aliases

#
## For SSH, starting ssh-agent is annoying
antigen bundle ssh-agent
#
## Node Plugins
antigen bundle coffee
antigen bundle node
antigen bundle npm
#
## Python Plugins
antigen bundle pip
antigen bundle python
antigen bundle virtualenv
#
#
antigen bundle mercurial
# antigen bundle yonchu/zsh-vcs-prompt
## The symbols.
# ZSH_VCS_PROMPT_AHEAD_SIGIL='↑ '
# ZSH_VCS_PROMPT_BEHIND_SIGIL='↓ '
# ZSH_VCS_PROMPT_STAGED_SIGIL='● '
# ZSH_VCS_PROMPT_CONFLICTS_SIGIL='✖ '
# ZSH_VCS_PROMPT_UNSTAGED_SIGIL='✚ '
# ZSH_VCS_PROMPT_UNTRACKED_SIGIL='… '
# ZSH_VCS_PROMPT_STASHED_SIGIL='⚑'
# ZSH_VCS_PROMPT_CLEAN_SIGIL='✔ '
# ZSH_VCS_PROMPT_ENABLE_CACHING='true'
# RPROMPT='$(vcs_super_info)'
## OS specific plugins
#if [[ $CURRENT_OS == 'OS X' ]]; then
#    antigen bundle brew
#        antigen bundle brew-cask
#            antigen bundle gem
#                antigen bundle osx
#                elif [[ $CURRENT_OS == 'Linux' ]]; then
#                    # None so far...
#
#                        if [[ $DISTRO == 'CentOS' ]]; then
#                                antigen bundle centos
#                                    fi
#                                    elif [[ $CURRENT_OS == 'Cygwin' ]]; then
#                                        antigen bundle cygwin
#                                        fi
#
#                                        antigen bundle jdavis/zsh-files
#
# Secret info
# antigen bundle git@github.com:jdavis/secret.git


# User configuration

#export PATH=$PATH:"/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/Applications/MacVim.app/Contents/MacOS/"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
#else
 # export EDITOR='MacVim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.


#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#set -o vi
#bindkey -M vicmd '?' history-incremental-search-backward
# bindkey -v
# export KEYTIMEOUT=1


export MAVEN_OPTS="-Xms256m -Xmx1024m -XX:PermSize=64m -XX:MaxPermSize=1024m -Djava.awt.headless=true"
#export MAVEN_OPTS="-Xms256m -Xmx512m -XX:PermSize=64m -XX:MaxPermSize=256m -Djava.awt.headless=true"

# Set architecture flags
export ARCHFLAGS="-arch x86_64"
# Ensure user-installed binaries take precedence
export JAVA_HOME=/home/vamshi/installations/programming/java/jdk1.7.0_79
export MVN_HOME=/home/vamshi/installations/programming/apache/apache-maven-3.3.3
export CATALINA_HOME=/home/vamshi/installations/programming/apache/apache-tomcat-7.0.62
export PATH=/usr/local/bin:~/bin:$PATH:$JAVA_HOME/bin:$MVN_HOME/bin:CATALINA_HOME/bin:
# Load .bashrc if it exists
#test -f ~/.zshrc && source ~/.zshrc
growl() { echo -e $'\e]9;'${1}'\007' ; return ; }
alias g="echo $'\e]9; Task Executed \007'"
alias kareo='cd /Users/vamshi/source_code/ehr_home/ehr-dev-tools/; source ./setenv.sh; cd -'
alias rdev='source /Users/vamshi/.rvm/scripts/rvm'
hgdiff() {
    hg cat $1 | vim - -c  ":vert diffsplit $1" -c "map q :qa!<CR>";
}
alias h='hgdiff'
alias dev='/Users/vamshi/source_code/ehr_home/ehr-dev-tools/services/tomcat/web/apps/webapps/EhrWebApp'
alias syncwebjsp='rsync -a ~/source_code/ehr_home/ehr-webapp/src/main/webapp/jsp/ ~/source_code/ehr_home/ehr-dev-tools/services/tomcat/web/apps/webapps/EhrWebApp/jsp'
alias syncdevjsp='rsync -a ~/source_code/ehr_home/ehr-dev-tools/services/tomcat/web/apps/webapps/EhrWebApp/jsp/  ~/source_code/ehr_home/ehr-webapp/src/main/webapp/jsp'
alias syncwebcss='rsync -a ~/source_code/ehr_home/ehr-webapp/src/main/webapp/css/ ~/source_code/ehr_home/ehr-dev-tools/services/tomcat/web/apps/webapps/EhrWebApp/css'
alias syncdevcss='rsync -a ~/source_code/ehr_home/ehr-dev-tools/services/tomcat/web/apps/webapps/EhrWebApp/css/  ~/source_code/ehr_home/ehr-webapp/src/main/webapp/css'
alias syncwebimages='rsync -a ~/source_code/ehr_home/ehr-webapp/src/main/webapp/images/ ~/source_code/ehr_home/ehr-dev-tools/services/tomcat/web/apps/webapps/EhrWebApp/images'
alias syncdevimages='rsync -a ~/source_code/ehr_home/ehr-dev-tools/services/tomcat/web/apps/webapps/EhrWebApp/images/  ~/source_code/ehr_home/ehr-webapp/src/main/webapp/images'
alias syncwebjs='rsync -a ~/source_code/ehr_home/ehr-webapp/src/main/webapp/js/ ~/source_code/ehr_home/ehr-dev-tools/services/tomcat/web/apps/webapps/EhrWebApp/js'
alias syncdevjs='rsync -a ~/source_code/ehr_home/ehr-dev-tools/services/tomcat/web/apps/webapps/EhrWebApp/js/  ~/source_code/ehr_home/ehr-webapp/src/main/webapp/js'
alias mpl='mplayer -shuffle -vo null'
alias cat='pygmentize -g'
alias rg='ranger'
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable hg git bzr svn
precmd() {
    vcs_info
}
# setopt prompt_subst
# PROMPT='${vcs_info_msg_0_}%# '
alias a='ag -i --no-numbers '
# export JAVA_HOME="/Users/vamshi/source_code/ehr_home/ehr-dev-tools/tools/jdk1.7"
#set local timezone to US for all commands 
export TZ=America/Los_Angeles
TERM=xterm
