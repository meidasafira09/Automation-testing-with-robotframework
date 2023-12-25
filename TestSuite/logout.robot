*** Settings ***
Library                                 SeleniumLibrary
Resource                                ../resources.robot
Resource                                ../PageObject/login_page.robot
Resource                                ../PageObject/logout_page.robot
Test Teardown                           Close Browser


*** Test Cases ***
As a user, I want to logout from web saucedemo
      [Documentation]     Scenario logout from web saucedemo
      [Tags]    Positive
      GIVEN Open web saucedemo
      WHEN Login with standard_user
      AND User submit to login homepage
      AND User click menu_sidebar
      THEN User click btn logout