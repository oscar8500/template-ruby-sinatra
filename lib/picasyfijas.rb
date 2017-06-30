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
		if @numIngresado == @numero.join
			@retorno[0] = "El número ingresado es el correcto"
		else
			@retorno[0] = "El número ingresado no es el correcto"
		end
		#numDividido = @numIngresado.split("")
#		if @numIntentos >= 4
#			print "Se superaron el número de intentos"
#		else
			for i in (0..@numero.length-1)
				#for j in (0..numDividido.length)
					puts "@numero[i]: #{@numero[i]} @numIngresado.slice(i): #{@numIngresado.slice(i)}" 
					if @numero[i] == @numIngresado.slice(i).to_i
						@numFijas+=1 
						#print @numero[i]
					#elsif i != j and numero[i] == numDividido[j]
					#	numPicas+=1
					end
				#end 
			end
#			if @numFijas == 4
#				print "Ganador"
#			end
#			@numIntentos+=1
#		end
		@retorno[1] = "El número de fijas es #{@numFijas}"
		return @retorno
		#return 
	end
end
