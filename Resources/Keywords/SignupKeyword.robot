*** Settings ***
Library  AppiumLibrary
Resource  C:\Users\USER\PycharmProjects\ImageprocessingRobot\Resources\Variables\variables.robot


*** Keywords ***
Open Signup Page
    [Documentation]  open signup page
    Wait Until Element Is Visible    ${LoginNav}  15s
    Click Element    ${LoginNav}
    Wait Until Element Is Visible    ${LoginNav}  15s
    Click Element    ${SignupNav}


Enter Email
    [Arguments]  ${emailValue}
    [Documentation]  Enter the email address in the email input field.
    Wait Until Element Is Visible    ${email}
    Input Text    ${email}    ${emailValue}



Enter Password
    [Arguments]  ${PasswordValue}
    [Documentation]  Enter the email address in the email input field.
    Wait Until Element Is Visible    ${email}
    Input Text    ${email}    ${passwordValue}



Enter ConfirmPassword
    [Arguments]  ${ConfirmPasswordValue}
    [Documentation]  Enter the email address in the email input field.
    Wait Until Element Is Visible    ${email}
    Input Text    ${email}    ${ConfirmPasswordValue}


Click SIGN UP Button
    [Documentation]  Click the login button to submit the login form.
    Wait Until Element Is Visible    ${LOGIN_BUTTON}    15 seconds
    Click Element    ${LOGIN_BUTTON}


Verify Success Message
    [Documentation]  Verify the success message is displayed after login.
    Wait Until Element Is Visible    ${message_success}    15 seconds
    Element Text Should Be    ${message_success}    You are logged in!



Sign up User
    [Arguments]  ${email}  ${password}  ${confirmPassword}
    [Documentation]  Complete the login process with the provided credentials.
    Open Signup Page
    Enter Email    ${email}
    Enter Password    ${password}
    Enter ConfirmPassword ${confirmPassword}
    Click SIGN UP Button
    Verify Success Message

Empty Email Sigup
    [Arguments]  ${emailValue}  ${passwordValue}  ${confirmPassword}
    [Documentation]  Attempt login with an empty or invalid email.
    Open Signup Page
    Enter Email   ${emailValue}
    Enter Password    ${passwordValue}
    Enter ConfirmPassword ${confirmPassword}
    Click SIGN UP Button
    Wait Until Element Is Visible    ${ErrorEmailMessage}    15 seconds
    Element Text Should Be    ${ErrorEmailMessage}    Please enter a valid email address

Empty Password Sigup
    [Arguments]  ${emailValue}  ${passwordValue}   ${confirmPassword}
    [Documentation]  Attempt login with an empty or invalid password.
    Open Signup Page
    Enter Email    ${emailValue}
    Enter Password    ${passwordValue}
    Enter ConfirmPassword ${confirmPassword}
    Click SIGN UP Button
    Wait Until Element Is Visible    ${ErrorPasswordMessage}    15 seconds
    Element Text Should Be    ${ErrorPasswordMessage}    Please enter at least 8 characters

Empty Confirm Password Sigup
    [Arguments]  ${emailValue}  ${passwordValue}   ${confirmPassword}
    [Documentation]  Attempt login with an empty or invalid password.
    Open Signup Page
    Enter Email    ${emailValue}
    Enter Password    ${passwordValue}
    Enter ConfirmPassword ${confirmPassword}
    Click SIGN UP Button
    Wait Until Element Is Visible    ${ErrorPasswordMessage}    15 seconds
    Element Text Should Be    ${ErrorPasswordMessage}    Please enter at least 8 characters

