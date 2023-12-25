*** Settings ***
Library                                 SeleniumLibrary
Library                                 Collections
Resource                                ../resources.robot
Resource                                ../PageObject/login_page.robot
Resource                                ../TestSuite/sorting_product.robot
Test Teardown                           Close Browser

*** Variables ***
${sorting_menu}                        //span[@class="select_container"]
${sort_byname_A-Z}                     //span[@class="select_container"]//option[@value="az"]
${sort_byname_Z-A}                     //span[@class="select_container"]//option[@value="za"]
${sort_byprice_low-high}               //span[@class="select_container"]//option[@value="lohi"]
${sort_byname_high-low}                //span[@class="select_container"]//option[@value="hilo"]
@{PRODUCT}                             Sauce Labs Backpack    Sauce Labs Bike Light    Sauce Labs Bolt T-Shirt    Sauce Labs Fleece Jacket    Sauce Labs Onesie    Test.allTheThings() T-Shirt (Red)


*** Keywords ***

User choose sorting menu
    [Documentation]    choose sorting menu
    Click Element                      ${sorting_menu}
    Wait Until Element Is Visible      ${sort_byname_A-Z}
    Wait Until Element Is Visible      ${sort_byname_Z-A}
    Wait Until Element Is Visible      ${sort_byprice_low-high} 
    Wait Until Element Is Visible      ${sort_byname_high-low} 

Choose sorting by Name (A to Z)
    [Documentation]    sorting by Name (A to Z)
    Wait Until Element Is Visible      ${sort_byname_A-Z}
    Click Element                      ${sort_byname_A-Z}


Choose sorting by Name (Z to A)
    [Documentation]    sorting by Name (Z to A)
    Wait Until Element Is Visible      ${sort_byname_Z-A}
    Click Element                      ${sort_byname_Z-A}

Choose sorting by Price (low to high)
    [Documentation]    sorting by Price (low to high)
    Wait Until Element Is Visible      ${sort_byprice_low-high}
    Click Element                      ${sort_byprice_low-high}

Choose sorting by Price (high to low)
    [Documentation]    sorting by Price (high to low)
    Wait Until Element Is Visible      ${sort_byname_high-low} 
    Click Element                      ${sort_byname_high-low} 

Sort product
    [Documentation]    sorting product
    [Arguments]               ${value1}    ${value2}    ${value3}    ${value4}    ${value5}    ${value6}
    Element Text Should Be    xpath=/html/body/div/div/div/div[2]/div/div/div/div[1]/div[2]/div[1]/a/div    ${value1}
    Element Text Should Be    xpath=/html/body/div/div/div/div[2]/div/div/div/div[2]/div[2]/div[1]/a/div    ${value2}
    Element Text Should Be    xpath=/html/body/div/div/div/div[2]/div/div/div/div[3]/div[2]/div[1]/a/div    ${value3}
    Element Text Should Be    xpath=/html/body/div/div/div/div[2]/div/div/div/div[4]/div[2]/div[1]/a/div    ${value4}
    Element Text Should Be    xpath=/html/body/div/div/div/div[2]/div/div/div/div[5]/div[2]/div[1]/a/div    ${value5}
    Element Text Should Be    xpath=/html/body/div/div/div/div[2]/div/div/div/div[6]/div[2]/div[1]/a/div    ${value6}