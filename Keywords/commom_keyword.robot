***Keywords***
Open Doppee Website
    SeleniumLibrary.Open Browser    ${browser.url}    ${browser.type}

Generate random number
    ${random_number}=    Evaluate           random.randint(1000,9999)    modules=random
    ${email}             Set Variable       ${random_number}
    Log To Console       Random Number : ${email}
    RETURN               ${email}

Connect to database and fetch data
    DatabaseLibrary.Connect To Database    ${DB_DRIVER}    ${DB_NAME}    ${DB_USER}    ${DB_PASSWORD}    ${DB_HOST}    ${DB_PORT}
    Log To Console                         .Database : Connect