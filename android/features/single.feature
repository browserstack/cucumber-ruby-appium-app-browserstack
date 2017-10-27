Feature: Search in Wikipedia App

Background:
  Given I try to search using Wikipedia App

Scenario: Search for a term
  When I type in "BrowserStack"
  Then I should see results
