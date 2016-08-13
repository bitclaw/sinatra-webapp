require './lib/tenis'

describe Tenis do
  it "el juego debe iniciar en 0-0" do
    tenis = Tenis.new
    tenis.marcador.should == "0-0"
  end

  it "cuando el jugador1 marca, el marcador debe ser 15-0" do
    tenis = Tenis.new
    tenis.marcar "j1"
    tenis.marcador.should == "15-0"
  end

  it "cuando el jugador1 marca 2 puntos, el marcador debe ser 30-0" do
    tenis = Tenis.new
    tenis.marcar "j1"
    tenis.marcar "j1"
    tenis.marcador.should == "30-0"
  end

  it "cuando el jugador1 marca 3 puntos, el marcador debe ser 40-0" do
    tenis = Tenis.new
    tenis.marcar "j1"
    tenis.marcar "j1"
    tenis.marcar "j1"
    tenis.marcador.should == "40-0"
  end

  it "cuando el jugador2 marca 3 puntos, el marcador debe ser 0-40" do
    tenis = Tenis.new
    tenis.marcar "j2"
    tenis.marcar "j2"
    tenis.marcar "j2"
    tenis.marcador.should == "0-40"
  end
end
