sandbox_path = File.join(File.dirname(__FILE__), '../sandbox')

newdir = sandbox_path + '/newdir'
newfile = 'newfile.txt'

Dir.mkdir(newdir) unless File.exist?(newdir)

Dir.chdir(newdir) do
  File.open(newfile, 'w') do |file|
    file.puts 'Sample file in new directory.'
  end

  puts "Current directory: #{Dir.pwd}"
  print 'Directory listing: '
  p Dir.entries('.')

  # Delete file
  File.unlink(newfile)
end

Dir.rmdir(newdir)
