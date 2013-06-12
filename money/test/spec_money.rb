require 'minitest/spec'
require 'minitest/autorun'

require_relative '../lib/money'

describe Money, 'The amount of money in a currency' do
  describe 'Handling USD' do
    before :each do
      @usd = Money.new(100, :USD)
      @franc = Money.new(100, :CHF)
    end

    it 'should convert currencies' do
      @usd.must_equal(Money.new(100, :USD))
    end

    it 'should have the proper class' do
      @usd.class.must_equal(Money)
    end
  end

  describe 'Handling Francs' do

    it 'should handle francs' do
     # @franc.currency.wont_equal(:USD)
    end

    it 'should add one amount to another' do
    end
  end
end


describe Bank, "Place where money is stored and converted" do


end