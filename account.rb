class Account
attr_accessor :current_balance, :transactions

  def initialize
    @current_balance = 0
    @transactions = []
  end
end
