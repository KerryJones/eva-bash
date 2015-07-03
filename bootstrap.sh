##
# The bootstrapper will load everything necessary for the rest of the system, 
# 
# then pass it to the interpreter.
#
##

# Set variables
ROOT_DIR=$(dirname $0)/.eva
COMMANDS=()

# Include Functions
. ${ROOT_DIR}/functions.sh

# Load tools
for tool_path in ${ROOT_DIR}/tools/*
do
	tool=$(basename $tool_path)
	COMMANDS=(${COMMANDS[@]} $tool)
done

# Route
. ${ROOT_DIR}/route.sh