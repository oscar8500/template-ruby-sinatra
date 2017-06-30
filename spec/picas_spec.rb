require './lib/picasyfijas'

describe Picasyfijas do

    it "Debe validar que ingrese 4 dígitos exactos" do
        pyf = Picasyfijas.new 754
        expect(pyf.revisaPicasYFijas[0]).to eq "Número ingresado no es de 4 dígitos."
    end

    it "Debe validar que ingrese 4 dígitos exactos" do
        pyf = Picasyfijas.new 7541892
        expect(pyf.revisaPicasYFijas[0]).to eq "Número ingresado no es de 4 dígitos."
    end

	it "Debe validar que el número es diferente" do
        pyf = Picasyfijas.new 4021
        expect(pyf.revisaPicasYFijas[1]).to eq "El número de fijas es 0"
    end

    it "Debe validar el número de fijas" do
        pyf = Picasyfijas.new 1754
        expect(pyf.revisaPicasYFijas[1]).to eq "El número de fijas es 2"
    end

    it "Debe validar el número de picas" do
        pyf = Picasyfijas.new 7541
        expect(pyf.revisaPicasYFijas[2]).to eq "El número de picas es 2"
    end

    it "Debe validar que las variables ingresadas son sólo números" do
        pyf = Picasyfijas.new "754t"
        expect(pyf.revisaPicasYFijas[0]).to eq "El valor ingresado no es numérico."
    end

    it "Debe validar que las variables ingresadas son sólo números" do
        pyf = Picasyfijas.new "t"
        expect(pyf.revisaPicasYFijas[0]).to eq "El valor ingresado no es numérico."
    end
end