*** Settings ***
Library                                 SeleniumLibrary
Resource                                ../resources.robot
Resource                                ../TestSuite/All_login.robot
Resource                                ../PageObject/login_page.robot
Resource                                ../TestSuite/add_product_to_cart.robot
Test Teardown                           Close Browser

*** Variables ***
${add_cart}                            //button[@id="add-to-cart-sauce-labs-backpack"]
${cart}                                //div[@id="shopping_cart_container"]
${cart_badge}                          //span[@class="shopping_cart_badge"]
${qty}                                 //div[@class='cart_quantity_label']
${desc}                                //div[@class="cart_desc_label"]
    
*** Keywords ***
User add product
    [Documentation]    User add product to cart
    Wait Until Element Is Visible      ${add_cart}        1s
    Click Button                       ${add_cart}
    Wait Until Element Is Visible      ${cart_badge}      1s

User check product to cart
    [Documentation]    check product to cart
    Click Element                      ${cart}
    Wait Until Element Is Visible      ${qty}              1s
    Wait Until Element Is Visible      ${desc}             1s