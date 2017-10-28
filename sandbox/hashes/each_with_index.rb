hash = {
  'red' => 'ruby',
  'white' => 'diamond',
  'green' => 'emerald'
}

hash.each.with_index do |(key, value), i|
  puts "Pair #{i} is: #{key}/#{value}"
end
