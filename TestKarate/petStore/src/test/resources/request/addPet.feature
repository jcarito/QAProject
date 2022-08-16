Feature : Add new pet with a POST
  As QA automation
  I want to add a new pet
  To validate the status code and response

  Background: consume service
    * url url

    Scenario: Add a new pet post method

      Given path 'pet'
      And def jsonBody = read('classpath:karate-data.json')
      When method post
      Then status 200
      And match <response>== {"id": int,"category": {"id": int, "name": "string"},"name": "string","photoUrls": ["string"],"tags": [{"id": int,"name": "string"}],  "status": "available"}