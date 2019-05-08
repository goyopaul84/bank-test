require './account.rb'

describe Account do
    it "the account has the first transaction" do
      account = Account.new
      account.add_payment("10-01-2012", 1000)
      expect(account).to have_attributes(:payment_dates => ["10-01-2012"], :payment_amounts => [1000])
    end

      it "contains both dates and amounts in separate arrays" do
        account2 = Account.new
        account2.add_payment("10-01-2012", 1000)
        account2.add_payment("13-01-2012", 2000)
        expect(account2).to have_attributes(:payment_dates => ["10-01-2012", "13-01-2012"], :payment_amounts => [1000, 2000])
      end

      it "contains all three dates and amounts in separate arrays" do
        account3 = Account.new
        account3.add_payment("10-01-2012", 1000)
        account3.add_payment("13-01-2012", 2000)
        account3.add_payment("14-01-2012", -500)
        expect(account3).to have_attributes(:payment_dates => ["10-01-2012", "13-01-2012", "14-01-2012"], :payment_amounts => [1000, 2000, -500])
      end

      it "calculates the balance of first transaction" do
        account4 = Account.new
        account4.add_payment("10-01-2012", 1000)
        expect(account4.balances[-1]).to eq(1000)
        end

      it "calculates the balance of first two transactions" do
        account5 = Account.new
        account5.add_payment("10-01-2012", 1000)
        account5.add_payment("13-01-2012", 2000)
        expect(account5.balances[-1]).to eq(3000)
        end

      it "calculates two credits and debit" do
        account6 = Account.new
        account6.add_payment("10-01-2012", 1000)
        account6.add_payment("13-01-2012", 2000)
        account6.add_payment("14-01-2012", -500)
        p account6
        expect(account6.balances[-1]).to eq(2500)
        end
      end
