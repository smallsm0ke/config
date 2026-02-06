# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Prompt

# Default (colorized/uncolorized)
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '   

# Custom
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;36m\]\u\[\033[00m\] :: \033[3;34m\w\033[1;37m $\033[m '

# Count how many files there is in a dir | usage: $count dir/
count() {
    find "$1" -maxdepth 1 -type f | wc -l
}

# Default editor
export VISUAL=vim
export EDITOR=vim

# Alias
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias mp4='yt-dlp -k -o "%(title)s.%(ext)s" --recode-video mp4 --postprocessor-args "-vcodec libx264 -acodec aac"'
alias mp3='yt-dlp -x --audio-format mp3'
alias zs='vi ~/.bashrc'
alias sz='source ~/.bashrc'
alias txt='gnome-text-editor'
alias pdf='libreoffice --headless --convert-to pdf'
alias nokia='cd "/run/user/1000/gvfs/mtp:host=HMD_Global_QM215-QRD__SN%3ADCF5C48E_BE390B9LU/Internal Storage/DCIM/songs"'
