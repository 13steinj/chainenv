if [[ ! -o interactive ]]; then
    return
fi

compctl -K _chainenv chainenv

_chainenv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(chainenv commands)"
  else
    completions="$(chainenv completions ${words[2,-2]})"
    completions="$(chainenv completions ${words[2,-2]})"
  fi

  reply=(${(ps:\n:)completions})
}
