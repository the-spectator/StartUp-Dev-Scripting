#!/bin/zsh
echo "----> Starting dev for england hockey"
echo "----> Opening tabs for with rails server"

tab="--tab"
cmd_beg="zsh --login -c '"
cmd_end="$SHELL'"
full_commands=""

function eh_tab_one(){
  MY_PORT=3000
  str="echo \"---->Moving to england hockey directory\";"
  str+=" cd ~/projects/england_hockey;"
  str+=" echo \"----> Using ruby 2.3.1\";"
  str+=" rvm use 2.3.1;"
  str+=" echo \"----> Starting rails server\";"
  str+=" bundle exec rails s -b 0.0.0.0 -p $MY_PORT;"
  echo $cmd_beg$str$cmd_end
}

function eh_tab_two(){
  str="echo \"---->Moving to england hockey directory\";"
  str+=" cd ~/projects/england_hockey;"
  str+=" echo \"----> Using ruby 2.3.1\";"
  str+=" rvm use 2.3.1;"
  str+=" echo \"----> Starting rails console\";"
  str+=" bundle exec rails c;"
  echo $cmd_beg$str$cmd_end
}

function eh_tab_three(){
  str="echo \"---->Moving to england hockey directory\";"
  str+=" cd ~/projects/england_hockey;"
  str+=" echo \"----> Using ruby 2.3.1\";"
  str+=" rvm use 2.3.1;"
  str+=" echo \"----> Git status\";"
  str+=" git status;"
  echo $cmd_beg$str$cmd_end
}

methods=("eh_tab_one"
"eh_tab_two"
"eh_tab_three"
)

for i in ${methods}; do
  cds=$(exec ${i})
  full_commands+=($tab --command="$cds")
done

echo "----> Executing Command \n gnome-terminal ${full_commands[@]}"
exec $(gnome-terminal ${full_commands[@]})

exit 0;
