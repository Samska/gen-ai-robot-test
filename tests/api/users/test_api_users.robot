*** Settings ***
Resource                ../../../resources/api/settings/test_settings.robot
Resource                ../../../resources/api/keywords/test_keywords_common.robot
Resource                ../../../resources/api/variables/test_variables_users.robot
Test Setup              Before Tests

*** Test Cases ***
GET All Registered Users
    ${response}=                    GET On Session     serverest        ${USERS_API_ENDPOINT}
    Should Be Equal As Strings      ${response.status_code}             200

POST A User
    ${name}                 FakerLibrary.Name
    ${email}                FakerLibrary.Email
    ${password}             FakerLibrary.Password
    ${payload}              Create Dictionary    nome=${name}    email=${email}    password=${password}     administrador=true
    ${headers}              Create Dictionary    Content-Type=application/json
    ${response}             POST On Session    serverest    ${USERS_API_ENDPOINT}    json=${payload}    headers=${headers}
    Should Be Equal As Strings      ${response.status_code}             201