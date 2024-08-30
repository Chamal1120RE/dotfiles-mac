for dir in */; do
  if [[ -d "$dir" && "$dir" != "README.md" && "$dir" != "LICENSE" ]]; then
    stow "${dir%/}"
  fi
done

