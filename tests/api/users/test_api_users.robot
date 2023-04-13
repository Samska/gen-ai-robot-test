*** Settings ***
Resource      ../../../config/settings.robot
Resource      ../../../resources/api/keywords/test_keywords_common.robot
Resource      ../../../resources/api/keywords/test_keywords_users.robot
Resource      ../../../resources/api/variables/test_variables_users.robot
Test Setup     Before Tests

*** Test Cases ***
Scenario: Get all registered users
    When I request the list of all registered users
    Then the response status code should be 200
    And the response body should not be empty
    

Scenario: Create a new user
    Given I have a valid user data
    When I create the user
    Then the response status code should be 201
    And the response body should not be empty

Scenario: Get a specific user informations
    When I request the created user
    Then the response status code should be 200
    And the response body should not be empty

Scenario: Update the created user
    When I update the created user
    Then the response status code should be 200
    And the response body should not be empty

Scenario: Delete the created user
    When I delete the created user
    Then the response status code should be 200
    And the response body should not be empty