require_relative 'category'

class StudyItem
    attr_accessor :titulo, :categoria

    def initialize(titulo:)
        @titulo = titulo
        @categoria = Category.new().name
    end
    
end