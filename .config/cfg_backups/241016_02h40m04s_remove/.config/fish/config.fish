#f status is-interactive
    # Commands to run in interactive sessions can go here
#end#

#oh-my-posh init fish --config /home/jasi/themes/clean-detailed.omp.json | source
#

# Commands to run in interactive sessions can go here

 if status --is-interactive
    function fish_greeting
        echo "                    .-."
        echo "                     \ \ "
        echo "                      \ \ "
        echo "                       | |"
        echo "                       | |"
        echo "     /\---/\   _,---._ | |"
        echo "    /^   ^  \,'       `. ;"
        echo "   ( O   O   )           ;"
        echo "    `.=o=__,'            \\"
        echo "      /         _,--.__   \\"
        echo "     /  _ )   ,'   `-. `-. \\"
        echo "    / ,' /  ,'        \ \ \ \\"
        echo "   / /  / ,'          (,_)(,_)"
        echo "  (,;  (,,)"
    end
end
set -g fish_greeting

if status is-interactive
    starship init fish | source
end

# List Directory
alias l='eza -lh  --icons=auto' # long list
alias ls='eza -1   --icons=auto' # short list
alias ll='eza -lha --icons=auto --sort=name --group-directories-first' # long list all
alias ld='eza -lhD --icons=auto' # long list dirs
alias lt='eza --icons=auto --tree' # list folder as tree

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'
