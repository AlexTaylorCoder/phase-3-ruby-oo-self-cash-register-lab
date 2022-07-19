

class CashRegister
    attr_accessor :total
    attr_accessor :lastprice
    attr_accessor :discount, :items
    def initialize discount = nil
        @total = 0
        @discount = discount
        @items = []
    end
    def add_item title, price, quantity = 1
        self.lastprice = price * quantity
        quantity.times {self.items << title}
        self.total += price * quantity
    end
    def apply_discount
        if (discount)
            self.total *= (1 - self.discount.to_f / 100)
            "After the discount, the total comes to $#{self.total.to_i}."
        else 
            "There is no discount to apply."
        end
    end
    def void_last_transaction
            self.total -= self.lastprice
    end
end
