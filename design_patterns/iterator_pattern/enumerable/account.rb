class Account
  include Comparable

  attr_accessor :name, :balance

  def initialize(name, balance)
    @name = name
    @balance = balance
  end

  def <=>(other)
    balance <=> other.balance
  end
end

class Portfolio
  include Enumerable

  def initialize
    @accounts = []
  end

  def each(&block)
    @accounts.each(&block)
  end

  def add_account(account)
    @accounts << account
  end
end


michael = Account.new('Michael', 1000)
leonardo = Account.new('Leonardo', 5000)
pavel = Account.new('Pavel', 700000000)

portfolio = Portfolio.new
portfolio.add_account(michael)
portfolio.add_account(leonardo)
portfolio.add_account(pavel)

p portfolio.any? {|account| account.balance > 2000 } #=> true
p portfolio.all? {|account| account.balance > 2000 } #=> false
p michael > leonardo                                 #=> false
