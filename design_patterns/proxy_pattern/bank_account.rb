class BankAccount
  attr_reader :balance

  def initialize(starting_balance=0)
    @balance = starting_balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

class AccountProxy
  def initialize(subject)
    @subject = subject
  end

  def method_missing(name, *args)
    @subject.send(name, *args)
  end
end

proxy = AccountProxy.new( BankAccount.new )
proxy.deposit(50)
proxy.withdraw(10)
p proxy.balance #=> 40
