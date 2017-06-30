Given(/^Navego a la pagina$/) do
  visit "/"
end

Then(/^Debo leer "([^"]*)"$/) do |text|
  expect(page.body).to match /#{text}/m
end