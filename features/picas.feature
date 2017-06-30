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
    Then Debo leer "El número de fijas es 0"
    And Debo leer "El número de picas es 0"


  Scenario: Ingresar numeros
    Given Navego a la pagina
    And Debo leer "Picas 3.0"
    And Debo leer "Números aleatorios generados"
    When Escribo en el campo "numeroIngresado" el valor "1234"
    And Hago click en "Jugar!"
    Then Debo leer "El número de fijas es 4"
    And Debo leer "El número de picas es 0"

  Scenario: Ingresar numeros
    Given Navego a la pagina
    And Debo leer "Picas 3.0"
    And Debo leer "Números aleatorios generados"
    When Escribo en el campo "numeroIngresado" el valor "2222"
    And Hago click en "Jugar!"
    And Escribo en el campo "numeroIngresado" el valor "3333"
    And Hago click en "Jugar!"
    Then Debo leer "El número de fijas es 1"
    And Debo leer "El número de picas es 3"
    And Debo leer "Historial: 2222 3333"

  Scenario: Ingresar numeros
    Given Navego a la pagina
    And Debo leer "Picas 3.0"
    And Debo leer "Números aleatorios generados"
    When Escribo en el campo "numeroIngresado" el valor "1"
    And Hago click en "Jugar!"
    Then Debo leer "Número ingresado no es de 4 dígitos"

  Scenario: Ingresar numeros
    Given Navego a la pagina
    And Debo leer "Picas 3.0"
    And Debo leer "Números aleatorios generados"
    When Escribo en el campo "numeroIngresado" el valor "kkkk"
    And Hago click en "Jugar!"
    Then Debo leer "El valor ingresado no es numérico."