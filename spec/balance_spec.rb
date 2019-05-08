require './balance.rb'

describe Balance do
  context "upon opening of the bank account" do
    it "the balance is zero" do
      first_balance = Balance.new
      p first_balance
      expect(first_balance).to have_attributes(:balance => [0])
    end
end
end
