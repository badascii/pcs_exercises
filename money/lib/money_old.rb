class Money
  attr_reader :amount, :currency

  def initialize(amount, currency)
    @amount   = amount
    @currency = currency
  end

  def self.dollar(amount)
    Money.new(amount, :USD)
  end

  def self.franc(amount)
    Money.new(amount, :CHF)
  end

  # Boolean method that tests whether currency amount is equal to conversion
  def ==(other)
    @amount == other.amount &&
      @currency == other.currency
  end

  def *(multiplier)
    Money.new(@amount * multiplier, @currency)
  end

  # Creates a new instance of Sum
  def +(addend)
    Sum.new(self, addend)
  end
  # Returns new money amount ++
  def reduce(bank, to_currency)
    rate = bank.rate(@currency, to_currency)
    Money.new(@amount / rate, to_currency)
  end
end

class Bank
  def initialize
    @rates = {}
  end

  #
  def reduce(expression, to_currency)
    expression.reduce(self, to_currency)
  end

  # Adds a new currency exchange rate +
  def add_rate(from, to, rate)
    @rates[[from, to]] = rate
  end

  # Returns conversion of currency +
  def rate(from, to)
    return 1 if from == to
    @rates[[from, to]]
  end
end

class Expression
end

class Sum
  attr_reader :augend, :addend

  # +
  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  # Smashes augend and addend together +++
  def reduce(bank, to_currency)
    amount = @augend.reduce(bank, to_currency).amount +
      @addend.reduce(bank, to_currency).amount
    Money.new(amount, to_currency)
  end

  # Doesn't actually sum until reduce is called
  def +(addend)
    Sum.new(self, addend)
  end

  def *(multiplier)
    Sum.new(@augend * multiplier, @addend * multiplier)
  end
end
