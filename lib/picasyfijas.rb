class Picasyfijas

	def initialize

	@numero = numero[-1,-1,-1,-1]

	end

	def marcador
		if @punto_j1 == 3 and @punto_j2 == 3 
				@estado="deuce"
		end
        if (@estado=="deuce")
	         if @punto_j1==4
					@estado="adv_j1"
			else @punto_j2==4
					@estado="adv_j2"
			end
        else

	        if @punto_j1 == 3 and @punto_j2 == 3 
				@estado="deuce"
			elsif @punto_j1 > 3 
				@estado="win_j1"
			elsif @punto_j2 > 3 
				@estado="win_j2"
			
			else
				@estado="#{@puntos[@punto_j1]} - #{@puntos[@punto_j2]}"
			end
		end
		

		return @estado
	end

	def marcar_j1
		@punto_j1 +=1
	end

	def marcar_j2
		@punto_j2 +=1
	end
end
