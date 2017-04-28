class TransError < StandardError
end

class BankAccount
  attr_reader :account_number, :savings, :checkings

  @@bank_accounts = 0
  def initialize
    @account_number = new_account
    @savings = 0
    @checkings = 0
    @interest_rate = 0.01
    @@bank_accounts += 1
  end
  def saving
    @savings
  end

  def checking
    @checkings
  end

  def total
     @checkings + @savings
  end

  def deposit(account, amount)
    if account == 'checkings'
      @checkings += amount
    elsif account == 'savings'
      @savings += amount
    end
  end

  def withdraw(account, amount)
    if account.downcase == 'checkings'
      if @checkings - amount < 0
        raise TransError, "You have insufficent funds, your balance is #{@checkings}"
    else
      @checkings -= amount
    end
  else
      if @savings - amount <0
        raise TransError, "You have insufficent funds, your balance is #{@savigns}"
      else
        @savings -= amount
      end
    end
  end

  def self.accounts
    @@bank_accounts
  end

  def account_info
    "Account Number is #{@account_number}\n Interest:#{@interest_rate}\n Total:#{self.total}\nCheckings:#{@checkings}\nSavings:#{@savings}"
  end

  private
  def new_account
     Array.new(10).map { rand(1..9) }.join
  end
end
