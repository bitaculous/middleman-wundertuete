Feature: Text helper
  Scenario: Using the test application
    Given the Server is running at "test-app"
    When I go to "/text_helper/handleize"
    Then I should see "hand-leize"

  Scenario: Using the test application
    Given the Server is running at "test-app"
    When I go to "/text_helper/copyright"
    Then I should see "Bitaculous - All rights reserved."