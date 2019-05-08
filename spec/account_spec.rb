require './account.rb'

describe Account do
  context "when opening the bank account" do
    it "is opened with ID, initial deposit amount and date" do
      example = Account.new(454944, 1000, "14-02-2010")
      p example
      # (:account_id => 454_944, :payment => 1000, :payment_date => '14-02-2010')
      expect(example).to have_attributes(:account_id => 454944, :payment_made => 1000, :payment_date => "14-02-2010")
    end
  end
end
