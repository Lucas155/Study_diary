require_relative 'studyItem'
@itens = []

def menu()
    puts "Diario de Estudos \n"
    puts " [1] Cadastrar um item para estudar\n [2] Ver todos os itens cadastrados\n [3] Buscar um item de estudo\n [4] Sair"    
    opcao = gets.chomp.to_i
end

def itens_cadastrados()
    puts "Todos titulos de estudos cadastrados:"
    @itens.each.with_index do |item, posicao| 
         puts "#{posicao} - " + "#{item}"
    end
    puts "\n"
end

def buscar()
    puts "Buscar titulo cadastrado"
    titulo = gets.chomp
    result = []
    @itens.each.with_index do |letra, posicao| 
        resultado = letra.include?(titulo)
        if resultado == true
            a = @itens[posicao]
            result << a
        else
            puts "Titulo não encontrado"
        end
    end
     puts result
end

def cadastrar_item()
    puts "Cadastre um titulo de estudo:"
    titulo = gets.chomp()
    study_item = StudyItem.new(titulo: titulo)
    puts "O item #{study_item.titulo} foi cadastrado na categoria #{study_item.categoria} com sucesso"
    item = "Titulo:" + study_item.titulo + " - " + "Categoria:" + study_item.categoria  
    @itens << item
end

opcao = menu()

loop do

    case opcao
    when 1
        cadastrar_item()
    when 2
        itens_cadastrados()
    when 3
        buscar()
    when 4
        puts "Tchau até mais tarde! :)"
        break
    else 
        puts "Opção inválida"
    end

    opcao = menu()

end
