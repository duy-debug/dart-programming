# Dart SDK Installation Guide for Windows on VS Code

This document provides detailed steps to install and configure the Dart development environment on Windows, as well as setting up Visual Studio Code.

## Step 1: Download Dart SDK

1.  Visit the official Dart website: [https://dart.dev/get-dart/archive](https://dart.dev/get-dart/archive)
2.  Select the **Windows** tab.
3.  Download the Dart SDK installation file (usually a `.zip` file or use a package manager like Chocolatey, but the manual method is to download the **Dart SDK** as a zip file `dartsdk-windows-x64-release.zip`).

## Step 2: Install Dart SDK

1.  Extract the downloaded file.
2.  Move the extracted `dart-sdk` folder to a fixed location on your hard drive.
    *   *Recommended:* `C:\dart\`
    *   The path to the `bin` directory will be: `C:\dart\dart-sdk\bin`

## Step 3: Configure Environment Variables (PATH)

To run the `dart` command from anywhere in Command Prompt (CMD) or Terminal, you need to add Dart to the PATH environment variable.

1.  **Open System Properties**:
    *   Press `Windows + R`.
    *   Type `sysdm.cpl` and press **Enter**.
2.  **Open Environment Variables**:
    *   Select the **Advanced** tab.
    *   Click the **Environment Variables...** button at the bottom.
3.  **Add Dart to PATH**:
    *   In the **System variables** section at the bottom, find the `Path` variable and select it -> click **Edit**.
    *   Click **New**.
    *   Paste the path to the Dart SDK `bin` folder. Example: `C:\dart\dart-sdk\bin`
    *   Click **OK** repeatedly to save and close all windows.

> **Note:** After configuration, you need to restart your computer or at least close and reopen CMD/Terminal for changes to take effect.

## Step 4: Verify Installation

1.  Open **Command Prompt** (CMD) or **PowerShell**.
2.  Run the following command:
    ```cmd
    dart --version
    ```
3.  If successful, you will see a message similar to:
    ```
    Dart SDK version: 3.x.x ...
    ```

## Step 5: Install Extension for VS Code

1.  Open **Visual Studio Code**.
2.  Go to Extensions (or press `Ctrl + Shift + X`).
3.  Search for: `Dart`.
4.  Install the official Extension: **Dart** (by Dart Code).
