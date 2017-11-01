array = ["2",1,5,"3",4,"6"]

p array.sort {|a, b| a.to_i <=> b.to_i } #=> [1, "2", "3", 4, 5, "6"]
p array.sort_by {|a| a.to_i }            #=> [1, "2", "3", 4, 5, "6"]
p array.sort_by(&:to_i)                  #=> [1, "2", "3", 4, 5, "6"]
