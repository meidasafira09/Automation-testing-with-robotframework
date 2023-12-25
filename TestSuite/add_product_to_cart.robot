*** Settings ***
Library                SeleniumLibrary
Resource               ../resources.robot
Resource               ../PageObject/login_page.robot
Resource               ../PageObject/add_product_page.robot
Test Teardown          Close Browser


*** Test Cases ***
As a user, I want to checkout product
      [Documentation]     Scenario checkout product
      [Tags]    Positive
      GIVEN Open web saucedemo
      WHEN Login with standard_user
      AND User submit to login homepage
      AND User add product
      THEN User check product to cart


