class SimpleWriter
  def initialize(path)
    relative_path = File.join(File.dirname(__FILE__), path)
    @file = File.open(relative_path, 'w')
  end

  def write_line(line)
    @file.print(line)
    @file.print("\n")
  end

  def pos
    @file.pos
  end

  def rewind
    @file.rewind
  end

  def close
    @file.close
  end
end


writer = SimpleWriter.new('data/out.txt')

class << writer
  alias old_write_line write_line

  def write_line(line)
    old_write_line("#{Time.new}: #{line}")
  end
end

writer.write_line('Hello there!')
