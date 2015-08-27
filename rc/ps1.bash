function _pwd_depth_limit_2 {
  pwd | sed -e "s%$HOME%~%" | sed -e "s|.*/\(.*/.*\)|\1|"
}

function _we_are_in_git_work_tree {
  git rev-parse --is-inside-work-tree &> /dev/null
}

function _parse_git_branch {
  if _we_are_in_git_work_tree; then
    local BR=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD 2> /dev/null)
    if [ "$BR" == HEAD ]; then
      local NM=$(git name-rev --name-only HEAD 2> /dev/null)
      if [ "$NM" != undefined ]; then
	echo -n "@$NM"
      else
	git rev-parse --short HEAD 2> /dev/null
      fi
    else
      echo -n "$BR"
    fi
  fi
}

function _parse_git_status {
  if _we_are_in_git_work_tree; then
    local ST=$(git status --short 2> /dev/null)
    if [ -n "$ST" ]; then
      echo -n " +"
    else
      echo -n " "
    fi
  fi
}

function pwd_depth_limit_2 {
  pwd | sed -e 's%/Users/cbro%~%' | sed -e "s|.*/\(.*/.*\)|\1|"
}

# export for subshells
export -f _parse_git_branch _parse_git_status _we_are_in_git_work_tree _pwd_depth_limit_2
export PS1="\$(_pwd_depth_limit_2)\$(_parse_git_status)\$(_parse_git_branch) $ "
export TERM=xterm-color
