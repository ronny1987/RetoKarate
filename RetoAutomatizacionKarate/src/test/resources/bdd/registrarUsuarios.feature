Feature: Api (POST /usuarios)

  Background:
    * url baseUrl
    * configure ssl = true

  @RegUser-1 @registrarusuario @smoke-test @regresion
  Scenario: CP POST  Usuario - Http 201 - Registar Usuario - OK
    * def user =  randomUser()
    * print user
    Given path 'usuarios'
    And request user
    When method post
    Then status 201
    And match response.message == "Cadastro realizado com sucesso"
    * def userId = response._id
    * print 'Usuario Creado con ID ', userId, ' y mail;', user.email

  @RegUser-2 @registrarusuario @smoke-test @regresion
  Scenario Outline: CP POST  Usuario - Http 400 -Registrar usuario con email inválido - NoOK
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



