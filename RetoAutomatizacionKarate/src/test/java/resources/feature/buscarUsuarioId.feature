Feature: Api (GET  /usuarios)

  Background:
    * url baseUrl
    * configure ssl = true

  @caso-1 @buscarusuarioporid @smoke-test @regresion
  Scenario: Buscar usuario por Id - prueba exitosa - OK
    * def newUser = call randomUser
    Given path 'usuarios'
    And request newUser
    When method post
    Then status 201
    * def userId = response._id

    Given path 'usuarios', userId
    When method get
    Then status 200
    And match response contains { nome: '#string', email: '#string' }
    * print 'Usuario encontrado:', response

