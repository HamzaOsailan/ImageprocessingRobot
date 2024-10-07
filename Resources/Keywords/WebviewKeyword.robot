*** Settings ***
Library  AppiumLibrary
Resource  C:\Users\USER\PycharmProjects\ImageprocessingRobot\Resources\Variables\variables.robot

*** Keywords ***
Open Webview page
     [Documentation]   Navigate to the Webview Page.
     Wait Until Element Is Visible    ${DragNavs}    15 seconds
     Click Element    ${DragNavs}

scrolldown
     [Documentation]   scrolldown.
     Wait Until Element Is Visible    ${DragNavs}    15 seconds
     Click Element    ${DragNavs}


WebviewTest1
      Open Webview page
      scrolldown