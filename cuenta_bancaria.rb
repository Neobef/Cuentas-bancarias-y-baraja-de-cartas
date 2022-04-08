class CuentaBancaria
    attr_accessor :banco, :saldo
    def initialize(banco, numero_de_cuenta, saldo = 0)
        raise RangeError, "La cuenta debe tener 8 digitos" if numero_de_cuenta.length != 8
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_bancaria)
        @saldo -= monto
        cuenta_bancaria.saldo += monto
        puts "\nSe transfiere #{monto} a la cuenta #{cuenta_bancaria.banco}\n "
    end
end

class Usuario
    attr_accessor :nombre, :cuentas

    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end
    
    def saldo_total
        saldo_total = 0 
        @cuentas.each do |cuenta|
            saldo_total += cuenta.saldo
        end
        return saldo_total
    end 

end

def imprimir(cuenta1, cuenta2)
    puts "Saldo cuenta #{cuenta1.banco}:\t #{cuenta1.saldo}"
    puts "Saldo cuenta #{cuenta2.banco}:\t #{cuenta2.saldo}"
end    

cuenta1 = CuentaBancaria.new("Banco-Chile", "20080800", 5000)
cuenta2 = CuentaBancaria.new("Banco-Santander", "89812302", 5000)

usuario = Usuario.new("Fabián", [cuenta1, cuenta2])

puts "Saldo total: \t#{usuario.saldo_total}"
imprimir(cuenta1, cuenta2)
cuenta1.transferir(5000, cuenta2)
imprimir(cuenta1, cuenta2)