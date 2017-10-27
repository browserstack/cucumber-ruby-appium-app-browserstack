Feature: BrowserStack Local Testing

Background:
  Given I start test on the Local Sample App

Scenario: Can check tunnel working
  Then I should see "Up and running"
