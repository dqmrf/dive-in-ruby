require 'fileutils'

dirname = File.join(File.dirname(__FILE__), '../sandbox/file_utils')

Dir.chdir(dirname) do

  # If you want to see what would happen if you were to run a particular
  # FileUtils command:
  FileUtils::DryRun.rm_rf('backup') #=> rm -rf backup

  # If you want to make sure you don’t accidentally delete, overwrite, or move
  # files, you can give your commands to FileUtils::NoWrite
  FileUtils::NoWrite.rm('super.rb')
  p File.exist?('super.rb') #=> true

end
