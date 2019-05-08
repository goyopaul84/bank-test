require './account.rb'

describe Account do
  context "the account is opened with first credit" do
    it "the account has the first transaction" do
      account = Account.new
      account.add_payment("10-01-2012", 1000)
      expect(account).to have_attributes(:payment_dates => ["10-01-2012"], :payment_amounts => [1000])
    end

      it "contains both dates and amounts in separate arrays" do
        account2 = Account.new
        account2.add_payment("10-01-2012", 1000)
        account2.add_payment("13-01-2012", 2000)
        p account2
        expect(account2).to have_attributes(:payment_dates => ["10-01-2012", "13-01-2012"], :payment_amounts => [1000, 2000])
      end

        it "contains all three dates and amounts in separate arrays" do
          account3 = Account.new
          account3.add_payment("10-01-2012", 1000)
          account3.add_payment("13-01-2012", 2000)
          account3.add_payment("14-01-2012", -500)
          p account3
          expect(account3).to have_attributes(:payment_dates => ["10-01-2012", "13-01-2012", "14-01-2012"], :payment_amounts => [1000, 2000, -500])
        end
      end
    end
