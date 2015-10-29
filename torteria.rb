class Torteria

	def initialize 
		@horno = []	
	end

	def meter_torta
		@horno << Torta.new
	end

	def sacar_torta
		@horno.pop
	end

	def llenar_horno
		while @horno.length < 12 do
			meter_torta
		end
	end

	def vaciar_horno
		while not @horno.empty? do
			sacar_torta			
		end
	end

	def cocinar_tortas
		@horno.each do |torta|
			torta.hornear(rand(0..15))
		end
	end

	def revisar_tortas
		@horno.each do |torta|
			puts torta.estado
		end
	end

	def contar_tortas
		@horno.length		
	end	
end

class Torta

	def initialize
		@time = 0
	end

	attr_accessor :time

	def estado
		if @time < 5
			return "crudo"
		elsif @time >= 5 && @time < 10
		    return "casi lista"
		elsif @time >= 10 && @time < 20
			return "lista"
		elsif @time > 20
			return "quemada"
		end		
	end

	def hornear(tiempo)
		@time += tiempo 
	end
end


cocina = Torteria.new()
puts "El horno tiene #{cocina.contar_tortas}"
puts "El horno tiene #{cocina.contar_tortas}"
cocina.vaciar_horno
puts "El horno tiene #{cocina.contar_tortas}"

cocina.llenar_horno
cocina.cocinar_tortas
cocina.revisar_tortas


torta_de_jamon = Torta.new()

