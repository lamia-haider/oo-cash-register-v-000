require 'pry'
class CashRegister
  attr_accessor :discount, :total, :items

  def initialize(discount=0) #because this is optional we're setting a default value that can be overriden
    @total = 0
    @discount = discount #otherwise discount will be nil
    @items = []
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    @total = @total + (price * quantity)
    @items << title
  end

  def apply_discount
    if @discount > 0
      @total = (@total - ((@discount/100.0) * @total)).to_i
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end

  def items
    @items
  end

end
