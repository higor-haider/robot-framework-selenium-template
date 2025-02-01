*** Settings ***
Documentation       This file contains generic keywords to be used in the tests

Resource            ./global_resources.resource
Resource            ./global_var.resource


*** Keywords ***
Open Browser And Navigate To The Testing URL
    [Documentation]    Open browser and navigate to the testing url
    [Arguments]    ${URL}
    SeleniumLibrary.Open Browser    ${URL}    chrome    options=add_argument("--start-maximized")
