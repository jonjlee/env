export PATH=$HOME/bin:$PATH
export PATH=/Users/jlee/bin/sqlplus:$PATH
export DEV_HOME=$HOME/dev/ds
export HISTIGNORE="&:[ ]*:exit"
export HISTSIZE=1000
export SVN_EDITOR=vim
export LS_COLORS='no=00:fi=00:di=00;36:ln=00;37:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.png=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:'
export PS1="[\u@\h:\w]> "

alias ls='ls -FG'
alias ll='ls -alh'
alias pg="ps -ef | grep $1"
alias path='echo $PATH' 
alias hg="history | grep $1"
alias nohistory='unset HISTFILE'

alias scpresume="rsync --partial --progress --rsh=ssh"
alias xf="xmllint --format"
alias curli='curl -isSw "\n"'
alias curlit='curl -isSw "\n" -X PUT -H "Content-Type: text/plain"'
alias plcat='plutil -convert xml1 -o -'

alias mcp='mvn clean package'
alias mci='mvn clean install'
alias mee='mvn eclipse:eclipse -DdownloadSources=true -DdownloadJavadocs=true'
alias mec='mvn eclipse:clean'
alias mii='mvn idea:idea -DdownloadSources=true -DdownloadJavadocs=true'
alias jconsole='jconsole -J-DsocksProxyHost= -J-DsocksProxyPort='

alias h='cd $DEV_HOME'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias c='__calc () { echo "scale=4; $*" | bc; }; __calc '
alias urle='perl -MURI::Escape -lne "print uri_escape(\$_)" <<<'
alias urld='perl -MURI::Escape -lne "print uri_unescape(\$_)" <<<'
alias b64e='openssl base64 <<<'  # 'perl -MMIME::Base64 -lne "print decode_base64(\$_)" <<<'
alias b64d='openssl base64 -d <<<'

# autocompletion for "..." commands
.() { if [[ $2 == ./* ]]; then cd "$2"; else cd "./$1/$2"; fi }
_.() {
  [ $COMP_CWORD -gt 1 ] && return 1
  local IFS=$'\n'
  local path=`echo "${COMP_WORDS[0]}" | sed -e 's|\.|/..|g'  | sed -e 's|^/\.\.|.|'`
  local file=`echo "${COMP_WORDS[1]}" | sed -e "s|^$path/||"`
  COMPREPLY=($(compgen -f $path/$file))
  return 0
}
complete -o filenames -F _. .
complete -o filenames -F _. ..
complete -o filenames -F _. ...
complete -o filenames -F _. ....
complete -o filenames -F _. .....
complete -o filenames -F _. ......

# don't autocomplete dot files 
bind 'set match-hidden-files off' 
bind 'set page-completions off'
bind 'set completion-query-items 1000'
