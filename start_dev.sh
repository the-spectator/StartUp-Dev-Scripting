#!/bin/zsh
tab="--tab"
cmd_beg="zsh --login -c '"
cmd_end="$SHELL'"
full_commands=""

echo "----> Starting dev for england hockey"
echo "----> Opening tabs for with rails server"

TPN_SCRIPT_PATH="/home/akshay/personal-projects/startup-scripting/tpn.sh"
EH_SCRIPT_PATH="/home/akshay/personal-projects/startup-scripting/eh.sh"

# Shamelessly copy pasted from https://stackoverflow.com/questions/192249/how-do-i-parse-command-line-arguments-in-bash
for i in "$@"; do
case $i in
  -p=*|--project=*)
  PROJECT="${i#*=}"
  shift # past argument=value
  ;;
  -port=*|--rails_port=*)
  RAILS_PORT="${i#*=}"
  shift # past argument=value
  ;;
  -s=*|--source_script=*)
  SCRIPTPATH="${i#*=}"
  shift # past argument=value
  ;;
  --help)
  HELP=YES
  shift
  ;;
  --debug)
  DEBUG=YES
  shift
  ;;
  *)
        # unknown option
  ;;
esac
done

if (( ${+DEBUG} )); then
  echo "PROJECT    = ${PROJECT}"
  echo "RAILS_PORT = ${RAILS_PORT}"
  echo "SCRIPTPATH = ${SCRIPTPATH}"
  echo "DEFAULT    = ${DEFAULT}"
fi

if (( ${+HELP} )); then
  echo "TODO: provide better help content"
  echo "example: start_dev --project=eh --rails_port=3001"
  echo "POSSIBLE options are --project/-p | --source_script/-s | --rails_port/-p"
  exit 1;
elif [ -z "${PROJECT}" ]; then
  echo "No project arguement supplied. Cannot process";
  exit 1;
elif [ "$PROJECT" = "tpn" ]; then
  echo "sourcing tpn"
  source "$TPN_SCRIPT_PATH";
elif [ "$PROJECT" = "eh" ]; then
  echo "sourcing eh"
  source "$EH_SCRIPT_PATH";
elif (( ${+SCRIPTPATH} )); then
  echo "sourcing $SCRIPTPATH"
  source "$SCRIPTPATH";
fi

for method in ${tab_methods}; do
  tab_cmd=$cmd_beg$(exec ${method})$cmd_end
  full_commands+=($tab --command="$tab_cmd")
done

echo "----> Started Executing Command \n gnome-terminal ${full_commands[@]}"
exec $(gnome-terminal ${full_commands[@]})
echo "----> Completing Executing Command"

exit 0;
