*** Keywords ***
Given Im on the main application page
    Go to                   ${SERVER_BASE_URL}
    Location Should Be      ${SERVER_BASE_URL}

When I log in with credentials
    [Arguments]    ${username}      ${password}
    Input Text      id:user-name    ${username}
    Input Text      id:password     ${password}
    Click Button    id:login-button

And the Inventory page loads
    Location Should Be    https://www.saucedemo.com/inventory.html

Then the page should contain the text "${expected_text}"
    Page Should contain     ${expected_text}

Then the locked out message should be displayed
    Element Should Be Visible     class:error-message-container  