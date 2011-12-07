Feature: Home page
  So that I can see mowmow
  As a guest
  I want to see home page of ushi app

  Scenario: Accessing home page
    Given I am a guest
    When I go to the home page
    Then I should see ".ushi"
    And I should see "I am ushi."
    And I should see "© 2011 .ushi"
