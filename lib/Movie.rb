class Movie < Product

  attr_reader :title, :year, :director
  attr_writer :title, :year, :director
  def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "Фильм «#{@title}», #{@year}, реж. #{@director}, #{super}"
  end
  
  def update(params)
    super
    @title = params[:title] if params[:title]
    @year = params[:year] if params[:year]
    @director = params[:director] if params[:director]
  end
  
end
