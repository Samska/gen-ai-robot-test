*** Settings ***
Resource        ../../../config/settings.robot
Resource        ../../../resources/ui/keywords/test_keywords_common.robot
Resource        ../../../resources/ui/variables/test_variables_common.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Log In to Sauce Demo
    [Documentation]    Tests that a user can successfully log in to the Sauce Demo website.
    [Tags]             login
    Input Text         id:username        standard_user
    Input Text         id:password        secret_sauce
    Click Button       login-button
    Wait Until Element Is Visible   //div[@class='product_label']   timeout=10s
    Element Should Be Visible        //div[@class='product_label']
    Close Browser