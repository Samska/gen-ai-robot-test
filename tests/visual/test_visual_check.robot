*** Settings ***
Library         SeleniumLibrary
Library         EyesLibrary       runner=web_ufg        config=applitools.yaml
Resource        ../../resources/visual/keywords/test_keywords_common.robot
Resource        ../../resources/ui/keywords/test_keywords_login.robot
Resource        ../../resources/visual/variables/test_variables_common.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Visual check login page
    [Tags]    visual
    Eyes Check Window    Login Page     Fully
    Given Im on the main application page

Scenario: Visual check inventory page
    [Tags]    visual
    When I log in with credentials     standard_user               secret_sauce
    And the Inventory page loads
    Then the page should contain the text "Products"
    Eyes Check Window    Inventory Page     Fully