Feature: Testing Login Form on SauceDemo Website

  Background:
  Given I am on the SauceDemo login page

  Scenario: UC-1 User should NOT be able to login with empty credentials
    When Anonymous user logging in with 'propertiesLogin1' user name and 'propertiesPassword1' password
    And Anonymous user clears the "login" field
    And Anonymous user clears the "password" field
    And Anonymous user clicks on login button
    Then Anonymous user should see an error message containing "Username is required"

  Scenario: UC-2 User should NOT be able to login without password
    When Anonymous user logging in with 'propertiesLogin2' user name and 'propertiesPassword2' password
    And Anonymous user clears the "password" field
    And Anonymous user clicks on login button
    Then Anonymous user should see an error message containing "Password is required"

  Scenario Outline: UC-3 "<userName>" user should login with valid credentials
    When Anonymous user logging in with '<userName>' user name and '<password>' password
    And Anonymous user clicks on login button
    Then Logged user should see validation the title "Swag Labs" in the dashboard

    Examples:
      | userName           | password           |
      | propertiesLogin3   | propertiesPassword3|