*** Settings ***
Resource        ../../config/settings.robot
Resource        ../../resources/visual/keywords/test_keywords_common.robot
Resource        ../../resources/ui/keywords/test_keywords_login.robot
Resource        ../../resources/visual/variables/test_variables_common.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Login page
    Eyes Check Window    Login Page     Fully
    Given Im on the main application page

Scenario: Inventory page
    When I log in with credentials     standard_user               secret_sauce
    And the Inventory page loads
    Then the page should contain the text "Products"
    Eyes Check Window    Inventory Page     Fully