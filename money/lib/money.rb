class Money
  attr_accessor :amount, :currency

  def initialize(amount, currency)
    @amount = amount
    @currency = currency
  end

  def self.dollar(amount)
    Money.new(amount, :USD)
  end

  def self.franc(amount)
    Money.new(amount, :CHF)
  end

  def +(amount)
    Sum.new(self, amount)
  end

  def *(amount)
    new_amount = @amount * amount
    Money.new(new_amount, @currency)
  end

  def ==(amount)
    currency_symbol = amount.currency
    currencies_match = amount.currency == @currency
    amounts_match = @amount == amount.amount
    if currencies_match && amounts_match
      true
    else
      false
    end
  end

end

class Bank
  def initialize
    @ratings = {}
  end

  def ==(amount)

  end

  def currency
  end

  def add_rate(from, to, rate)
    @ratings[[from, to]] = rate
    pp @ratings
  end

  def rate(from, to)
    if from == to
      return 1
    else
      @ratings[[from, to]]
    end
  end

  def reduce(amount, currency)
    if amount.class == Sum
      new_money = amount.plus
      new_amount = new_money.amount / rate(amount.currency, currency)
      return Money.new(new_amount, currency)
    elsif amount.class == Money
      new_amount = amount.amount / rate(amount.currency, currency)
      return Money.new(new_amount, currency)
    end
  end
end

class Sum
  attr_reader :augend, :addend

  def initialize(money1, money2)
    @augend = money1
    @addend = money2
  end

  def plus
    new_amount = @augend.amount + @addend.amount
    Money.new(new_amount, @augend.currency)
  end
end