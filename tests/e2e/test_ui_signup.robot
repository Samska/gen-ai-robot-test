*** Settings ***
Resource        ../../config/settings.robot
Resource        ../../resources/e2e/keywords/test_keywords_common.robot
Resource        ../../resources/e2e/keywords/test_keywords_signup.robot
Resource        ../../resources/e2e/variables/test_variables_common.robot
Test Setup      Before Tests
Test Teardown   After Tests

*** Test Cases ***
Scenario: Signup with empty fields
    [Tags]    e2e
    Given Im on the signup page
    When I click in signup
    Then required field messages should be displayed    

Scenario: Signup done successfully
    [Tags]    e2e
    Given Im on the signup page
    And I fill in the signup fields with valid data
    When I click in signup
    Then the page should contain the text "Cadastro realizado com sucesso"

Scenario: Signup with already used email
    [Tags]    e2e
    Given Im on the signup page
    And I fill in the signup fields with an email already registered
    When I click in signup
    Then the page should contain the text "Este email já está sendo usado"