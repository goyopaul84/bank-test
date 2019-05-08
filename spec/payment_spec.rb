require './payment.rb'

describe Payment do
  context "first credit payment created" do
    it "first credit details are stored" do
      first_credit = Payment.new("08-05-19", 50)
      p first_credit
      expect(first_credit).to have_attributes(:payment_date => "08-05-19", :payment_amount => 50)
    end
end
end
