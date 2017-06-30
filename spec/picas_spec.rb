require './lib/picasyfijas'

describe Picasyfijas do

	it "Debe validar que el número es igual" do
        pyf = Picasyfijas.new 1234
        expect(pyf.revisaPicasYFijas[0]).to eq "El número ingresado es el correcto"
    end

	it "Debe validar que el número es diferente" do
        pyf = Picasyfijas.new 4021
        expect(pyf.revisaPicasYFijas[1]).to eq "El número de fijas es 0"
    end

    it "Debe validar el número de fijas" do
        pyf = Picasyfijas.new 1754
        expect(pyf.revisaPicasYFijas[1]).to eq "El número de fijas es 2"
    end


end