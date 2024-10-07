*** Settings ***
Resource    ../../Resources/Keywords/AppiumKeywords.robot
Resource    ../../Resources/Keywords/DragKeyword.robot
Resource    ../../Resources/Keywords/WebviewKeyword.robot
Resource    ../../Resources/Keywords/HomePageKeyword.robot
Resource    ../../Resources/Keywords/SignupKeyword.robot
Resource    ../../Resources/Keywords/FormsKeyword.robot
Resource    ../../Resources/Keywords/SwipeKeyword.robot
Library     AppiumLibrary


*** Test Cases ***
HomePageTest
    Open Test Application
    HomePageTest1
    Close Test Application

WebviewTest
    Open Test Application
    WebviewTest1
    Close Test Application

#Login
Successful Login with Credentials
    [Documentation]  Test successful login with valid credentials.
    Open Test Application
    Login User    hamzaosailan@hotmail.com    Aa12345678
    Close Test Application

Invalid Email
    [Documentation]  Test login with an invalid email format.
    Open Test Application
    Empty Email    ''    Aa12345678
    Close Test Application

Invalid Password
    [Documentation]  Test login with an invalid password.
    Open Test Application
    Empty Password    HamzaOsailan@hotmail.com    ''
    Close Test Application
#--Login--

#Register
Sign up UserTest
    Open Test Application
    Sign up User    HamzaOsailan@hotmail.com   123   123
    Close Test Application

Empty Email SignupTest
    Open Test Application
    Empty Email Sigup    w3   3   33
    Close Test Application

Empty Password SignupTest
    Open Test Application
    Empty Password Sigup   w3   3   33
    Close Test Application

Empty Confirm Password SignupTest
    Open Test Application
    Empty Confirm Password Sigup   w3   3   33
    Close Test Application
#--Register--

FormsTest
    Open Test Application
    Forms1
    Close Test Application

SwipeTest
    Open Test Application
    Swipe1
    Close Test Application

DragAndDropTest
    Open Test Application
    DragAndDrop1
    Close Test Application
