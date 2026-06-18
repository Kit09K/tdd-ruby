require_relative 'discount_rule'
require_relative 'gift_rule'

class Cart
    
    def initialize(items)
        @items = items
        @discount_rule = DiscountRule.new
    end

    def total_amount
        total = @items.sum(&:price)
        @discount_rule.apply_discount(total)
        # total >= CONTINUE_PRICE ? (total * DISCOUNT_RATE) : total
    end

    def gift
        count_items = @items.size
        gift_rule = GiftRule.new
        gift_rule.gift(@items)
    end

end