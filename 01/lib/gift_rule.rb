class GiftRule
    GIFT_CONDITION = 3
    FREE_GIFT = 1
    NO_GIFT = 0

    def gift(items)
        items.size >= GIFT_CONDITION ? FREE_GIFT : NO_GIFT
    end
end