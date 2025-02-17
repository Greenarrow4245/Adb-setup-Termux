# Adb-setup-Termux

## Overview

This repository contains scripts to set up and run ADB (Android Debug Bridge) on Termux, a terminal emulator and Linux environment for Android. The first script installs ADB, and the second script runs ADB after it has been set up.

## Features

- **Easy ADB Installation**: Simple script to install ADB on Termux.
- **Device Management**: Instructions to connect and manage Android devices using ADB.
- **Common Commands**: List of frequently used ADB commands.
- **Troubleshooting**: Solutions to common issues faced while using ADB on Termux.

## Getting Started

### Prerequisites

- Android device with Termux installed
- Internet connection

### Installation

1. Make the scripts executable:
   ```sh
   chmod +x adbsetup.sh
   chmod +x adb.sh
   ```

2. Execute the first script (only needed the first time) to set up ADB:
   ```sh
   ./adbsetup.sh
   ```

3. Follow the necessary setup steps. After the setup is complete, execute the second script to run ADB:
   ```sh
   ./adb.sh
   ```

### Using ADB

Here are some common ADB commands:

- **List connected devices:**
  ```sh
  adb devices
  ```

- **Install an APK:**
  ```sh
  adb install /path/to/your_app.apk
  ```

- **Uninstall an app:**
  ```sh
  adb uninstall com.example.yourapp
  ```

- **Reboot the device:**
  ```sh
  adb reboot
  ```

### Troubleshooting

If you encounter issues, try the following solutions:

- Ensure USB Debugging is enabled on your device.
- Use a different USB cable or port.
- Restart the ADB server:
  ```sh
  adb kill-server
  adb start-server
  ```

## Contributing

We welcome contributions! Please read our [contributing guidelines](CONTRIBUTING.md) before submitting a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
