*** Keywords ***
Before Tests
        Open Browser        ${SERVER_BASE_URL}      ${HEADLESS} ${BROWSER}
        Maximize Browser Window      
        Eyes Open

After Tests
        Eyes Close Async
        Close All Browsers