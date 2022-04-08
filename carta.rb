class Carta
    attr_accessor :numero, :pinta
    
    def initialize(numero, pinta)
        raise ArgumentError, "La pinta solo puede ser 'C' de corazón, 'D' de Diamante,'E' de Espada o 'T' de Trébol" if pinta != 'C' && pinta != 'D' && pinta != 'E' && pinta != 'T'
        @numero = numero
        @pinta = pinta
    end
        
end