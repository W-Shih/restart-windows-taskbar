# restart-windows-taskbar 🛠️

> **Forcefully resets Windows Shell Infrastructure, Input Method (IME), and Explorer to resolve unresponsive UI issues without a reboot.**

- [restart-windows-taskbar 🛠️](#restart-windows-taskbar-️)
  - [⚠️ Important Requirement](#️-important-requirement)
  - [🧐 The Problem](#-the-problem)
  - [💡 The Solution](#-the-solution)
  - [🚀 Usage](#-usage)

## ⚠️ Important Requirement

⚠️**Run as Administrator**⚠️

This script requires **Administrator privileges** to function correctly.
Standard user permissions are **insufficient** to terminate system-level processes like `sihost.exe` and `ctfmon.exe`.

> Right-click the `.bat` file and select **"Run as administrator"**.

## 🧐 The Problem

In Windows, restarting `explorer.exe` alone is often not enough to fix a frozen taskbar.
If you encounter the following symptoms, this script is for you:

- **Start Menu / Taskbar Icons** are unclickable.
- **System Tray** (Clock, WiFi, Volume, Input Method) is unresponsive.
- **Input Method (IME)** is stuck or the language bar disappears.
- You want to fix this **without restarting your computer**.

## 💡 The Solution

This script performs a deep reset of the Windows UI layer by terminating and restarting the following dependencies in a specific order:

1. **`sihost.exe` (Shell Infrastructure Host)**: Handles the core UI logic of the Taskbar and Start Menu.
2. **`ctfmon.exe` (CTF Loader)**: Handles text input services and the System Tray language bar.
3. **`explorer.exe` (Windows Explorer)**: Reloads the desktop environment.

## 🚀 Usage

1. Download or create the `restart-windows-taskbar.bat` file.
2. **Right-click** the file and select **Run as administrator**.
3. Wait for the script to close the frozen processes and restart the UI (approx. 3-5 seconds).
4. Your Taskbar and Input Method should now be responsive again!
