require 'cpf_cnpj'

loop do
    cpf = ''
    system 'clear'
    puts '# Menu de Opções #'
    puts '1 - Validar CPF'
    puts '0 - SAIR'
    puts
    print '# Selecione uma opção: '
    option = gets.chomp.to_i
    puts
    case option
    when 0
        puts '# Fim da execução!'
        break
    when 1
        print '# Digite o CPF (apenas números): '
        cpf = gets.chomp.to_i
        puts
        unless CPF.valid?(cpf)
            puts "# O CPF #{CPF.format(cpf)} é válido!"
        else
            puts "# O CPF digitado não é válido!"
        end
    else
        puts '# Opção inválida!'
    end
    puts
    print "# Pressione uma tecla para continuar..."
    gets.chomp
end
