class CashRegister
    attr_accessor :total, :items, :discount, :last_transaction

    def initialize (discount=0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.total += price * quantity
        self.last_transaction = price * quantity
        # self.item << title * quantity
        quantity.times do 
            self.items << title
        end
    end

    def apply_discount
        return "There is no discount to apply." if self.discount == 0
        self.total *= (100.0 - self.discount.to_f) / 100
        # return self.total.to_i
        "After the discount, the total comes to $#{self.total.to_i}."
    end

   def void_last_transaction
    self.total -= self.last_transaction
   end

end

# items = [tomato, tomato, apple, apple, apple]  
# total = $25  
# tomatoPrice = $5  
# applePrice = $5
# the last transaction was apple and you have to 
# 1) remove apple 3 times from your items array so that items is just [tomato, tomato]
# 2) you have to reduce the total by the price of 3 apples. So if the apple costed $3 each, you have to reduce total by $9