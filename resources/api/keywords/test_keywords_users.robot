*** Keywords ***
Given I have a valid user data
    ${name}=                FakerLibrary.Name
    ${email}=               FakerLibrary.Email
    ${password}=            FakerLibrary.Password
    Set Suite Variable      ${name}
    Set Suite Variable      ${email}
    Set Suite Variable      ${password}

When I create the user
    ${payload}=             Create Dictionary    nome=${name}    email=${email}    password=${password}    administrador=false
    ${headers}=             Create Dictionary    Content-Type=application/json
    ${response}=            POST On Session    serverest    ${USERS_API_ENDPOINT}    json=${payload}    headers=${headers}
    ${user_id}=             Set Variable    ${response.json()['_id']}
    Set Global Variable     ${USER_ID}    ${user_id}
    Set Test Variable       ${response}

When I update the created user
    ${payload}              Create Dictionary          nome=John Smith                   email=john.smith@example.com                    password=P@ssw0rd123    administrador=false
    ${headers}=             Create Dictionary          Content-Type=application/json
    ${response}=            PUT On Session             serverest                        ${USERS_API_ENDPOINT}/${USER_ID}    json=${payload}         headers=${headers}
    Set Test Variable       ${response}

When I delete the created user
    ${response}=            DELETE On Session          serverest                        ${USERS_API_ENDPOINT}/${USER_ID}
    Set Test Variable       ${response}

When I request the list of all registered users
    ${response}=            GET On Session     serverest    ${USERS_API_ENDPOINT}
    Set Test Variable       ${response}

When I request the created user
    ${response}=            GET On Session      serverest    ${USERS_API_ENDPOINT}/${USER_ID}
    Set Test Variable       ${response}

Then the response status code should be ${status_code}
    Should Be Equal As Numbers    ${response.status_code}    ${status_code}
    Should Be True          ${response.json()}

And the response body should not be empty
    Should Not Be Empty    ${response.json()}