Feature: Tag helper
  Scenario: Using the test application
    Given the Server is running at "test-app"
    When I go to "/tag_helper/html_tag.html"
    Then I should see "HTML tag"