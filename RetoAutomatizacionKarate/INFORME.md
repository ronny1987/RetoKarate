# 📝 Informe de Estrategia de Automatización

## 🎯 Objetivo

El objetivo de esta automatización es validar los endpoints de la API de usuarios de (https://serverest.dev),
asegurando que las operaciones como
(Crear, Listar, Actualizar y Eliminar) funcionen correctamente
bajo diferentes escenarios (Positivos y Negativos).

---

## ⚙️ Estrategia de Automatización

### Framework utilizado

- *Karate DSL*, por su simplicidad para pruebas de API.

### Alcance de pruebas

- *GET /usuarios* → Validar el listado de usuarios
- *POST /usuarios* → Validar creación exitosa y manejo de datos inválidos.
- *GET /usuarios/{id}* → Validar búsqueda de usuarios por ID.
- *PUT /usuarios/{id}* → Validar actualización de datos de usuario.
- *DELETE /usuarios/{id}* → Validar eliminación de usuario

### Escenarios contemplados

- *Casos positivos*: Validaciones de status codes 200 y 201, respuesta correcta.
- *Casos negativos*: Datos invalidos, validación de mensajes de error y códigos 400.

### Validaciones realizadas

- *Status code* esperado.
- *Estructura JSON* de respuesta (esquema).
- *Atributos obligatorios*

---

## 🧩 Patrones y buenas prácticas aplicadas

1. *Separación por Features*  
   Cada endpoint tiene su archivo .feature

2. *Uso de Background*  
   Configuración común (base URL, SSL, etc.) definida en un solo lugar → evita duplicación.

3. *Configuración global con karate-config.js*
    - Definición de baseUrl.
    - Funciones helper para generación de data dinamica

4. *Uso de Scenario Outline*  
   Validación de múltiples casos parametrizados en un solo escenario

---

## 🚀 Beneficios de la estrategia

- *Escalable* → se puede ampliar fácilmente a más endpoints.
- *Mantenible* → estructura modular y helpers centralizados.
- *Confiable* → datos dinámicos reducen problemas de duplicados.
- *Claro* → escenarios bien definidos y reportes fáciles de interpretar.

---

## 👨‍💻 Autor

Jonathan Osorio Espinoza