#===============================================================================
#
#    https://github.com/addyi
#
#===============================================================================

use_color=true

# ========== ALIASES AND FUNCTIONS ==========

alias update='sudo apt-get update; sudo apt-get upgrade -y;'
alias ping='ping -c 5 8.8.8.8'
alias c='clear'

# Directorys

alias cc='cd ..'

# Git Stuff

alias gits='git status'

# The 'ls' family

# Add colors for filetype and  human-readable sizes by default on 'ls':
alias ls='ls -h --color'

# The ubiquitous 'll': directories first, with alphanumeric sorting:
alias ll="ls -lAv --group-directories-first"
alias lll='ll | less'		#  Pipe through 'less'
alias tree='tree -Csuh'		#  Nice alternative to 'recursive ls'

# More Less Most -->  If less is more than more, most is more than less.

# alias less='most'
# alias more='most'

# Some Alias for Alias

alias aa='alias | sort -fu'
alias ua='unalias'

# ========== Bash Prompt ==========

if ${use_color} ; then # true if bash uses color
	if [[ ${EUID} == 0 ]] ; then # isRoot
		# root
		PS1="\n\[\e[1;30m\]\d - \A\n\[\e[1;31m\]\u@\h\[\e[1;34m\] \w\[\e[1;33m\] \`parse_git_branch\`\n\[\e[1;31m\] \$\[\e[0m\] "
	else
		# user
		PS1="\n\[\e[1;30m\]\d - \A\n\[\e[1;32m\]\u@\h\[\e[1;34m\] \w\[\e[1;33m\] \`parse_git_branch\`\n\[\e[1;32m\] \$\[\e[0m\] "
		#PS1="\n\e[1;32m\u@\h\e[1;30m \d - \A\n\e[1;34m \w \e[1;33m\`parse_git_branch\`\n \e[1;32m\$\e[0m "
		#PS1="\n\e[1;32m\u@\h\e[1;34m \w \n\e[0;32m \d - \A\e[0;33m \`parse_git_branch\`\n \e[1;32m\$\e[0m "
	fi
else
	PS1='\u@\h \w \$ '
fi

# get current branch in git repo
function parse_git_branch() {
BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
if [ ! "${BRANCH}" == "" ] ; then
	echo "[${BRANCH}]"
else
	echo ""
fi
}


# ========== VOODOO AND OTHOR CRAZY STUFF ==========

# ----- Resize Image with ImageMagick Package -----

# sudo apt-get install imagemagick
# mogrify -resize 320x240 Image.png
# mogrify -resize 50% Image.png
# mogrify -resize 60% *.png

# ----- Print the sourcecode of a whole java folder to pdf file -----
# https://stackoverflow.com/questions/1921178

# enscript -r -2 --file-align=2 --highlight --line-numbers
#     -o - `find . -name '*.java'` | ps2pdf - files.pdf
#
# enscript is a program for converting text files to a variety of output
# formats. PostScript is the default.
# The -r option says to print in landscape,
# -2 is two columns per page (save trees),
# --file-align=2 says that each new file should start on its own physical page,
# --highlight turns on language-specific syntax highlighting
# (it will try to figure out the language, or you can specify "java"),
# -o - sends the output to standard-out (where it's piped to ps2pdf).
# ps2pdf takes the PostScript output from enscript and converts it to PDF.
