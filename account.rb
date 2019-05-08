class Account
attr_accessor :account_id, :payment_made, :payment_date

  def initialize(account_id, payment_made, payment_date)
    @account_id = account_id
    @payment_made = payment_made
    @payment_date = payment_date
  end
end
