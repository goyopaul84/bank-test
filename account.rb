require './payment.rb'

class Account
  attr_reader :payment_dates, :payment_amounts
  def initialize
    @payment_dates = []
    @payment_amounts = []
  end

  def add_payment(payment_date, payment_amount)
    @payment_dates.push(payment_date)
    @payment_amounts.push(payment_amount)
  end
end
