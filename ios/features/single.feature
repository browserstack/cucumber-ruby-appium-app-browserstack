Feature: Search in WordPress App

Background:
  Given I try to login using WordPress App

Scenario: Login for a User
  When I type in "hello@browserstack.com" in the email field
  Then I should get a registration error
