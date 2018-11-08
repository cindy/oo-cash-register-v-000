class CashRegister

  attr_accessor(:discount, :total)

  def initialize(discount=0)
    @total = 0
    @discount = discount
  end

  def add_item(title, price, quantity=1)
    @total += price * quantity
  end

  def apply_discount

    if @discount
      @total *= (100-@discount.to_f)
      @total = @total.to_i

      return "After the discount, the total comes to $#{@total}."
    end
    "There is no discount to apply."
  end
end
