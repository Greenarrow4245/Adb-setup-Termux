#!/data/data/com.termux/files/usr/bin/bash

exec_time() {
    # Check if adb is installed
    if command -v adb >/dev/null 2>&1; then
        echo "adb is installed. Continuing with the script."
    else
        echo "adb is not installed. Exiting..."
        exit 1
    fi

    # Prompt user for input
    read -p "Did you enable wireless debugging (y/n): " qna

    # Check user input
    if [ "$qna" = "y" ] || [ "$qna" = "Y" ]; then
        echo "Enter IP: "
        read ip
        echo "Enter port: "
        read port

        # Pair and connect
        adb pair "$ip:$port"
        sleep 1
        echo "Enter the ip: "
        read ip_2
        echo "Enter port for the second connection: "
        read port_2
        adb connect "$ip_2:$port_2"
    else
        echo "Exiting..."
        exit 1
    fi
}

# Call the function
exec_time
