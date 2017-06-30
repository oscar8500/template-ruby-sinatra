require './lib/picasyfijas'

describe Picasyfijas do

	it "Debe validar que el número es igual" do
        pyf = Picasyfijas.new 1234
        expect(pyf.revisaPicasYFijas).to eq "El número ingresado es el correcto"
    end

	it "Debe validar que el número es diferente" do
        pyf = Picasyfijas.new 4021
        expect(pyf.revisaPicasYFijas).to eq "El número ingresado no es el correcto"
    end

end