class Account
  attr_reader :payment_dates, :payment_amounts, :balances
  def initialize
    @payment_dates = []
    @payment_amounts = []
    @balances = []
  end

  def add_payment(payment_date, payment_amount)
    @payment_dates.push(payment_date)
    @payment_amounts.push(payment_amount)
    calculate_balance
  end

  def calculate_balance
    if @balances.length == 0
      @balances.push(@payment_amounts[-1])
    else
      @balances.push(@balances[-1] + @payment_amounts[-1])
    end
  end
end
