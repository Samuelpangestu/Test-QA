Feature: Test QA - Samuel Pangestu G Tobing


  Scenario: Successful Create a New Account via Website
    Given User the Registration page
    When User fill the Business Name
    And User fill the Full Name
    And User fill the Business Email box
    And User fill the Business Phone Number box
    And User fill the Password box with mixed character
    And User fill the Confirm Password box
    And User click the submit button
    Then User navigated to Login Page
    And Confirmation Link notification will apear

  Scenario: Failed Create a New Account via Website - Password does not match
    Given User the Registration page
    When User fill the Business Name
    And User fill the Full Name
    And User fill the Business Email box
    And User fill the Business Phone Number box
    And User fill the Password box with mixed character
    And User fill the Confirm Password box with different password than before
    And User click the submit button
    Then User Should stay in Login Page
    And Confirmation error will apear

  Scenario: Failed Create a New Account via Website - Email has taken
    Given User the Registration page
    When User fill the Business Name
    And User fill the Full Name
    And User fill the Business Email box with registered email
    And User fill the Business Phone Number box
    And User fill the Password box with mixed character
    And User fill the Confirm Password box
    And User click the submit button
    Then User Should stay in Login Page
    And Confirmation error will apear

  Scenario: Successful Login using Valid Credentials
    Given User the login page
    When User fill the valid email address
    And User fill the valid password
    And User click the Log me in button
    Then User should be successfully logged in
    And user navigated to dashboard

  Scenario: Failed Login using Invalid Email
    Given User the Login Page
    When User fill the invalid email address
    And User fill the valid password
    And User click the Log me in button
    Then User should stay in Login Page
    And User should be shown an error message
