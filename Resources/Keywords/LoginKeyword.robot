*** Settings ***
Resource    C:\Users\USER\PycharmProjects\ImageprocessingRobot\Resources\Keywords\AppiumKeywords.robot
Resource    C:\Users\USER\PycharmProjects\ImageprocessingRobot\Resources\locators\locators.robot


*** Keywords ***
Open Login Page
     [Documentation]   Navigate to the Login Page.
     Wait Until Element Is Visible    ${DragNavs}    15 seconds
     Click Element    ${DragNavs}

Enter Email
    [Arguments]  ${emailValue}
    [Documentation]  Enter the email address in the email input field.
    Wait Until Element Is Visible    ${email}
    Input Text    ${email}    ${emailValue}


Enter Password
    [Arguments]  ${passwordValue}
    [Documentation]  Enter the password in the password input field.
    Wait Until Element Is Visible    ${password}    15 seconds
    Input Text    ${password}    ${passwordValue}


Click Login Button
    [Documentation]  Click the login button to submit the login form.
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    15 seconds
    Click Element    ${LOGIN_BUTTON}


Verify Success Message
    [Documentation]  Verify the success message is displayed after login.
    Wait Until Element Is Visible    ${message_success}    15 seconds
    Element Text Should Be    ${message_success}    You are logged in!


Login User
    [Arguments]  ${email}  ${password}
    [Documentation]  Complete the login process with the provided credentials.
    Open Login Page
    Enter Email    ${email}
    Enter Password    ${password}
    Click Login Button
    Verify Success Message

Empty Email
    [Arguments]  ${emailValue}  ${passwordValue}
    [Documentation]  Attempt login with an empty or invalid email.
    Open Login Page
    Enter Email   ${emailValue}
    Enter Password    ${passwordValue}
    Click Login Button
    Wait Until Element Is Visible    ${ErrorEmailMessage}    15 seconds
    Element Text Should Be    ${ErrorEmailMessage}    Please enter a valid email address

Empty Password
    [Arguments]  ${emailValue}  ${passwordValue}
    [Documentation]  Attempt login with an empty or invalid password.
    Open Login Page
    Enter Email    ${emailValue}
    Enter Password    ${passwordValue}
    Click Login Button
    Wait Until Element Is Visible    ${ErrorPasswordMessage}    15 seconds
    Element Text Should Be    ${ErrorPasswordMessage}    Please enter at least 8 characters

