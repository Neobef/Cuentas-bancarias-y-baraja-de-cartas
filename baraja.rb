require_relative 'carta.rb'

class Baraja
    attr_accessor :cartas

    def initialize (cartas)
        pintas = ["C","D","E","T"]
        @cartas = []
        pintas.each do |pinta|
            13.times do |numero|
                @cartas.push(Carta.new(numero + 1,pinta))
            end
        end
    end

    def barajar
        @cartas.shuffle!
    end
    
    def sacar
        carta = @cartas.pop
        puts "#{carta.numero}-#{carta.pinta}"
    end

    def repartir_mano
        5.times do
            sacar
        end
    end
    
end

carta = []
crupier = Baraja.new(carta)
crupier.barajar
crupier.repartir_mano