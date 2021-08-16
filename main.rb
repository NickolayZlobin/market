
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
require 'rexml/document'
require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/disk'

total_price = 0
products = Product.read_from_xml('data/products.xml')
choice = nil
while choice != "x"
  Product.showcase(products) 
  choice = STDIN.gets.chomp
  if choice != "x" && choice.to_i < products.size && choice.to_i >= 0
    product = products[choice.to_i]
    total_price += product.buy
  end
end
puts "Спасибо за покупки, с Вас #{total_price} руб."



