*** Settings ***
Library                SeleniumLibrary
Resource               ../resources.robot
Resource               ../PageObject/login_page.robot
Resource               ../PageObject/checkout_page.robot
Test Teardown          Close Browser

*** Test Cases ***
As a user, I want Login with standard_user
      [Documentation]     Scenario Login with standard_user
      [Tags]    Positive
      GIVEN Open web saucedemo
      WHEN Login with standard_user
      THEN User submit to login homepage

As a user, I want Login with locked_out_user
      [Documentation]     Scenario Login with locked_out_user
      [Tags]    Positive
      GIVEN Open web saucedemo
      THEN Login with locked_out_user
      THEN Error message locked user

As a user, I want Login with problem_user
      [Documentation]     Scenario Login with problem_user
      [Tags]    Positive
      GIVEN Open web saucedemo
      THEN Login with problem_user

As a user, I want Login with performance_glitch_user
      [Documentation]     Scenario Login with performance_glitch_user
      [Tags]    Positive
      GIVEN Open web saucedemo
      THEN Login with performance_glitch_user

As a user, I want Login with error_user
      [Documentation]     Scenario Login with error_user
      [Tags]    Positive
      GIVEN Open web saucedemo
      THEN Login with error_user

As a user, I want Login with visual_user
      [Documentation]     Scenario Login with visual_user
      [Tags]    Positive
      GIVEN Open web saucedemo
      THEN Login with visual_user

As a user, I want Login with wrong password
      [Documentation]     Scenario Login with visual_user
      [Tags]    Negative
      GIVEN Open web saucedemo
      WHEN User login with wrong password
      THEN Error message wrong password