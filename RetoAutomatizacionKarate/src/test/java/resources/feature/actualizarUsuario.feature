Feature: Api (PUT /usuarios)

  Background:
    * url baseUrl
    * configure ssl = true

  @caso-1 @actualizarusuario @smoke-test @regresion
  Scenario: Actualizar usuario - prueba exitosa - OK
    * def newUser = call randomUser
    Given path 'usuarios'
    And request newUser
    When method post
    Then status 201
    * def userId = response._id
    * def updatedUser =
    """
    {
      "nome": "Usuario Actualizado",
      "email": #(newUser.email),
      "password": "JonathanOsorio",
      "administrador": "false"
    }
    """

    Given path 'usuarios', userId
    And request updatedUser
    When method put
    Then status 200
    And match response.message == "Registro actualizado"
    * print 'Usuario actualizado con ID:', userId

