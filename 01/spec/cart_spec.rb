require_relative '../lib/cart'
require_relative '../lib/item'

RSpec.describe Cart do
    it 'Give empty item, total amount should be 0' do
        cart = Cart.new([])
        expect(cart.total_amount).to eq(0)
    end

    it 'Give 1 item with price 10 , total amount should be 10' do
        cart = Cart.new([Item.new(name: "Apple", price: 10)])
        expect(cart.total_amount).to eq(10)
    end

    it 'Give 2 item with price 600 and 300, total amount should be 900' do
        cart = Cart.new([Item.new(name: "Apple", price: 600),
                         Item.new(name: "Banana", price: 300)])
        expect(cart.total_amount).to eq(900)
    end

    it 'Give 2 item with price 600, total amount should be 1080' do
        cart = Cart.new([Item.new(name: "Apple", price: 600),
                         Item.new(name: "Banana", price: 600)])
        expect(cart.total_amount).to eq(1080)
    end

    it 'Give 3 item with price 400, 300 and 300, total amount should be 900 and get 1 item free' do
        cart = Cart.new([Item.new(name: "Apple", price: 400),
                         Item.new(name: "Banana", price: 300),
                         Item.new(name: "Orange", price: 300)])
        expect(cart.total_amount).to eq(900)
        expect(cart.gift).to eq(1)
    end

end