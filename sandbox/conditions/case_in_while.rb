while line = gets.chomp do
  case line
  when /^\s*#/
    next
  when /^quit$/i
    break
  else
    puts line.reverse
  end
end
