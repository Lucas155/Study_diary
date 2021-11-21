
class Category
    attr_accessor :name

    def initialize()
        @name = self.categoria()
    end

    def categoria()
    puts "Escolha uma categoria para o seu estudo:"
    puts "[1] React \n[2] JavaScript\n[3] Ruby \n[4] Angular"
  
        option = gets.to_i()

        case option
        when 1
            self.name = "React"
        when 2
            self.name = "JavaScript"
        when 3
            self.name = "Ruby"
        when 4
            self.name = "Angular"
        else
            puts "Opção inválida!."
            categoria();
        end
    end

end

