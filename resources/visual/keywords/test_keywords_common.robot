*** Keywords ***
Before Tests
        Open Browser        ${SERVER_BASE_URL}      ${HEADLESS} ${BROWSER}      
        Eyes Open

After Tests
        Eyes Close Async
        Close All Browsers