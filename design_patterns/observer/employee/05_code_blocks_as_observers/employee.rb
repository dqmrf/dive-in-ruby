module Subject
  def initialize
    @observers = []
  end

  def notify_observers
    @observers.each do |observer|
      observer.call(self)
    end
  end

  def add_observer(&observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end
end

class Employee
  include Subject
  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    super()
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end

leo = Employee.new('Leonardo', 'Programmer', '2000')
leo.add_observer do |changed_employee|
  puts("Cut a new check for #{changed_employee.name}!")
  puts("His salary is now #{changed_employee.salary}!")
end
leo.salary = 2500
