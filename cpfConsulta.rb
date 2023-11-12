require "cpf_cnpj"

cpf = 0

puts 'Digite somente os numeros do seu CPF para validação: '
    cpf = gets.chomp.to_i

def validCpf (cpf)
    if CPF.valid?(cpf)
        cpf = CPF.new(cpf)
        puts "O CPF #{cpf.formatted} é valido."
    else 
        puts "CPF invalido: #{cpf}!"
    end
end

validCpf (cpf)