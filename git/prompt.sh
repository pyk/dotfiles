function git_branch {
    echo $(git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

function git_prompt_info {
   ref=$(git symbolic-ref HEAD 2>/dev/null) || return
   # echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
   echo "${ref#refs/heads/}"
}

function git_dirty {
  norepo=$(git status 2>/dev/null)
  clean=$(git status 2>/dev/null | grep clean)

  if [ "$norepo" == "" ]; then
    echo ""
  else
    if [ "$clean" == "" ]; then
      # echo -e "${nc}on ${red}$(git_prompt_info)${nc}"
      echo -e "${red}$(git_prompt_info)${nc}"
    else
      # echo -e "${nc}on ${green}$(git_prompt_info)${nc}"
      echo -e "${green}$(git_prompt_info)${nc}"
    fi
  fi
}

function unpushed {
  echo "$(git cherry -v @{upstream} 2>/dev/null)"
}

function need_push {
  if [ "$(unpushed)" == "" ]; then
    echo " "
  else
    echo -e "(unpushed)"
  fi
}
