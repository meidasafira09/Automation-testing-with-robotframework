*** Settings ***
Library                            SeleniumLibrary
Resource                           ../resources.robot
Resource                           ../PageObject/login_page.robot
Resource                           ../PageObject/sorting_product_page.robot
Test Teardown                      Close Browser


*** Test Cases ***
As a user, I want to sorting product by Name (A to Z)
      [Documentation]     Scenario sorting product by Name (A to Z)
      [Tags]    Positive
      GIVEN Open web saucedemo
      WHEN Login with standard_user
      AND User submit to login homepage
      AND User choose sorting menu
      AND Choose sorting by Name (A to Z)
      THEN Sort product    ${PRODUCT}[0]    ${PRODUCT}[1]    ${PRODUCT}[2]   ${PRODUCT}[3]    ${PRODUCT}[4]    ${PRODUCT}[5]

As a user, I want to sorting product by Name (Z to A)
      [Documentation]     Scenario sorting product by Name (Z to A)
      [Tags]    Positive
      GIVEN Open web saucedemo
      WHEN Login with standard_user
      AND User submit to login homepage
      AND User choose sorting menu
      AND Choose sorting by Name (Z to A)
      THEN Sort product    ${PRODUCT}[5]    ${PRODUCT}[4]    ${PRODUCT}[3]   ${PRODUCT}[2]    ${PRODUCT}[1]    ${PRODUCT}[0]

As a user, I want to sorting by Price (low to high)
      [Documentation]     Scenario sorting by Price (low to high)
      [Tags]    Positive
      GIVEN Open web saucedemo
      WHEN Login with standard_user
      AND User submit to login homepage
      AND User choose sorting menu
      AND Choose sorting by Price (low to high)
      THEN Sort product    ${PRODUCT}[4]    ${PRODUCT}[1]    ${PRODUCT}[2]   ${PRODUCT}[5]    ${PRODUCT}[0]    ${PRODUCT}[3]

As a user, I want to sorting by Price (high to low)
      [Documentation]     Scenario sorting by Price (high to low)
      [Tags]    Positive
      GIVEN Open web saucedemo
      WHEN Login with standard_user
      AND User submit to login homepage
      AND User choose sorting menu
      AND Choose sorting by Price (high to low)
      THEN Sort product    ${PRODUCT}[3]    ${PRODUCT}[0]    ${PRODUCT}[2]   ${PRODUCT}[5]    ${PRODUCT}[1]    ${PRODUCT}[4]