*** Settings ***
Library                SeleniumLibrary
Resource               ../resources.robot
Resource               ../PageObject/login_page.robot
Resource               ../PageObject/checkout_page.robot
Test Teardown          Close Browser


*** Test Cases ***
As a user, I want to checkout product
      [Documentation]     Scenario checkout product
      [Tags]    Positive
      GIVEN Open web saucedemo
      THEN Login with standard_user
      THEN User submit to login homepage
      THEN User add product to cart
      THEN User click btn checkout
      THEN User fill form checkout
      THEN User click btn continue to checkout
      # THEN User click finish to checkout product
      # THEN User success checkout
