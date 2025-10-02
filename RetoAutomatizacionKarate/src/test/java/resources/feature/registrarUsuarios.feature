Feature: Api (POST /usuarios)

  Background:
    * url baseUrl
    * configure ssl = true

  @caso-1 @registrarusuario @smoke-test @regresion
  Scenario: Registrar usuarios - prueba exitosa - OK
    * def user =  randomUser()
    Given path 'usuarios'
    And request user
    When method post
    Then status 201
    And match response.message == "Cadastro realizado com sucesso"
    * def userId = response._id
    * print 'Usuario Creado con ID ', userId, ' y mail;', user.email

  @caso-2 @registrarusuario @smoke-test @regresion
  Scenario Outline: Registrar usuario con email inválido - NoOK
    * def userInvalid = randomInvalidUser()
    Given path 'usuarios'
    And request userInvalid
    When method post
    Then status 400
    * print response
    And match response contains <response>

    Examples:
      | response                                      |
      | { "email": "email deve ser um email válido" } |



