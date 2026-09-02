Feature: Api (GET /usuarios)

  Background:
    * url baseUrl
    * configure ssl = true

  @ListUser-1 @listarusuario @smoke-test @regresion
  Scenario: CP GET Usuario - Http 200 - Listar Usuario - OK
    Given path 'usuarios'
    When method get
    Then status 200
    * print response

