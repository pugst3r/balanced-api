Feature: Callbacks

  Scenario: Create a callback
    When I POST to /callbacks with the JSON API body:
      """
      {
        "url":"http://www.example.com/callback"
      }
      """
    Then I should get a 201 Created status code
    # TODO: Callback schema?                                                                                                                                      

  Scenario: Retrieve information about an existing callback
    Given I have created a callback
    When I GET to /callbacks/:callback_id giving the callback_id
    Then I should get a 200 OK status code
    # TODO: Callback schema?                                                                                                                                      

  Scenario: List all callbacks
    Given I have created more than one callback
    When I GET to /callbacks
    Then I should get a 200 OK status code
    # TODO: Callback schema?                                                                                                                                      

  Scenario: Remove a callback
    Given I have created a callback
    When I DELETE to /callbacks/:callback_id giving the callback_id
    Then I should get a 204 OK status code
    And there should be no response body
