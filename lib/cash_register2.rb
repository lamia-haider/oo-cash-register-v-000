class CashRegister
  attr_accessor :total, :discount, :items, :last_transaction

  def initialize (discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  #If we want to void last transaction we need to remove the last item from the array and it's value from the total.
  
   def add_item (title, price, quantity=1)
     self.total += (price * quantity) 
     quantity.times do
       @items << title
     end
     self.last_transaction = (price*quantity)
   end


  def apply_discount
    if discount > 0
    self.total = (total - (total * (discount/100.0))).to_i
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    self.total -= last_transaction
  end 

end

