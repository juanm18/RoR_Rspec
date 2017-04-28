require_relative 'bank_account'
RSpec.describe BankAccount do
  before(:each) do
    @test = BankAccount.new
    @test.deposit('checkings', 100)
    @test.deposit('savings', 80)
  end
  it "has a method for retrieving the checkings account balance" do
    expect(@test.checking).to eq(@test.checkings)
  end
  it "has a method that retrieves the total account balance" do
  expect(@test.total).to eq(@test.checkings + @test.savings)
  end
  it "has a method to withdrawing money" do
    checkings_balance = @test.checkings
    savings_balance = @test.savings
    @test.withdraw('checkings', 50)
    @test.withdraw('savings', 30)
    expect(@test.checking).to eq(checkings_balance - 50)
    expect(@test.saving).to eq(savings_balance - 30)
  end
  it 'raises and error when a user tries to withdraw money with no sufficient funds' do
    checkings_balance = @test.checkings
    savings_balance = @test.savings
    expect{@test.withdraw('checkings', checkings_balance + 1)}.to raise_error(TransError)
    expect{@test.withdraw('savings', savings_balance + 1)}.to raise_error(TransError)
  end
  it 'raises and error when a user tries to retrieve the number of accounts' do
    expect{@test.self.accounts}.to raise_error(NoMethodError)
  end
  it 'raises an error when user tries to set an Interest Rate' do
    expect{@test.interest_rate=6}.to raise_error(NoMethodError)
  end
end
