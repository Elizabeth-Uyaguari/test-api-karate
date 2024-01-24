Feature: CRUD user

  Background:
    * url "https://petstore.swagger.io/v2/user"
  Scenario: Create User
    Given path "/"
    And def jsonBody = read('classpath:create-user.json')
    When request jsonBody
    And method POST
    Then status 200

  Scenario: Get user
    Given path "/Elizabeth"
    When method GET
    Then status 200

  Scenario: Put user
    Given path "/Elizabeth"
    And def jsonUpdate = read('classpath:update-user.json')
    And request jsonUpdate
    When method PUT
    Then status 200

  Scenario: Get user after update
    Given path "/Ely"
    When method GET
    Then status 200

  Scenario: Delete user
    Given path "/Ely"
    When method DELETE
    Then status 200