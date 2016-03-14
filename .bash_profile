
if [ -f $HOME/.bashrc ]; then
	. $HOME/.bashrc
fi

export PATH=$HOME/.nodebrew/current/bin:$PATH
function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }
