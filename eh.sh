#!/bin/zsh

function eh_tab_one(){
  MY_PORT=3000
  str="echo \"---->Moving to england hockey directory\";"
  str+=" cd ~/projects/england_hockey;"
  str+=" echo \"----> Using ruby 2.3.1\";"
  str+=" rvm use 2.3.1;"
  str+=" echo \"----> Starting rails server\";"
  str+=" bundle exec rails s -b 0.0.0.0 -p $MY_PORT;"
  echo $str
}

function eh_tab_two(){
  str="echo \"---->Moving to england hockey directory\";"
  str+=" cd ~/projects/england_hockey;"
  str+=" echo \"----> Using ruby 2.3.1\";"
  str+=" rvm use 2.3.1;"
  str+=" echo \"----> Starting rails console\";"
  str+=" bundle exec rails c;"
  echo $str
}

function eh_tab_three(){
  str="echo \"---->Moving to england hockey directory\";"
  str+=" cd ~/projects/england_hockey;"
  str+=" echo \"----> Using ruby 2.3.1\";"
  str+=" rvm use 2.3.1;"
  str+=" echo \"----> Git status\";"
  str+=" git status;"
  echo $str
}

tab_methods=("eh_tab_one"
"eh_tab_two"
"eh_tab_three"
)

