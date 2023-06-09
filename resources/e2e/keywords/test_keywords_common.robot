*** Keywords ***
Before Tests
        Open Browser                    ${SERVER_BASE_URL}      ${HEADLESS} ${BROWSER}          --disable-logging      
        Maximize Browser Window

After Tests
        Close Browser