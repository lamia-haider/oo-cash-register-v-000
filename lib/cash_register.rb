require 'pry'

class CashRegister
  attr_accessor :discount, :total

  def initialize(discount=0) #because this is optional we're setting a default value that can be overriden
    @total = 0
    @discount = discount #otherwise discount will be nil
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total = @total + (price * quantity)
  end

  def apply_discount
    @total = (@total - ((@discount/100.0) * @total)).to_i
    puts "After the discount, the total comes to $#{@total}."

  end

end
