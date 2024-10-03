*** Settings ***
Library    C:/Users/USER/PycharmProjects/ImageprocessingRobot/ocr_library.py

*** Variables ***
${IMAGE_PATH}    C:/Users/USER/PycharmProjects/ImageprocessingRobot/Resources/screenshots/Audi.jpg

*** Test Cases ***
Test OCR Library Initialization
    ${text}=    Extract All Text    ${IMAGE_PATH}
    Log    Extracted Text: ${text}

#*** Keywords ***
#Extract All Text
#    [Arguments]    ${image_path}
#    ${extracted_text}=    Extract All Text    ${image_path}  # This should call the function from the library
#    [Return]    ${extracted_text}



#Extract Arabic Text
#    [Arguments]    ${image_path}
#    ${arabic_text}=    extract_arabic_text    ${image_path}
#    RETURN    ${arabic_text}


#Live Image Processing Without Save
#    [Arguments]    ${image_data}
#    ${live_text}=    live_image_processing    ${image_data}
#    [Return]    ${live_text}
#
#Get Live Image
#    [Documentation]  Implement the logic to capture a live image and return its data.
#    # You will need to implement this method based on how you intend to capture the live image.
#    [Return]    ${live_image_data}  # Return the captured image data here.
