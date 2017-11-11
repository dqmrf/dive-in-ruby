require 'fileutils'

dirname = File.join(File.dirname(__FILE__), '../sandbox/file_utils')

Dir.chdir(dirname) do
  FileUtils.cp('backer.rb', 'backer.rb.bak')

  FileUtils.mkdir('backup') unless File.exist?('backup')
  FileUtils.cp(['ensure.rb', 'super.rb'], 'backup')
  p Dir['backup/*'] #=> ["backup/super.rb", "backup/ensure.rb"]

  FileUtils.move('backer.rb.bak', 'backup')
  p Dir['backup/*'] #=> ["backup/backer.rb.bak", "backup/super.rb", "backup/ensure.rb"]

  FileUtils.rm_rf('backup')
  p File.exist?('backup') #=> false
end
