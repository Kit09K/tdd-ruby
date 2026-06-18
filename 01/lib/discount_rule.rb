class DiscountRule
    CONTINUE_PRICE = 1000
    DISCOUNT_RATE = 0.9

    def apply_discount(total)
        total >= CONTINUE_PRICE ? (total * DISCOUNT_RATE) : total
    end
end