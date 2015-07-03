# Route to the proper tool or display a help page (README.md)
in_array $1 "${COMMANDS[@]}"
if ! [ 1 == $? ]; then
  help=`cat ${ROOT_DIR}/help.txt`
  echo "$help"
  exit 0
fi

# Adjust the commands for the next tool
first=$1

TOOL_DIR=${ROOT_DIR}/tools/$1
. ${TOOL_DIR}/$1.sh