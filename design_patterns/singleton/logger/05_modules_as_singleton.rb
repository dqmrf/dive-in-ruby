module ModuleBasedLogger
  ERROR = 1
  WARNING = 2
  INFO = 3

  filename = File.join(File.dirname(__FILE__), '../data/log.txt')
  @@log = File.open(filename, 'w')
  @@level = WARNING

  def self.error(msg)
    @@log.puts(msg)
    @@log.flush
  end

  def self.warning(msg)
    @@log.puts(msg) if @@level >= WARNING
    @@log.flush
  end

  def self.info(msg)
    @@log.puts(msg) if @@level >= INFO
    @@log.flush
  end

  def self.level=(new_level)
    @@level = new_level
  end

  def self.level
    @@level
  end
end

ModuleBasedLogger::level = ModuleBasedLogger::INFO
ModuleBasedLogger::error('Unexpected error occurred!')
ModuleBasedLogger::info('Some info log.')
ModuleBasedLogger::warning('WARNING!')
