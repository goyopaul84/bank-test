require 'account'

class Printer
  attr_reader :transactions

  def initialize
    @transactions = []
  end

  def add_transactions(account = Account.new)
    counter = 0
    while counter < account.payment_dates.length
      @transactions.push([account.payment_dates[counter], account.payment_amounts[counter], account.balances[counter]])
      counter += 1
    end
  end

  def first_line
    puts 'date || credit || debit || balance'
  end

  def show_transactions
    puts first_line
    @transactions.reverse_each do |transaction|
      if transaction[1] < 0
        puts "#{transaction[0]} || || #{format('%.2f', transaction[1] * -1)} || #{format('%.2f', transaction[2])}"
      else
        puts "#{transaction[0]} || #{format('%.2f', transaction[1])}  || || #{format('%.2f', transaction[2])}"
      end
    end
  end
end
