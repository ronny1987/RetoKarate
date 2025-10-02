//function fn() {
//  var config = {
//    baseUrl: 'https://serverest.dev'
//  };
//
//  function randomEmail() {
//    return 'qa_' + java.util.UUID.randomUUID().toString() + '@mail.com';
//  }
//
//  function randomUser() {
//    return {
//      nome: 'Usuario QA',
//      email: randomEmail(),
//      password: '1234',
//      administrador: 'true'
//    };
//  }
//
//  config.randomEmail = randomEmail;
//  config.randomUser = randomUser;
//
//  return config;
//}
function fn() {
  var config = {
    baseUrl: 'https://serverest.dev'
  };

  function randomEmail() {
    return 'qa_' + java.util.UUID.randomUUID().toString() + '@mail.com';
  }

  function randomUser() {
    return {
      nome: 'Usuario QA',
      email: randomEmail(),
      password: '1234',
      administrador: 'true'
    };
  }

  // -----------------------
  // Helpers para tests negativos
  // -----------------------
  // email sin arroba -> inválido
  function randomInvalidEmail_noAt() {
    return 'qa_' + java.util.UUID.randomUUID().toString() + 'mail.com'; // falta '@'
  }

  // email con espacios -> inválido
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