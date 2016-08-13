Given(/^que abri la aplicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^el "(.*?)" es "(.*?)"$/) do |jugador, nombre|
  fill_in(jugador, :with => nombre)
end

When(/^inicio un juego$/) do
  click_button("jugar")
end

Dado(/^que inicie un juego$/) do
  visit '/'
  fill_in("jugador1", :with => "Ali Cate")
  fill_in("jugador2", :with => "Alan Brito")
  click_button("jugar")
end

Cuando(/^el "(.*?)" anota un punto$/) do |jugador|
  click_button("score_#{jugador}")
end
