if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__
  
    [STDIN, STDOUT].each do |io|
      io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end

require_relative "lib/product"
require_relative "lib/book"
require_relative "lib/movie"

mask = Movie.new(price: 290, amount: 4)

puts "Фильм Маска стоит #{mask.price} руб, в наличии #{mask.amount} шт."
