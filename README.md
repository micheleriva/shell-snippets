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

### Aliases

##### Misc

<details><summary>`cls`</summary>
<p>
```sh
alias cls="clear"
```
</p>
</details>

<details><summary>`psa`</summary>
<p>
```sh
alias psa="ps aux | grep"
```
</p>
</details>

<details><summary>`rmf`</summary>
<p>
```sh
alias rmf="rm -rf"
```
</p>
</details>

##### Listing

<details><summary>`l`</summary>
<p>
```sh
alias l="ls"
```
</p>
</details>

<details><summary>`ll`</summary>
<p>
```sh
alias ll="ls -hl"
```
</p>
</details>

<details><summary>`la`</summary>
<p>
```sh
alias la="ls -A"
```
</p>
</details>

<details><summary>`lla`</summary>
<p>
```sh
alias lla="ls -alh"
```
</p>
</details>

<details><summary>`ls`</summary>
<p>
```sh
alias ls="ls -Gp"
```
</p>
</details>

##### Grep

<details><summary>`grep`</summary>
<p>
```sh
alias grep="grep --color"
```
</p>
</details>

##### Git

<details><summary>`g`</summary>
<p>
```sh
alias g="git"
```
</p>
</details>

<details><summary>`gpull`</summary>
<p>
```sh
alias gpull="g pull origin $(git_branch_name)"
```
</p>
</details>

<details><summary>`gpush`</summary>
<p>
```sh
alias gpush="g push origin $(git_branch_name)"
```
</p>
</details>

### Methods

##### cdb
<details><summary>`cdb`</summary>
<p>

Use `cdb 3` insted of `cd ../../../`

```sh
function cdb() {
  for ((n=0;n<$1;n++))
    do cd ..
  done
}"
```
</p>
</details>

##### mkdircd
<details><summary>`mkdircd`</summary>
<p>

Use `mkdircd foo` insted of `mkdir foo && cd foo`

```sh
function mkdircd() {
  mkdir $1 && cd $1
}
```
</p>
</details>

##### runx
<details><summary>`runx`</summary>
<p>

Run any function multiple times

```sh
function runx() {
  for ((n=0;n<$1;n++))
    do ${*:2}
  done
}
```
</p>
</details>

# License
[MIT](./LICENSE.md)