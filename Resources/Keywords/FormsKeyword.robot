*** Settings ***
Library  AppiumLibrary
Resource  C:\Users\USER\PycharmProjects\ImageprocessingRobot\Resources\Variables\variables.robot

*** Keywords ***
Open Forms Page
    [Documentation]  open Forms page.
    Wait Until Element Is Visible    ${formsNav}  15s
    Click Element    ${formsNav}

Enter Input field
    [Arguments]  ${inputfieldValue}
    [Documentation]  enter input field.
    Wait Until Element Is Visible    ${inputfield}  15s
    Input Text    ${inputfield}    ${inputfieldValue}

Click Switch Button
    [Documentation]  click switch button.
    Wait Until Element Is Visible    ${SwitchButton}  15s
    Click Element    ${SwitchButton}

Select from Dropdown
    [Documentation]  select from Dropdown button.
    Wait Until Element Is Visible    ${Dropdown}  15s
    Click Element    ${Dropdown}


click to Active button
    [Documentation]  click switch button.
    Wait Until Element Is Visible    ${ActiveButton}  15s
    Click Element    ${ActiveButton}



Forms1
  Open Forms Page
  Enter Input field  hamza
  Click Switch Button
  Select from Dropdown
  click to Active button
