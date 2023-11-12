# Validador de CPF em Ruby

Este é um simples programa Ruby que utiliza a gem `cpf_cnpj` para validar a entrada do usuário como um número de CPF. Ele solicita que o usuário insira apenas os números do CPF, valida a entrada e exibe uma mensagem indicando se o CPF é válido ou inválido.

## Pré-requisitos

Antes de executar o programa, certifique-se de ter a gem `cpf_cnpj` instalada. Você pode adicionar a seguinte linha ao seu arquivo `Gemfile` e executar `bundle install`:

```ruby
gem 'cpf_cnpj'
```

## Como Usar

1. Execute o código em um ambiente Ruby, como um terminal.

2. O programa solicitará que você insira apenas os números do seu CPF.

3. Após a entrada, o programa verificará se o CPF é válido.

4. Será exibida uma mensagem indicando se o CPF é válido ou inválido.

## Exemplo de Uso

```ruby
require "cpf_cnpj"

cpf = 0

puts 'Digite somente os numeros do seu CPF para validação: '
cpf = gets.chomp.to_i

def validCpf(cpf)
  if CPF.valid?(cpf)
    cpf = CPF.new(cpf)
    puts "O CPF #{cpf.formatted} é válido."
  else
    puts "CPF inválido: #{cpf}!"
  end
end

validCpf(cpf)
```

Lembre-se de inserir apenas os números do CPF durante a execução do programa. Este é um exemplo básico e pode ser expandido conforme necessário. Consulte a documentação da [gem `cpf_cnpj`](https://github.com/fnando/cpf_cnpj) para obter mais informações sobre o uso da gem.
