*** Settings ***
Library                             SeleniumLibrary
Resource                            ../resources.robot
Resource                            ../TestSuite/All_login.robot
Resource                            ../PageObject/login_page.robot
Resource                            ../TestSuite/checkout.robot
Test Teardown                       Close Browser

*** Variables ***
${add_cart}                        //button[@id="add-to-cart-sauce-labs-backpack"]
${cart}                            //div[@id="shopping_cart_container"]
${cart_page}                       //span[@class="title"]
${btn_checkout}                    //button[@id="checkout"]
${title_form_co}                   //span[@class="title"]
${field_firstname}                 //input[@id="first-name"]
${field_lastname}                  //input[@id="last-name"]
${field_postalcode}                //input[@id="postal-code"]
${btn_continue_co}                 //input[@id="continue"]
${co_overview}                     //div[@class="header_secondary_container"]//span[@class="title"]
${firstname}                       testing
${lastname}                        automation
${payment_info}                    //div[@id="checkout_summary_container"]//div[@class="summary_info"]/div[@class="summary_info_label"][1]
${shipping_info}                   //div[text()="Shipping Information"]
${price_total}                     //div[text()="Price Total"]
${summary_total}                   //div[text()="summary_info_label summary_total_label"]
# ${btn_finish}                      //button[@id='cancel']
${btn_finish}                       (//button[normalize-space()='Cancel'])[1]
# ${btn_finish}                      //div[@id="checkout_summary_container"]//div[@class="cart_footer"]//button[@class="btn btn_action btn_medium cart_button"]
${co_complete}                     //span[text()="Checkout: Complete!"]
${thankyou_order}                  //h2[text()="Thank you for your order!"]


*** Keywords ***
User add product to cart
    [Documentation]    User add product to cart
    Click Button                     ${add_cart}
    Click Element                    ${cart}
    Wait Until Element Is Visible    ${cart_page}
    Wait Until Element Is Visible    ${cart_page} 

User click btn checkout
    [Documentation]    User click btn checkout 
    Click Button                     ${btn_checkout}
    Wait Until Element Is Visible    ${title_form_co}    1s

User fill form checkout
    [Documentation]    User fill form checkout
    Click Element                    ${field_firstname}    
    Input Text                       ${field_firstname}    ${firstname}
    Click Element                    ${field_lastname}    
    Input Text                       ${field_lastname}     ${lastname}

User click btn continue to checkout
    [Documentation]
    Click Button                    ${btn_continue_co}
    Wait Until Element Is Visible    ${co_overview}        1s
    # Execute JavaScript                window.scrollTo(0,1000)
    # Sleep    3s
    Wait Until Element Is Visible    /html[1]/body[1]/div[1]/div[1]/div[1]/div[2]/div[1]/div[2]/div[9]/button[1]    2s
    # Click Button    ${btn_finish}

User click finish to checkout product
    [Documentation]
    Sleep    2s
    Wait Until Element Is Visible    ${btn_finish}    2s
    # Click Button                       ${btn_finish}
    # Wait Until Element Is Visible      ${co_complete}

User success checkout
    [Documentation]
    Wait Until Element Is Visible      ${thankyou_order}

  