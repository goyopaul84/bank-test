require 'account'

describe Account do
  it 'the account has the first transaction' do
    account = double('fake account')
    allow(account).to receive_messages(payment_dates: ['10-01-2012'], payment_amounts: [1000.00])
    expect(account.payment_dates).to eq(['10-01-2012'])
    expect(account.payment_amounts).to eq([1000.00])
  end

  it 'contains both dates and amounts in their respective arrays' do
    account2 = Account.new
    account2.add_payment('10-01-2012', 1000.00)
    account2.add_payment('13-01-2012', 2000.00)
    expect(account2).to have_attributes(payment_dates: ['10-01-2012', '13-01-2012'], payment_amounts: [1000.00, 2000.00])
  end

  it 'contains all three dates and amounts in their respective arrays' do
    account3 = Account.new
    account3.add_payment('10-01-2012', 1000.00)
    account3.add_payment('13-01-2012', 2000.00)
    account3.add_payment('14-01-2012', -500.00)
    expect(account3).to have_attributes(payment_dates: ['10-01-2012', '13-01-2012', '14-01-2012'], payment_amounts: [1000.00, 2000.00, -500.00])
  end

  it 'calculates the balance of first transaction' do
    account4 = Account.new
    account4.add_payment('10-01-2012', 1000.00)
    expect(account4.balances[-1]).to eq(1000.00)
  end

  it 'calculates the balance of first two transactions' do
    account5 = Account.new
    account5.add_payment('10-01-2012', 1000.00)
    account5.add_payment('13-01-2012', 2000.00)
    expect(account5.balances[-1]).to eq(3000.00)
  end

  it 'calculates two credits and debit' do
    account6 = Account.new
    account6.add_payment('10-01-2012', 1000.00)
    account6.add_payment('13-01-2012', 2000.00)
    account6.add_payment('14-01-2012', -500.00)
    expect(account6.balances[-1]).to eq(2500.00)
  end
end
