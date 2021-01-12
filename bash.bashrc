clear
echo " "
echo -e "\e[92m  ╔════════════════════════════════════════════════════╗"
echo -e "\e[92m  ║     \e[91m ██████╗██╗      ██████╗ ██╗    ██╗███╗   ██╗\e[92m  ║"
echo -e "\e[92m  ║     \e[91m██╔════╝██║     ██╔═══██╗██║    ██║████╗  ██║\e[92m  ║"
echo -e "\e[92m  ║     \e[91m██║     ██║     ██║   ██║██║ █╗ ██║██╔██╗ ██║\e[92m  ║"
echo -e "\e[92m  ║     \e[91m██║     ██║     ██║   ██║██║███╗██║██║╚██╗██║\e[92m  ║"
echo -e "\e[92m  ║ Mr. \e[91m╚██████╗███████╗╚██████╔╝╚███╔███╔╝██║ ╚████║\e[92m  ║"
echo -e "\e[92m  ║     \e[91m ╚═════╝╚══════╝ ╚═════╝  ╚══╝╚══╝ ╚═╝  ╚═══╝\e[92m  ║"
echo -e "\e[92m  ╚════════════════════════════════════════════════════╝"
echo -e "\e[92m             A Bug is Never just a Mistake "
                                                                       
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi

PS1='\$ '
