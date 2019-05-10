require './printer.rb'
require './account.rb'

describe Printer do
  account = Account.new
  account.add_payment('10-01-2012', 1000.00)
  printer = Printer.new
  specify { expect { printer.first_line }.to output.to_stdout }

  it 'adds date, amount and balance of one transaction correctly to Printer' do
    account1 = Account.new
    account1.add_payment('10-01-2012', 1000.00)
    printer1 = Printer.new
    printer1.add_transactions(account1)
    expect(printer1).to have_attributes(transactions: [['10-01-2012', 1000.00, 1000.00]])
  end

  it 'adds date, amount and balance of two credits correctly to Printer' do
    account2 = Account.new
    account2.add_payment('10-01-2012', 1000.00)
    account2.add_payment('13-01-2012', 2000.00)
    printer2 = Printer.new
    printer2.add_transactions(account2)
    expect(printer2).to have_attributes(transactions: [['10-01-2012', 1000.00, 1000.00], ['13-01-2012', 2000.00, 3000.00]])
  end

  it 'adds date, amount and balance of two credits and one debit to Printer' do
    account3 = Account.new
    account3.add_payment('10-01-2012', 1000.00)
    account3.add_payment('13-01-2012', 2000.00)
    account3.add_payment('14-01-2012', -500.00)
    printer3 = Printer.new
    printer3.add_transactions(account3)
    p printer3.show_transactions
    expect(printer3).to have_attributes(transactions: [['10-01-2012', 1000.00, 1000.00], ['13-01-2012', 2000.00, 3000.00], ['14-01-2012', -500.00, 2500.00]])
  end
end
