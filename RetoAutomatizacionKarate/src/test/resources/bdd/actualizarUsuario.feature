Feature: Api (PUT /usuarios)

  Background:
    * url baseUrl
    * configure ssl = true

  @ActUser-1 @actualizarusuario @smoke-test @regresion
  Scenario: Actualizar usuario - prueba exitosa - OK
    * def resultadoRegistro = call read('file:src/test/resources/bdd/registrarUsuarios.feature@RegUser-1')
    * def userId = resultadoRegistro.response._id
    * print 'Usuario Registrado con ID:', userId
    * def newUser = resultadoRegistro.user
    * def updatedUser =
  """
  {
    "nome": "Usuario Actualizado",
    "email": "#(newUser.email)",
    "password": "JonathanOsorio",
    "administrador": "false"
  }
  """
    Given path 'usuarios', userId
    And request updatedUser
    When method put
    Then status 200
    And match response.message == '#string'
    And match response.message == "Registro alterado com sucesso"
    * print 'Usuario actualizado con ID:', userId

