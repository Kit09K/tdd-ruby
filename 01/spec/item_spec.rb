require_relative '../lib/cart'
require_relative '../lib/item'

RSpec.describe Item do
    it 'Price must be a number' do
        expect { Item.new(name: "Apple", price: "abc") }.to raise_error(ArgumentError, "Price must be a number")
    end

    it 'Price must be greater than or equal to 0' do
        expect { Item.new(name: "Apple", price: -1) }.to raise_error(ArgumentError, "Price must be greater than or equal to 0")
    end
end