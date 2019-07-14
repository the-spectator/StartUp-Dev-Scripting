#!/bin/zsh
tab="--tab"
cmd_beg="zsh --login -c '"
cmd_end="$SHELL'"
full_commands=""

echo "----> Starting dev for england hockey"
echo "----> Opening tabs for with rails server"

TPN_SCRIPT_PATH="/home/akshay/personal-projects/startup-scripting/tpn.sh"
EH_SCRIPT_PATH="/home/akshay/personal-projects/startup-scripting/eh.sh"

source $EH_SCRIPT_PATH

for method in ${tab_methods}; do
  tab_cmd=$cmd_beg$(exec ${method})$cmd_end
  full_commands+=($tab --command="$tab_cmd")
done

echo "----> Started Executing Command \n gnome-terminal ${full_commands[@]}"
exec $(gnome-terminal ${full_commands[@]})
echo "----> Completing Executing Command"

exit 0;
