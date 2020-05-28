workdir="/home/boegh/_home/_lex"

_lex_completions() {
    local cur
    cur="${COMP_WORDS[$COMP_CWORD]}"
    compopt -o nospace
    COMPREPLY=(  $(
       cd "$workdir"
       if [[ ${cur: -1} != "/" && -d $cur ]] ; then
           echo "$cur/"
       else
           compgen -f "$cur"
       fi
      )  )
}

complete -F _lex_completions lex
