#language: es
Característica:
  Como arbitro de tenis
  Quiero contar los puntos de los jugadores
  Para determinar el ganador

  Escenario: el jugador1 marca 1 punto
    Dado que inicie un juego
    Cuando el "j1" anota un punto
    Entonces debo ver "15-0"

  Escenario: el jugador2 marca 1 punto
    Dado que inicie un juego
    Cuando el "j2" anota un punto
    Entonces debo ver "0-15"

  Escenario: el jugador1 marca 2 punto
    Dado que inicie un juego
    Cuando el "j1" anota un punto
    Y el "j1" anota un punto
    Entonces debo ver "30-0"
