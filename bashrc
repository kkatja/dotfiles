# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi
alias term='xterm -bg black -fg white'
alias mocp='mocp -T green_theme'
alias tty-clock='tty-clock -sc -C 3'
# Put your fun stuff here.
PATH=${PATH}:/usr/local/katja/bin:/home/katja/Android/android-sdk-linux_x86/tools:/home/katja/Android/android-sdk-linux_x86/platform-tools:/home/katja/Android/arm-toolchain/bin && export PATH
BROWSER=vimprobable && export BROWSER
MAIL=/var/spool/mail/katja && export MAIL
EDITOR=/usr/bin/vim && export EDITOR
HISTCONTROL=ignorespace:erasedups && export HISTCONTROL
SCREENSHOT=scrot && export SCREENSHOT
WORLD=/var/lib/portage/world && export WORLD
RANDOMNUMBER=" od -An -N2 -i /dev/random " && export RANDOMNUMBER
