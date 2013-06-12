require 'minitest/autorun'

require_relative '../lib/money'

class MoneyTest < MiniTest::Unit::TestCase

  def setup
    @money = Money.new(5, :USD)
  end

  def test_dollar_to_franc

  end
end

class BankTest < MiniTest::Unit::TestCase

  def test_bank_class
    assert Bank, Bank.new.class
  end

  # Tests whether
  def test_add_rate
    rate_hash = {}
    rate_hash[[:USD, :EUR]] = 1.3
    bank = Bank.new.add_rate(:USD, :EUR, 1.3)
    assert_equal rate_hash, bank
  end

  def test_rate_currency

  end

end

class SumTest < MiniTest::Unit::TestCase

end