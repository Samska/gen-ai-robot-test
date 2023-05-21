*** Settings ***
Library         SeleniumLibrary
Library         EyesLibrary       runner=web_ufg        config=applitools.yaml
Resource        ../../resources/visual/keywords/test_keywords_common.robot
Resource        ../../resources/ui/keywords/test_keywords_signup.robot
Resource        ../../resources/visual/variables/test_variables_common.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Visual check login page
    [Tags]    visual
    Given Im on the main application page
    Eyes Check Window    Login Page     Fully

Scenario: Visual check signup page
    [Tags]    visual
    Given Im on the signup page
    Eyes Check Window    Signup Page     Fully

Scenario: Visual check signup with empty fields
    [Tags]    visual
    Given Im on the signup page
    When I click in signup
    Then required field messages should be displayed
    Eyes Check Window    Signup Page Required Alert    Fully