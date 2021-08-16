class Book < Product

    attr_reader :title, :genre, :author
    attr_writer :title, :genre, :author
    def initialize(params)
        super
    
        @title = params[:title]
        @genre = params[:genre]
        @author = params[:author]
    end

    def to_s
        "Книга «#{@title}», #{@genre}, автор — #{@author}, #{super}"
    end

    def update(params)
        super
        @title = params[:title] if params[:title]
        @genre = params[:genre] if params[:genre]
        @author = params[:author] if params[:author]
    end
end
