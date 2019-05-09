require './account.rb'

class Printer
  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def add_transactions(account = Account.new)
    counter = 0
    while counter < (account.payment_dates.length) do
    @transactions.push([account.payment_dates[counter], account.payment_amounts[counter], account.balances[counter]])
    counter += 1
    end
  end

  def first_line
    puts "date || credit || debit || balance"
  end
end
