require './account.rb'

describe Account do
  context "when opening the bank account" do
    it "is opened with zero balance and empty transactions array" do
      example = Account.new
      p example
      expect(example).to have_attributes(:current_balance => 0, :transactions => [])
    end
end
end
