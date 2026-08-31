// Url Api
function fn() {
  var config = {
    baseUrl: 'https://serverest.dev'
  };
//Correo aleatorio
  function randomEmail() {
    return 'qa_' + java.util.UUID.
                   randomUUID().
                   toString() + '@gmail.com';
  }
// Usuario Aleatorio con correo aleatorio
  function randomUser() {
    return {
      nome: 'Usuario QA',
      email: randomEmail(),
      password: '1234',
      administrador: 'true'
    };
  }

  // Utiliario para tests negativos
  // -----------------------
  // Correo sin @ -> inválido
  function randomInvalidEmail_noAt() {
    return 'qa_' + java.util.UUID.randomUUID().toString() + 'mail.com'; // falta '@'
  }

  // Correo con espacios -> inválido
  function randomInvalidEmail_spaces() {
    return 'qa ' + java.util.UUID.randomUUID().toString() + '@mail .com';
  }

  // usuario con email inválido (usa la variante "noAt" por defecto)
  function randomInvalidUser() {
    return {
      nome: 'Usuario QA Invalid',
      email: randomInvalidEmail_noAt(),
      password: '1234',
      administrador: 'true'
    };
  }

  // exportar funciones
  config.randomEmail = randomEmail;
  config.randomUser = randomUser;
  config.randomInvalidEmail_noAt = randomInvalidEmail_noAt;
  config.randomInvalidEmail_spaces = randomInvalidEmail_spaces;
  config.randomInvalidUser = randomInvalidUser;

  return config;
}