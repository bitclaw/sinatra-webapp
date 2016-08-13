Feature:
  Como arbitro de tennis
  Quiero poder iniciar un juego
  Para poder registrar los puntajes

  Scenario: quiero ver un titulo de bienvenida
    Given que abri la aplicacion
    Then debo ver "Bienvenido al juego de tennis"

  Scenario: quiero ver Federer vs Nadal
    Given que abri la aplicacion
    When el "jugador1" es "Federer"
    And el "jugador2" es "Nadal"
    And inicio un juego
    Then debo ver "Federer vs Nadal"

  Scenario: quiero ver que el partido inicia 0-0
    Given que abri la aplicacion
    When el "jugador1" es "Alan Brito"
    And el "jugador2" es "Ali Cate"
    And inicio un juego
    Then debo ver "0-0"
