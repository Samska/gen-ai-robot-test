*** Settings ***
Resource        ../../../config/settings.robot
Resource        ../../../resources/ui/keywords/test_keywords_common.robot
Resource        ../../../resources/ui/keywords/test_keywords_login.robot
Resource        ../../../resources/ui/variables/test_variables_common.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Log in to Sauce Demo with Standard User
    Given Im on the main application page
    When I log in with credentials     standard_user               secret_sauce
    And the Inventory page loads
    Then the page should contain the text "Products"

Scenario: Log in to Sauce Demo with Locked Out User
    Given Im on the main application page
    When I log in with credentials     locked_out_user             secret_sauce
    Then the locked out message should be displayed

Scenario: Log in to Sauce Demo with Problem User
    Given Im on the main application page
    When I log in with credentials     problem_user                secret_sauce
    And the Inventory page loads
    Then the page should contain the text "Products"

Scenario: Log in to Sauce Demo with Performance Glitch User
    Given Im on the main application page
    When I log in with credentials     performance_glitch_user     secret_sauce
    And the Inventory page loads
    Then the page should contain the text "Products"