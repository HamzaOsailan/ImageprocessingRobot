*** Settings ***
Library    AppiumLibrary
Resource   ../../Resources/Variables/variables.robot

*** Keywords ***
Open Test Application
    [Documentation]    Opens the Android application using Appium.
    Open Application
    ...    ${APPIUM_SERVER}
    ...    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}
#    ...    platformVersion=${ANDROID_PLATFORM_VERSION}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}

Close Test Application
    [Documentation]    Closes the mobile application.
    Close Application  # This uses the AppiumLibrary version.

