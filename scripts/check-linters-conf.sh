#/bin/bash

base_url="https://raw.githubusercontent.com/microverseinc/linters-config"
branch="master"
usage="
Usage: check-linters-config dir

Please provide a valid dir to compare againts.

Valid options for dir:
  html-css
  javascript
  react-redux
  ror
  ruby

Example: check-linters-config ruby
"

compare () {
  directory="$1"
  config_files="$2"
  for file in "${config_files[@]}"; do
    if [ -f "${file}" ]; then
      original_file="${branch}/${directory}/${file}"
      wget -qO- "${base_url}/${original_file}" |
      diff \
        --brief \
        --report-identical-files \
        --ignore-all-space \
        --ignore-blank-lines \
        --strip-trailing-cr \
        --label="${original_file}" \
        - "${file}"
    else
      echo "File '${file}' is missing"
    fi
  done
}

case $1 in
  html-css)
  config_files=(".hintrc" ".stylelintrc.json")
  ;;
  ruby)
  config_files=(".rubocop.yml")
  ;;
  ror)
  config_files=(".stylelintrc.json" ".rubocop.yml")
  ;;
  javascript | react-redux)
  config_files=(".stylelintrc.json" ".eslintrc.json")
  ;;
  *)
  echo "$usage"
  exit 1
esac

compare "$1" "${config_files[@]}"
