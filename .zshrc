# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval `dircolors  /home/l20j45/.dircolors/dircolors.ansi-dark`


alias eliminarlock='rm ~/.antigen/.lock'
alias topmem='ps aux –width 20 –sort -rss | head'
alias pbpaste="powershell.exe -command 'Get-Clipboard' | sed -e 's/\r\n$//g'"
alias hg='history | grep -i'
alias pg='ps aux | grep -i '
alias lg='ls | grep -i '
alias ambientevirtual='python3 -m venv ./venv'
alias activarambientevirtual='source ./venv/bin/activate'
alias editarzsh='nano ~/.zshrc'
alias recargarzsh='source ~/.zshrc'
alias vel_red='speedtest-cli --simple'
alias mi_ip='curl ifconfig.me '
alias ll='ls -la'
alias p3='python3'
alias np='notepad.exe'
alias eq='explorer.exe .'
alias bat='batcat'
alias ippublica='curl ifconfig.me'
alias cp='cp -i'
alias diff='diff -u'
alias normalDir='/mnt/d/cursos/pythonTrabajo/InterfazPythonSqlV2/movil'
alias escritorioDir='/mnt/c/Users/winda/Desktop'
alias sincronizacionDir='/mnt/c/Users/winda/Documents/archivos_softsolutions/Instancias_de_trabajo/Instancias_nuevas/actualizaciones/sincronizacion'
alias instanciasDir='/mnt/c/Users/winda/Documents/archivos_softsolutions/Instancias_de_trabajo/Instancias_nuevas'
# Load Antigen
source /home/l20j45/antigen.zsh
# Load Antigen configurations
antigen init ~/.antigenrc

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=/home/l20j45/.config/composer/vendor/bin/:$PATH
export PATH=/user/bin:$PATH
export PATH=/home/l20j45/.local/bin:$PATH



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
