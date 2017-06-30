Feature: Picas 3.0

  Scenario: Bienvenida e Inicio del Juego
    Given Navego a la pagina
    Then Debo leer "Picas 3.0"
    And Debo leer "Números aleatorios generados"

  Scenario: Ingresar numeros
    Given Navego a la pagina
    And Debo leer "Picas 3.0"
    And Debo leer "Números aleatorios generados"
    When Escribo en el campo "numeroIngresado" el valor "4021"
    And Hago click en "Jugar!"
    Then Debo leer "3 picas y 0 fijas"