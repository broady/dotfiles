# Render GitHub flavored markdown
# http://stackoverflow.com/questions/7694887/is-there-a-command-line-utility-for-rendering-github-flavored-markdown#comment47200242_24357640

# Usage: gh-markdown [-http] README.md

function gh-markdown {
  local http
  local html
  if [[ "-http" == "$1" ]]; then
    http=1
    shift
  fi

  html=$(jq --slurp --raw-input '{"text": "\(.)", "mode": "markdown"}' < $@ | curl --data @- https://api.github.com/markdown)

  if [[ -n "$http" ]]; then
    echo Serving HTTP on 8787
    echo "<html>$html" | nc -l 8787
  else
    echo $html
  fi
}
