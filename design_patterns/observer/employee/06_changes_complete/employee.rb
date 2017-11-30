module Subject
  def initialize
    @observers = []
    @changed = false
  end

  def notify_observers
    @observers.each do |observer|
      observer.call(self)
    end
  end

  def changes_complete
    if @changed
      notify_observers
      @changed = false
    end
  end

  def changed
    @changed = true unless @changed
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

  def title=(new_title)
    @title = new_title
    changed
  end

  def salary=(new_salary)
    @salary = new_salary
    changed
  end
end

leo = Employee.new('Leonardo', 'Programmer', '2000')
leo.add_observer do |changed_employee|
  puts("Cut a new check for #{changed_employee.name}!")
  puts("For now #{changed_employee.name} is #{changed_employee.title}!")
  puts("His salary is now #{changed_employee.salary}!")
end

leo.title = 'Bitch'
leo.salary = 10000
leo.changes_complete
