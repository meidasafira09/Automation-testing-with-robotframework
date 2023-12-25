*** Setting ***
Library                                 SeleniumLibrary
Resource                                ../resources.robot
Resource                                ../TestSuite/All_login.robot
Resource                                ../TestSuite/checkout.robot
Resource                                ../PageObject/sorting_product_page.robot

*** Variables ***
${title}                                 //div[text()="Swag Labs"]
${field_username}                        //*[@id="user-name"]
${field_password}                        //*[@id="password"]
${title_web}                             //div[@class="app_logo"]
${button_login}                          //*[@id="login-button"]
${error_message_wrong_pass}              //h3[contains(text(),'Epic sadface: Username and password do not match a')]
${homepage_problem_user}                 //div[@class="header_secondary_container"]/span[text()="Products"]
${homepage_visual_user}                  //div[@id="shopping_cart_container"]/a[@class="shopping_cart_link"]
${message_locked}                        //h3[contains(text(),'Epic sadface: Sorry, this user has been locked out')]

*** Keywords ***
Open web saucedemo
    [Documentation]     Open web saucedemo
    Open Browser                       ${base_url}                headlesschrome
    Maximize Browser Window
    Sleep                                                         1s
    Wait Until Element Is Visible      ${title}                   1s

Login with standard_user
    [Documentation]    Login with standard_user
    Click Element                     ${field_username}
    Input Text                        ${field_username}           ${username_standard_user}
    Click Element                     ${field_password}
    Input Text                        ${field_password}           ${password}

Login with locked_out_user
    [Documentation]    Login with locked_out_user
    Click Element                    ${field_username}
    Input Text                       ${field_username}            ${username_locked_out_user}
    Click Element                    ${field_password}
    Input Text                       ${field_password}            ${password}
    Click Button                     ${button_login}


Login with problem_user
    [Documentation]    Login with problem_user
    Click Element                     ${field_username}
    Input text                        ${field_username}           ${username_problem_user}
    Click Element                     ${field_password}
    Input Text                        ${field_password}           ${password}
    Click Button                      ${button_login}
    Wait Until Element Is Visible     ${homepage_problem_user}    1s

Login with performance_glitch_user
    [Documentation]    Login with performance_glitch_user
    Click Element                     ${field_username}
    Input Text                        ${field_username}            ${username_performance_glitch_user}
    Click Element                     ${field_password}
    Input Text                        ${field_password}            ${password}
    Click Button                      ${button_login}
    Wait Until Element Is Visible     ${title_web}                 1s

Login with error_user
    [Documentation]    Login with error_user
    Click Element                     ${field_username}
    Input Text                        ${field_username}            ${username_error_user}
    Click Element                     ${field_password}
    Input Text                        ${field_password}            ${password}
    Click Button                      ${button_login}
    Wait Until Element Is Visible     ${title_web}                 1s

Login with visual_user
    [Documentation]    Login with visual_user
    Click Element                    ${field_username}
    Input Text                       ${field_username}            ${username_visual_user}
    Click Element                    ${field_password}
    Input Text                       ${field_password}            ${password}
    Click Button                     ${button_login}
    Wait Until Element Is Visible    ${homepage_visual_user}      1s

User submit to login homepage
    [Documentation]    User submit to login homepage
    Click Element                     ${button_login}
    Wait Until Element Is Visible     ${title_web}                1s

User login with wrong password
    [Documentation]    login with wrong password
    Click Element                     ${field_username}
    Input Text                        ${field_username}           ${username_standard_user}
    Click Element                     ${field_password}
    Input Text                        ${field_password}           ${wrong_pswd}
    Click Button                      ${button_login}

Error message wrong password
    [Documentation]
    Wait Until Element Is Visible    ${error_message_wrong_pass}                1s


Error message locked user
    [Documentation]    message locked user
    Wait Until Element Is Visible    ${message_locked}                1s