#*** Variables ***
#${EMAIL_LOCATOR}              xpath=//android.widget.EditText[@content-desc="input-email"]
#${PASSWORD_LOCATOR}           xpath=//android.widget.EditText[@content-desc="input-password"]
#${LOGIN_BUTTON}               //android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup
#${LOGIN_LOCATOR}              //android.widget.TextView[@text="Login"]

*** Variables ***
# Navs
#${HomeNavs}        xpath=//android.widget.TextView[@text="Login"]
#${WebviewNavs}     xpath=//androaid.widget.TextView[@text="Login"]
${LoginNavs}       xpath=//android.widget.TextView[@text="Login"]
${SignUpNavs}      xpath=//android.widget.TextView[@text="Sign up"]
${FormsNavs}       xpath=//android.widget.TextView[@text="Forms"]
${SwipeNav}        xpath=//android.widget.TextView[@text="Swipe"]
${DragNavs}        xpath=//android.widget.TextView[@text="Drag"]
${WebviewNavs}     xpath=//android.widget.TextView[@text="Webview"]

${firstI}          xpath=(//android.view.ViewGroup[@content-desc="test-Item"])[1]/android.view.ViewGroup/android.widget.ImageView
${theFImage}       xpath=//android.view.ViewGroup[@content-desc="test-Image Container"]/android.widget.ImageView
#swipe
${compatibleText}           //android.widget.TextView[@text="COMPATIBLE"]
${compatibleItem}           //android.widget.ScrollView[@content-desc="Swipe-screen"]/android.view.ViewGroup/android.view.ViewGroup[1]
${EXTENDABLE_ITEM}               //android.view.ViewGroup[@content-desc="Carousel"]/android.view.ViewGroup/android.view.ViewGroup[5]/android.view.ViewGroup


# Locators for Login
${email}            xpath=//android.widget.EditText[@content-desc="input-email"]
${password}         xpath=//android.widget.EditText[@content-desc="input-password"]
${LOGIN_BUTTON}     //android.view.ViewGroup[@content-desc="button-LOGIN"]/android.view.ViewGroup
${message_success}  //android.widget.TextView[@resource-id="android:id/message"]

${ErrorEmailMessage}                    xpath=//android.widget.TextView[@text="Please enter a valid email address"]
${ErrorPasswordMessage}                 xpath=//android.widget.TextView[@text="Please enter at least 8 characters"]

# Locators for Registration
${ConfirmPassword}  xpath=//android.widget.EditText[@content-desc="input-repeat-password"]
${SignUpButton}     xpath=//android.view.ViewGroup[@content-desc="button-SIGN UP"]/android.view.ViewGroup
${message_success_register}  //android.widget.TextView[@resource-id="android:id/message"]

# Locators for Forms
${Inputfield}              xpath=//android.widget.EditText[@content-desc="text-input"]
${youtyped}                xpath=//android.widget.TextView[@text="You have typed:"]
${SwitchButton}            xpath=//android.widget.Switch[@content-desc="switch"]
${SwitchButtonONoRoFF}     xpath=//android.widget.TextView[@content-desc="switch-text"]
${Dropdown}                xpath=//android.widget.EditText[@resource-id="text_input"]
${ActiveButton}            xpath=//android.view.ViewGroup[@content-desc="button-Active"]/android.view.ViewGroup


# Drag and Drop
${Drop-l1}  accessibility_id=drop-l1
${Drop-c1}  accessibility_id=drop-c1
${Drop-r1}  accessibility_id=drop-r1

${Drop-l2}  accessibility_id=drop-l2
${Drop-c2}  accessibility_id=drop-c2
${Drop-r2}  accessibility_id=drop-r2

${Drop-l3}  accessibility_id=drop-l3
${Drop-c3}  accessibility_id=drop-c3
${Drop-r3}  accessibility_id=drop-r3

${Drag-l1}  accessibility_id=drag-l1
${Drag-c1}  accessibility_id=drag-c1
${Drag-r1}  accessibility_id=drag-r1

${Drag-l2}  accessibility_id=drag-l2
${Drag-c2}  accessibility_id=drag-c2
${Drag-r2}  accessibility_id=drag-r2

${Drag-l3}  accessibility_id=drag-l3
${Drag-c3}  accessibility_id=drag-c3
${Drag-r3}  accessibility_id=drag-r3


#${SwipeToLastElement}     xpath=//android.widget.TextView[@text="Swipe"]
${ScrollDown}    //android.view.View[@text="Getting Started"]



#SwagLabs locators
${SwagEmail}             xpath=//android.widget.EditText[@content-desc="test-Username"]
${SwagPassword}          xpath=//android.widget.EditText[@content-desc="test-Password"]
${SwagLogin}             xpath=//android.view.ViewGroup[@content-desc="test-LOGIN"]

${SwagEmailValue}        standard_user
${SwagPasswordValue}        secret_sauce

${SwagAddToCart}         accessibility_id=test-ADD TO CART
${Cart}                  xpath=//android.view.ViewGroup[@content-desc="test-Cart"]/android.view.ViewGroup/android.widget.ImageView
${Checkout}              xpath=//android.view.ViewGroup[@content-desc="test-CHECKOUT"]
${FirstName}             xpath=//android.widget.EditText[@content-desc="test-First Name"]
${LastName}              xpath=//android.widget.EditText[@content-desc="test-Last Name"]
${Zip/PostalCode}        xpath=//android.widget.EditText[@content-desc="test-Zip/Postal Code"]
${Continue}              xpath=//android.view.ViewGroup[@content-desc="test-CONTINUE"]
${Finish}                xpath=//android.view.ViewGroup[@content-desc="test-FINISH"]
${OCR_Image}             xpath=//android.widget.ScrollView[@content-desc="test-CHECKOUT: COMPLETE!"]/android.view.ViewGroup/android.widget.ImageView.view.ViewGroup/android.widget.ImageView



#shop locators
${GetStarted}            xpath=//android.widget.TextView[@text="Webview"]
${close}                 accessibility_id=Close tab
${skip}                  xpath=//android.widget.Button[@content-desc="Skip Get Started"]
${skip1}                 xpath=//android.widget.Button[@content-desc="Skip"]
${search}                xpath=//android.widget.EditText[@resource-id="SEARCH_INPUT"]
${firstItem}             xpath=(//android.view.ViewGroup[@resource-id="PRODUCT_CARD_OVERLAY_ACTION_TEST_ID"])[1]
${ThePhoto}              xpath=//android.widget.HorizontalScrollView/android.view.ViewGroup/android.view.ViewGroup[2]
${IMAGE_PATH}            C:/Users/USER/PycharmProjects/ImageprocessingRobot/Resources/screenshots/Audi.jpg




#Photos Xpaths'S
#${BackuTurnOff}               xpath=//android.widget.Button[@resource-id="android:id/button2"]
${photo}                       xpath=//android.view.ViewGroup[@content-desc="Photo taken on Sep 16, 2024 2:47:43 PM."]
${TurnOff}                     //android.widget.Button[@resource-id="com.google.android.apps.photos:id/done_button"]
${albums}                      //android.widget.Button[@content-desc="Albums, tab"]
${p}                           //android.view.View[@resource-id="com.google.android.apps.photos:id/album_cover_view"]
${p1}                          //android.view.ViewGroup[@content-desc="Photo taken on Sep 16, 2024 4:56:36 PM."]


