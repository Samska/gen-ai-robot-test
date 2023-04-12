*** Settings ***
Resource      ../../../resources/api/settings/test_settings.robot
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
    When I request a specific user
    Then the response status code should be 200
    And the response body should not be empty

Update A Specific User Informations
    ${name}                                                  FakerLibrary.Name
    ${email}                                                 FakerLibrary.Email
    ${password}                                              FakerLibrary.Password
    ${payload}                                               Create Dictionary          nome=${name}                     email=${email}                      password=${password}    administrador=false
    ${headers}=                                              Create Dictionary          Content-Type=application/json
    ${response}=                                             PUT On Session             serverest                        ${USERS_API_ENDPOINT}/${USER_ID}    json=${payload}         headers=${headers}
    Should Be Equal As Numbers                               ${response.status_code}    200
    Should Be True                                           ${response.json()}

Delete A Specific User
    ${response}=                                             DELETE On Session          serverest                        ${USERS_API_ENDPOINT}/${USER_ID}
    Should Be Equal As Numbers                               ${response.status_code}    200
    Should Be True                                           ${response.json()}