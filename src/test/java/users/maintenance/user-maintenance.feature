Feature: CRUD user

  Background:
    * url "https://petstore.swagger.io/v2/user"
    * def var = {  "id": 1, "username": "Elizabeth", "firstName": "Elizabeth",   "lastName": "Uyaguari",  "email": "ely.uyaguar@gmail.com",  "password": "ely123",  "phone": "0980369624",  "userStatus": 1}

  Scenario: Create User
    Given path "/"
    When request var
    And method POST
    Then status 200

  Scenario: Get user
    Given path "/Elizabeth"
    When method GET
    Then status 200

  Scenario: Put user
    Given path "/Elizabeth"
    And request { "username": "Ely", "email": "ely.uyagua@gmail.com"}
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