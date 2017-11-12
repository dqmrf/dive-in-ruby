require_relative 'decommenter'

sandbox_path = File.join(File.dirname(__FILE__), 'sandbox')

Dir.chdir(sandbox_path)

File.open('infile.rb') do |infile|
  File.open('outfile.rb', 'w') do |outfile|
    DeCommenter::decomment(infile, outfile)
  end
end
