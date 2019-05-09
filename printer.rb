require './account.rb'

class Printer
  attr_accessor :transactions

  def initialize
    @transactions = []
  end

  def add_transactions(account = Account.new)
    @transactions << account.payment_dates[0]
  end

  def first_line
    puts "date || credit || debit || balance"
  end

  def show_transactions

  end
end
