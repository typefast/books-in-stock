class BookInStock
  attr_reader :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = Float(price)
  end
  
  def price_in_cents
    Integer(price*100 + 0.5) # Round up floating point value
  end
  
  def price_in_cents=(cents)
    @price = cents / 100.0
  end
  
  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end
end

b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.14)
b3 = BookInStock.new("isbn3", "5.67")

puts b1
puts b2
puts b3
puts "Price in cents = #{b3.price_in_cents}"
b3.price_in_cents = 1234
puts "b3 price = #{b3.price}"
puts "b3 in cents again = #{b3.price_in_cents}"
