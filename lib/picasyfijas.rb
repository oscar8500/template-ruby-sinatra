class Picasyfijas

	def initialize

	@numero = numero[1,2,3,4]

	@numIngresado = 4021
	@numPicas = 0
	@numFijas = 0
	@numIntentos = 0

	end

	def revisaPicasYFijas
		numDividido = numIngresado.split("")
		if @numIntentos >= 4
			print "Se superaron el número de intentos"
		else
			for i in (0..@numero.length)
				for j in (0..numDividido.length)
					if i == j and numero[i] == numDividido[j]
						numFijas+=1 
						print @numero[i]
					elsif i != j and numero[i] == numDividido[j]
						numPicas+=1
					end
				end 
			end
			if @numFijas == 4
				print "Ganador"
			end
			@numIntentos+=1
		end
	end
end
