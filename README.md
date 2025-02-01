# RobotFramework Selenium Template

This repository provides a template for web automation using Robot Framework and Selenium. It includes predefined keywords, test cases, and resources to help you get started quickly with web testing.

## Features

- Predefined keywords for common web actions
- Example test cases for login, form filling, and cart operations
- Resource files for locators and global settings
- Easy setup and configuration

## Getting Started

1. Ensure `Python` and `pip` are installed and added to `PATH`
    - Confirm installation by running `python --version` and `pip --version` in your shell

2. Install project dependencies
    - Run `pip install -r requirements.txt` from the project root

3. Ensure `Robot Framework` is installed
    - Confirm installation by running `robot --version` in your shell

### Running the tests

To run the tests, execute the following command in your shell:

```sh
robot -d ./out tests
```

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
