function ralias () {

  # Searches for reverse alias
alias | awk 'BEGIN { FS="="; }
$2 ~ /^'$1'/ {print $1;}'

}

