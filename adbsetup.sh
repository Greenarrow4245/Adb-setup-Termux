#!/data/data/com.termux/files/usr/bin/bash

update_packages() {
    echo "Upgrading packages now. Starting now.."
    pkg upg -y
}

install_required_pkgs() {
    echo "Installing adb now..."
    pkg in android-tools -y
}

exec_first_time() {
    echo "Executing adb for the first time"
    read -p "Did you enable wireless debugging (y/n): " qna

    if [ "$qna" = "y" ] || [ "$qna" = "Y" ]; then
        echo "Enter IP: "
        read ip
        echo "Enter port: "
        read port

        adb pair "$ip:$port"
        sleep 1
        read -p "Enter the ip" ip_2
        read -p "Enter port for the second connection: " port_2
        adb connect "$ip_2:$port_2"
        sleep 2
        rm adbsetup.sh
    else
        echo "Exiting"
        exit 1
    fi
}

# Call the functions
update_packages
install_required_pkgs
exec_first_time
