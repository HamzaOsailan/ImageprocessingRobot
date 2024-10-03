*** Settings ***
Library    ocr_library.py
Library    BuiltIn

*** Variables ***
${IMAGE_PATH}         C:\\Users\\USER\\PycharmProjects\\ImageprocessingRobot\\Resources\\screenshots\\RS7.jpg
${IMAGE_PATH_AI}         C:\\Users\\USER\\PycharmProjects\\ImageprocessingRobot\\Resources\\screenshots\\WhatsApp Image 2024-08-18 at 13.37.17_739a294a.jpg

${SCREENSHOT_PATH}    C:\\Users\\USER\\PycharmProjects\\ImageprocessingRobot\\Resources\\screenshots\\screenshot.jpg  # Update this path to where you want to save screenshots

*** Test Cases ***
Extract Text en From Image
    ${ocr}=    Evaluate    ocr_library.OCRLibrary()    modules=ocr_library
    ${result}=    Call Method    ${ocr}    extract_all_en_text    ${IMAGE_PATH}
    Log    Extracted Text: ${result}


Extract Specific en Text From Image
    ${ocr}=    Evaluate    ocr_library.OCRLibrary()    modules=ocr_library
    ${result}=    Call Method    ${ocr}    extract_specific_en_text    ${IMAGE_PATH}
    Log    Extracted Text: ${result}
    Should Contain    ${result}    RS  # Assert only if RS is expected in the English text

Extract ar Text From Image
    ${ocr}=    Evaluate    ocr_library.OCRLibrary()    modules=ocr_library
    ${result}=    Call Method   ${ocr}    extract_all_ar_text    ${IMAGE_PATH_AI}
    Log    Extracted Text: ${result}

Extract Specific ar Text From Image
    ${ocr}=    Evaluate    ocr_library.OCRLibrary()    modules=ocr_library
    ${result}=    Call Method    ${ocr}    extract_specific_ar_text    ${IMAGE_PATH_AI}
    Log    Extracted Text: ${result}
    Should Contain    ${result}  الذكاء  # Assert with expected Arabic text

Live Image Processing
    ${ocr}=    Evaluate    ocr_library.OCRLibrary()    modules=ocr_library
    ${result}=    Call Method    ${ocr}    live_image_processing
    Log    Extracted Text: ${result}

Take Screenshot And Process Image
    [Documentation]    Takes a screenshot of the current application page and processes the image for text extraction.
    ${ocr}=    Evaluate    ocr_library.OCRLibrary()    modules=ocr_library
    ${result}=    Call Method    ${ocr}    take_screenshot_image_processing    ${SCREENSHOT_PATH}
    Log    Extracted Text from Screenshot: ${result}
    # Optionally, assert expected content
##    Should Contain    ${result}    RS





#Live Image Processing
#    ${ocr}=    Create Instance    ocr_library.OCRLibrary
#    ${result}=    Call Method    ${ocr}    live_image_processing
#    Log    Extracted Text from Live Feed: ${result}
#
#Take Screenshot and Extract Text
#    ${ocr}=    Create Instance    ocr_library.OCRLibrary
#    ${result}=    Call Method    ${ocr}    take_screenshot_image_processing    ${SCREENSHOT_PATH}
#    Log    Extracted Text from Screenshot: ${result}


#Extract Arabic Text from Image
#    [Documentation]  Test extracting Arabic text from an image.
#    ${arabic_text}=    Extract Arabic Text    ${IMAGE_PATH}
#    Log    Extracted Arabic Text: ${arabic_text}


#Live Image Processing
#    [Documentation]  Process a live image for text extraction.
#    ${live_image}=    Get Live Image  # Implement this logic based on your requirements
#    ${live_text}=    Live Image Processing Without Save    ${live_image}
#    Log    Live Extracted Text: ${live_text}
#
