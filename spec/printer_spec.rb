require './printer.rb'
require './account.rb'

describe Printer do
    account = Account.new
    account.add_payment("10-01-2012", 1000)
    printer = Printer.new
    specify { expect { printer.first_line }.to output.to_stdout }

  it "adds date of one transaction correctly to Printer" do
    account = Account.new
    account.add_payment("10-01-2012", 1000)
    printer = Printer.new
    printer.add_transactions(account)
    expect(printer).to have_attributes(:transactions => ["10-01-2012"])
  end
end
