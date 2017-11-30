require_relative 'lib/task'
require_relative 'app/make_cake'

make_cake = MakeCakeTask.new
puts make_cake.get_time_required        #=> 21.0
puts make_cake.total_number_basic_tasks #=> 6
