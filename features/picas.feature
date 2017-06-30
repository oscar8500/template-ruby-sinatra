Feature: Picas 3.0

  Scenario: Bienvenida e Inicio del Juego
    Given Navego a la pagina
    Then Debo leer "Picas 3.0"
    And Debo leer "Números aleatorios generados"

  Scenario: Ingresar numeros
    Given Navego a la pagina
    And Debo leer "Picas 3.0"
    And Debo leer "Números aleatorios generados"
    When Escribo en el campo "numeroIngresado" el valor "9999"
    And Hago click en "Jugar!"
    Then Debo leer "El número ingresado no es el correcto"
    And Debo leer "El número de fijas es 0"


  Scenario: Ingresar numeros
    Given Navego a la pagina
    And Debo leer "Picas 3.0"
    And Debo leer "Números aleatorios generados"
    When Escribo en el campo "numeroIngresado" el valor "1234"
    And Hago click en "Jugar!"
    Then Debo leer "El número ingresado es el correcto"
    And Debo leer "El número de fijas es 4"