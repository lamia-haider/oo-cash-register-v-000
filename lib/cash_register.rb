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
    @total = @total + price
  end

end
