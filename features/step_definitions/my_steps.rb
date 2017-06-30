Given(/^Navego a la pagina$/) do
  visit "/"
end

Then(/^Debo leer "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end

When(/^Escribo en el campo "([^"]*)" el valor "([^"]*)"$/) do |numeroIngresado, value|
  fill_in(numeroIngresado, :with => value)
end


When(/^Hago click en "([^"]*)"$/) do |botonJugar|
  click_button(botonJugar)
end
