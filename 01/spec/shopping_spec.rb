
require_relative '../lib/shopping'


RSpec.describe Shopping do
  subject(:shopping) { Shopping.new }

  describe '#total_price' do
    it 'calculates the total price' do
      shopping.add_item(Item_shopping.new("Book", 400))
      shopping.add_item(Item_shopping.new("Pen", 1000))
      
      expect(shopping.total_price).to eq(1400)
    end
  end

  describe '#calculator' do
    it 'applies 10% discount when total >= 1000' do
      shopping.add_item(Item_shopping.new("Pen", 1000))
      expect(shopping.calculator).to eq(900.0)
    end

    it 'returns normal price when total < 1000' do
      shopping.add_item(Item_shopping.new("Coffee", 50))
      expect(shopping.calculator).to eq(50)
    end
  end

  describe '#calculator_buy_3_get_1_free' do
    it 'returns free message for 3+ items' do
      3.times { shopping.add_item(Item_shopping.new("Item", 100)) }
      expect(shopping.calculator_buy_3_get_1_free).to eq("You get 1 item free!")
    end

    it 'returns no free message for < 3 items' do
      shopping.add_item(Item_shopping.new("Item", 100))
      expect(shopping.calculator_buy_3_get_1_free).to eq("No free items.")
    end
  end
end