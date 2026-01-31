PS1=' %B%F{blue}%~%f%b
 %B%F{white}❱%f%b '

count() {
    find "$1" -maxdepth 1 -type f | wc -l
}

# Text Editor
export VISUAL=vim
export EDITOR=vim

# Aliases
alias mp4='yt-dlp -k -o "%(title)s.%(ext)s" --recode-video mp4 --postprocessor-args "-vcodec libx264 -acodec aac"'
alias mp3='yt-dlp -x --audio-format mp3'

alias zs='vi ~/.zshrc'
alias sz='source ~/.zshrc'

alias pdf='libreoffice --headless --convert-to pdf'
