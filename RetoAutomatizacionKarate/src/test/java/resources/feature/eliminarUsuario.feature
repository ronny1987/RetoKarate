Feature: Api (DELETE /usuario)

  Background:
    * url baseUrl
    * configure ssl = true

  @caso-1 @eliminarusuario @smoke-test @regresion
  Scenario: Eliminar usuarios - prueba exitosa - OK
    * def newUser = call randomUser
    Given path 'usuarios'
    And request newUser
    When method post
    Then status 201
    * def userId = response._id

    Given path 'usuarios', userId
    When method delete
    Then status 200
    And match response.message == "Registro excluído com sucesso"
    * print 'Se elimino el usuario con ID:', userId






