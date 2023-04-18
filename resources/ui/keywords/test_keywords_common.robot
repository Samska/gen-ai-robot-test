*** Keywords ***
Before Tests
        Open Browser                ${SERVER_BASE_URL}     headless ${BROWSER}
        Maximize Browser Window

After Tests
        Close Browser