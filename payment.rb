class Payment
  attr_accessor :payment_date, :payment_amount

  def initialize(payment_date, payment_amount)
    @payment_date = payment_date
    @payment_amount = payment_amount
  end
end
