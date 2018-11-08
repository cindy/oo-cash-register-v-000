class CashRegister

  attr_accessor(:discount, :total, :items)

  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @items << title
    @total += price * quantity
  end

  def apply_discount

    if @discount > 0
      @total = (((100-@discount.to_f)/100)* @total).to_i

      return "After the discount, the total comes to $#{@total}."
    end
    "There is no discount to apply."
  end

  def items
    @items.uniq
  end
end
