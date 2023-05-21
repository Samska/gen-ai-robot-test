*** Keywords ***
Given Im on the main application page
    Go To                   ${SERVER_BASE_URL}

Given Im on the signup page
    Location Should Be      https://front.serverest.dev/login
    Click Element           css=a.btn.btn-link

When I click in signup
    Click Button            css=.btn.btn-primary

And I fill in the signup fields with valid data
    ${name}=                FakerLibrary.Name
    ${email}=               FakerLibrary.Email
    ${password}=            FakerLibrary.Password
    Input Text              id:nome         ${name}
    Input Text              id:email        ${email}
    Input Text              id:password     ${password}
    Select Checkbox         id=administrador
    #Armazeno a variável para outro cenário
    Set Suite Variable      ${name}
    Set Suite Variable      ${email}
    Set Suite Variable      ${password}

And I fill in the signup fields with an email already registered
    Input Text              id:nome         ${name}
    Input Text              id:email        ${email}
    Input Text              id:password     ${password}
    Select Checkbox         id=administrador

Then required field messages should be displayed
    Wait Until Element Is Visible       css=.alert-dismissible   timeout=10s
    Page Should Contain                 Nome é obrigatório
    Page Should Contain                 Email é obrigatório
    Page Should Contain                 Password é obrigatório

Then the page should contain the text "${expected_text}"
    Wait Until Element Is Visible       css=.alert-dismissible   timeout=10s
    Page Should contain     ${expected_text}