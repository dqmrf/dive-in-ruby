def block_local_variable
  x = "Original X!"

  3.times do |i;x|
    x = i
    p "X in the block is now #{x}"
  end

  p "after the block ended is #{x}"
end

block_local_variable
=begin
"X in the block is now 0"
"X in the block is now 1"
"X in the block is now 2"
"after the block ended is Original X!"
=end
