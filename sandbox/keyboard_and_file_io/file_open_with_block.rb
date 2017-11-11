require 'pry'

filename = File.join(File.dirname(__FILE__), 'data/records.txt')

File.open(filename) do |file|
  while record = file.gets
    name, nationality, instrument, dates = record.chomp.split('|')
    puts "#{name} (#{dates}), who was #{nationality}, played #{instrument}."
  end
end
# Pablo Casals (1876-1973), who was Catalan, played cello.
# Jascha Heifetz (1901-1988), who was Russian-American, played violin.
# Emanuel Feuermann (1902-1942), who was Austrian-American, played cello.
