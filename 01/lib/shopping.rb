class Item_shopping
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Shopping
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def total_price
    @items.sum(&:price)
  end

  def calculator
    total = total_price
    if total >= 1000
      total * 0.9
    else
      total
    end
  end

  def calculator_buy_3_get_1_free
    @items.count >= 3 ? "You get 1 item free!" : "No free items."
  end
end

shopping = Shopping.new
shopping.add_item(Item_shopping.new("Book", 400))
shopping.add_item(Item_shopping.new("Pen", 1000))
shopping.add_item(Item_shopping.new("Coffee", 50))

puts shopping.total_price
puts shopping.calculator
puts shopping.calculator_buy_3_get_1_free