*** Settings ***
Resource  C:\Users\USER\PycharmProjects\ImageprocessingRobot\Resources\Variables\variables.robot
Library     AppiumLibrary

*** Keywords ***
Open DragAndDrop Page
    [Documentation]  Navigate to the Drag and Drop page.
    Wait Until Element Is Visible    ${DragNavs}    15 seconds
    Click Element    ${DragNavs}

Drag And Drop Elements
    [Arguments]    ${DragElement}    ${DropElement}
    [Documentation]  Perform a drag and drop operation.
    Wait Until Element Is Visible    ${DragElement}    10 seconds
    Wait Until Element Is Visible    ${DropElement}    10 seconds
    Drag And Drop    ${DragElement}    ${DropElement}

DragAndDrop1
    [Documentation]  Complete Drag and Drop operations using locators.
    Open DragAndDrop Page
    Drag And Drop Elements    ${Drag-l1}    ${Drop-l1}
    Drag And Drop Elements    ${Drag-c1}    ${Drop-c1}
    Drag And Drop Elements    ${Drag-r1}    ${Drop-r1}
    Drag And Drop Elements    ${Drag-l2}    ${Drop-l2}
    Drag And Drop Elements    ${Drag-c2}    ${Drop-c2}
    Drag And Drop Elements    ${Drag-r2}    ${Drop-r2}
    Drag And Drop Elements    ${Drag-l3}    ${Drop-l3}
    Drag And Drop Elements    ${Drag-c3}    ${Drop-c3}
    Drag And Drop Elements    ${Drag-r3}    ${Drop-r3}

