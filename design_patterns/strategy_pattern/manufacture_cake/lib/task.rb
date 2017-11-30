class Task
  attr_accessor :name, :parent

  def initialize(name)
    @name = name
    @parent = nil
  end

  def total_number_basic_tasks
    1
  end

  def get_time_required
    0.0
  end
end

class CompositeTask < Task
  attr_reader :sub_tasks

  def initialize(name)
    super(name)
    @sub_tasks = []
  end

  def add_sub_task(task)
    @sub_tasks << task
    task.parent = self
  end

  def remove_sub_task(task)
    @sub_tasks.delete(task)
    task.parent = nil
  end

  def get_time_required
    time = 0.0
    @sub_tasks.each {|task| time += task.get_time_required }
    time
  end

  def total_number_basic_tasks
    total = 0
    @sub_tasks.each {|task| total += task.total_number_basic_tasks }
    total
  end
end
