*** Settings ***
Resource    ../../Resources/Keywords/SignupKeyword.robot
Resource    C:\Users\USER\PycharmProjects\ImageprocessingRobot\Resources\Keywords\AppiumKeywords.robot

*** Test Cases ***
LoginTest
    Open Test Application
    Sign up User    HamzaOsailan@hotmail.com   123   123
    Close Test Application
