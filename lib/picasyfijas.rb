class Picasyfijas

	def initialize numeroIngresado="4021"
		@numero = [1,2,3,4]
		@numIngresado = numeroIngresado.to_s
		@numPicas = 0
		@numFijas = 0
		@numIntentos = 0
		@retorno = Array.new
	end

	def revisaPicasYFijas
		if(__validacionChars)
			if(__validacionTamano)
				for i in (0..@numero.length-1)
					if @numero[i] == @numIngresado.slice(i).to_i
						@numFijas+=1
					elsif @numero.join.to_s.include?@numIngresado.slice(i)
						@numPicas+=1
					end
				end
				@retorno[1] = "El número de fijas es #{@numFijas}"
				@retorno[2] = "El número de picas es #{@numPicas}"				
			end
		end
		return @retorno
	end

	def __validacionTamano
		tamano = 4
		if(tamano != @numIngresado.length)
			@retorno[0] = "Número ingresado no es de 4 dígitos."
			@retorno[1] = ""
			@retorno[2] = ""
			return false
		end
		return true
	end

	def __validacionChars
		if !@numIngresado.scan(/\D/).empty?
			@retorno[0] = "El valor ingresado no es numérico."
			@retorno[1] = ""
			@retorno[2] = ""
			return false
		end
		return true
	end
end
