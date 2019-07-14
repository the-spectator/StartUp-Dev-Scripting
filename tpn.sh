#!/bin/zsh
function tpn_tab_one(){
  MY_PORT=3000
  str="echo \"---->Moving to tpn bullet_api directory\";"
  str+=" cd ~/projects/tpn/bullet_api;"
  str+=" echo \"----> Using ruby 2.3.0\";"
  str+=" rvm use 2.3.0;"
  str+=" echo \"----> Starting rails server\";"
  str+=" bundle exec rails s -b 0.0.0.0 -p $MY_PORT;"
  echo $str
}

function tpn_tab_two(){
  str="echo \"---->Moving to tpn bullet_api directory\";"
  str+=" cd ~/projects/tpn/bullet_api;"
  str+=" echo \"----> Using ruby 2.3.0\";"
  str+=" rvm use 2.3.0;"
  str+=" echo \"----> Starting rails console\";"
  str+=" bundle exec rails c;"
  echo $str
}

function tpn_tab_three(){
  str="echo \"---->Moving to tpn bullet_api directory\";"
  str+=" cd ~/projects/tpn/bullet_api;"
  str+=" echo \"----> Using ruby 2.3.0\";"
  str+=" rvm use 2.3.0;"
  str+=" echo \"----> Starting elastic search\";"
  str+=" sudo service elasticsearch start;"
  str+=" echo \"----> Git status\";"
  str+=" git status;"
  echo $str
}

function tpn_tab_four(){
  str="echo \"---->Moving to tpn bullet frontent directory\";"
  str+=" cd ~/projects/tpn/bullet;"
  str+=" echo \"----> Gulp dev\";"
  str+=" gulp dev;"
  echo $str
}

function tpn_tab_five(){
  str="echo \"---->Moving to tpn bullet frontent directory\";"
  str+=" cd ~/projects/tpn/bullet;"
  str+=" echo \"----> Git status\";"
  str+=" git status;"
  echo $str
}

tab_methods=("tpn_tab_one"
"tpn_tab_two"
"tpn_tab_three"
"tpn_tab_four"
"tpn_tab_five"
)
