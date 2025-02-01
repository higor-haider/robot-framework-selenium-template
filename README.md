# RobotFramework Web Template

This repository provides a template for web automation using Robot Framework. It includes predefined keywords, test cases, and resources to help you get started quickly with web testing.

## Features

- Predefined keywords for common web actions
- Example test cases for login, form filling, and cart operations
- Resource files for locators and global settings
- Easy setup and configuration

## Getting Started

1. `Python` version `3.12.2` or higher installed and added to `PATH`
    - In your shell run the command `python --version` to confirm the installation
    - Expected output: `Python 3.x.x`

    > Tutorial access [Installing Python](https://python.org.br/instalacao-windows/)

2. `pip` version `24.0` or higher installed
    - In your shell run the command `pip --version` to confirm the installation
    - Expected output: `pip 24.0 from...`

    > Note: pip is installed together with Python

3. Install `Python` dependencies directly from the project root using the command `pip install -r requirements.txt`

4. `Robot Framework` version `7.0` or higher installed
    - In your shell run the command `robot --version` to confirm the installation
    - Expected output: `Robot Framework 7.0`

    > Tutorial access [Installing Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#installing-and-uninstalling-robot-framework)

### Running the tests using the command line

To run the tests using the command line you just need to execute the commands as follows:

> Command: `robot -d ./out tests`

### Running the tests using Visual Studio Code

- Install the plugin `Robot Framework Language Server` in Visual Studio Code
- Go the the test file press `F5` or go to the menu `Run > Start debugging`
- Fill the requested input and the test will be launched on the VS Code `Debug Console`

## Test repository architecture

```text
├── out (robot output reports)
├── resources
│   ├── common (global keywords and vars)
│   ├── features (keywords separated by feature or page)
│   ├── files (files to be used for uploads)
├── tests (robot tests separated by feature)
```
