class Item
  attr_reader :name, :price

  def initialize(name:, price:)
    raise ArgumentError, "Price must be a number" unless price.is_a?(Numeric)
    raise ArgumentError, "Price must be greater than or equal to 0" if price < 0
    @name = name
    @price = price
  end
end