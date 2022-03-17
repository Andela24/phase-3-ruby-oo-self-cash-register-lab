class CashRegister
    
    attr_accessor :total, :last_transaction, :discount :items

    def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    end

    def add_item(title, amount, quantity = 1)
        self.last_transaction = amount * quantity
        self.total += self.last_transaction
        quantity.times do
          self.items << title
        end
      end

end
