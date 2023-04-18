*** Settings ***
Resource        ../../../config/settings.robot
Resource        ../../../resources/ui/keywords/test_keywords_common.robot
Resource        ../../../resources/ui/variables/test_variables_common.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Log In to Sauce Demo
    Input Text      id:user-name    standard_user
    Input Text      id:password     secret_sauce
    Click Button    id:login-button