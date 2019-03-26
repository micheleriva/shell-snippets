# ------------------------------------
#              Functions
# ------------------------------------

# -- Git --

function git_branch_name {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo -e "${ref#refs/heads/}"
}

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  if [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]]; then
    echo -e "(*$(git_branch_name)*) "
  else
    echo -e "($(git_branch_name)) "
  fi
}

# -- Go Back Directory --
#
#   use "cdb 3" instead of
#   cd ../../../
#
# --                   --

function cdb() {
  for ((n=0;n<$1;n++))
    do cd ..
  done
}

# -- Make dir and cd into it --
#
#   use "mkdircd foo" instead of
#   mkdir foo && cd foo
#
# --                         --

function mkdircd() {
  mkdir $1 && cd $1
}

# -- Run any function n times --
#
#   (source: https://stackoverflow.com/questions/3737740/is-there-a-better-way-to-run-a-command-n-times-in-bash)
#
# --                         --

function runx() {
  for ((n=0;n<$1;n++))
    do ${*:2}
  done
}

# ------------------------------------
#               Aliases
# ------------------------------------

# -- Misc --

alias cls="clear"
alias psa="ps aux | grep"
alias rmf="rm -rf"

# -- Listing --

alias l="ls"
alias ll="ls -hl"
alias la="ls -A"
alias lla="ls -alh"
alias ls="ls -Gp"

# -- Grep --

alias grep="grep --color"

# -- Git --

alias g="git"
alias gpull="g pull origin $(git_branch_name)"
alias gpush="g push origin $(git_branch_name)"