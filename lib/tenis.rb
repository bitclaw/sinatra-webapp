class Tenis

  attr_reader :marcador
  PUNTOS = [0,15,30,40]

  def initialize
    @puntosJ1 = 0
    @puntosJ2 = 0
    @marcador = "#{PUNTOS[@puntosJ1]}-#{PUNTOS[@puntosJ2]}"
  end

  def marcar jugador
    if jugador == "j1"
      @puntosJ1+=1
    else
      @puntosJ2 += 1
    end
    @marcador = "#{PUNTOS[@puntosJ1]}-#{PUNTOS[@puntosJ2]}"
  end
end
