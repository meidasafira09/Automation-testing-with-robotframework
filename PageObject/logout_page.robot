*** Settings ***
Library                                 SeleniumLibrary
Resource                                ../resources.robot
Resource                                ../PageObject/login_page.robot
Resource                                ../TestSuite/logout.robot
Test Teardown                           Close Browser

*** Variables ***
${menu_sidebar}                         //div[@id="menu_button_container"]//div[@class="bm-burger-button"]//button[@id="react-burger-menu-btn"]
${btn_logout}                           //div[@class="bm-menu"]/nav[@class="bm-item-list"]/a[@id="logout_sidebar_link"]
${login_page}                           //div[@class="login_logo"]

*** Keywords ***
User click menu_sidebar
    [Documentation]    click menu_sidebar
    Wait Until Element Is Visible        ${menu_sidebar}        2s
    Click Button                         ${menu_sidebar}
    Wait Until Element Is Visible        ${btn_logout}          1s

User click btn logout
    [Documentation]    click btn logout
    Wait Until Element Is Visible        ${btn_logout}          2s
    Click Element                        ${btn_logout}
    Wait Until Element Is Visible        ${login_page}          1s  