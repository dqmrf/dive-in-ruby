class SimpleLogger
  attr_accessor :level

  ERROR = 1
  WARNING = 2
  INFO = 3

  @@instance = SimpleLogger.new

  def self.instance
    @@instance
  end

  def initialize
    filename = File.join(File.dirname(__FILE__), '../data/log.txt')
    @log = File.open(filename, 'w')
    @level = WARNING
  end

  def error(msg)
    @log.puts(msg)
    @log.flush
  end

  def warning(msg)
    @log.puts(msg) if @level >= WARNING
    @log.flush
  end

  def info(msg)
    @log.puts(msg) if @level >= INFO
    @log.flush
  end

  private_class_method :new
end

SimpleLogger.instance.error('Unexpected error occurred!')
SimpleLogger.instance.info('Some info log.')
SimpleLogger.instance.warning('WARNING!')
