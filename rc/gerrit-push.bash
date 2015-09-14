function gerrit-push {
  local remote
  local branch
  remote="$1"
  branch="$2"
  [[ -n $remote ]] || remote=origin
  [[ -n $branch ]] || branch=master

  echo Running '`'git push "$remote" "HEAD:refs/for/$branch"'`'
  echo Confirm?
  read
  git push "$remote" "HEAD:refs/for/$branch"
}

