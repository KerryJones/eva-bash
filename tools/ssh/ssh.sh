##
# Automate SSH sessions based off ssh.conf
##

SERVER_KEY=$2
SERVER_CONFIG=${TOOL_DIR}/servers/$SERVER_KEY.conf

if [ ! -f $SERVER_CONFIG ]; then
	help=`cat ${TOOL_DIR}/help.txt`
	help=${help//\[SERVER_KEY\]/$SERVER_KEY}
	help=${help//\[SERVER_CONFIG\]/$SERVER_CONFIG}
	echo "${help}"
	exit 0
fi

. $SERVER_CONFIG

echo `ConEmuC -GuiMacro Rename 0 "${name}"`
ssh ${username}@${server} -p ${port} -i ${private_key}
