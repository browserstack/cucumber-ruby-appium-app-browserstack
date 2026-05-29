Feature: Verify if displayed text matches entered text

Background:
  Given I try to find Text Button in Sample App

Scenario: Type a term
  When I type in "hello@browserstack.com" in the Text Input field
  Then I should get the entered text in the Text Output field

Scenario: Entered text should persist untill otherwise
  Then I should get the entered text in the Text Output field
