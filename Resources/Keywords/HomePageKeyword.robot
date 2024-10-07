*** Settings ***
Library     AppiumLibrary
Resource  C:\Users\USER\PycharmProjects\ImageprocessingRobot\Resources\Variables\variables.robot

*** Keywords ***
Open Home page
     [Documentation]   Navigate to the Home Page.
     Wait Until Element Is Visible    ${DragNavs}    15 seconds
     Click Element    ${DragNavs}


get the title in home
     [Documentation]   get the title in Page.
     Wait Until Element Is Visible    locator
     Element Text Should Be    locator    expected


HomePageTest1
    [Documentation]  Complete HomePage operations using locators.
    Open Home page
    get the title in home




