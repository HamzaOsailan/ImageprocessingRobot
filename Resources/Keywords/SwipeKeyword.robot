*** Settings ***
Library  AppiumLibrary
Library    C:/Users/USER/PycharmProjects/ImageprocessingRobot/ocr_library.py

*** Keywords ***
Open Swipe Page
    [Documentation]  open Swipe Page.
    Wait Until Element Is Visible    ${swipeNav}  15s
    Click Element    ${swipeNav}

Swipe To Right Side
   [Documentation]  swipe to left side.
   Swipe    start_x    start_y    offset_x    offset_y


Swipe To Left Side
   [Documentation]  swipe to left side.
   Swipe    start_x    start_y    offset_x    offset_y




Swipe1
    [Documentation]  Swipe to left and right.
     Open Swipe Page
     Swipe To Right Side
     Swipe To Left Side
