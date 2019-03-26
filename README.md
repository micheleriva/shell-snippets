<h1 align="center"> Shell Snippets </h1>
<div align="center"> Little collection of shell scripts and aliases </div>

# Getting started
Ready, set, go! Copy and paste `snippets.sh` content into your `.bashrc` or `.zshrc` file and you're ready to go!

**Too lazy?**
Run the following command in your console and you're up and running!

```sh
wget https://raw.githubusercontent.com/micheleriva/shell-snippets/copypasta.sh | sh
```

# Included Snippets

## Aliases

### Misc

#### cls
Clear the console using `cls` instead of `clear`
```sh
alias cls="clear"
```

#### psa
Shorter for `ps aux | grep`
```sh
alias psa="ps aux | grep"
```

#### rmf
Shorter for `sm -rf`
```sh
alias rmf="rm -rf"
```

### Listing

#### l
Shorter for `ls`
```sh
alias l="ls"
```

#### ll
Shorter for `ls -hl`
```sh
alias ll="ls -hl"
```

#### la
Shorter for `ls -A`
```sh
alias la="ls -A"
```

#### lla
Shorter for `ls -alh`
```sh
alias lla="ls -alh"
```

#### ls
Shorter for `ls -Gp`
```sh
alias ls="ls -Gp"
```

### Grep

#### grep
Shorter for `grep --color`
```sh
alias grep="grep --color"
```

### Git

#### g
Shorter for `git`
```sh
alias g="git"
```

#### gpull
Shorter for `git pull <current-branch>`
```sh
alias gpull="g pull origin $(git_branch_name)"
```

#### gpush
Shorter for `git push origin <current-branch>`
```sh
alias gpush="g push origin $(git_branch_name)"
```

## Methods

#### cdb
Cd parent directory `n` times.

Example: `cdb 3` => `cd ../../../`

```sh
function cdb() {
  for ((n=0;n<$1;n++))
    do cd ..
  done
}"
```

#### mkdircd
Make new directory and enter it.

Example: `mkdircd foo` => `mkdircd foo && cd foo`
```sh
function mkdircd() {
  mkdir $1 && cd $1
}
```

#### runx
Run any function multiple times

```sh
function runx() {
  for ((n=0;n<$1;n++))
    do ${*:2}
  done
}
```

# License
[MIT](./LICENSE.md)