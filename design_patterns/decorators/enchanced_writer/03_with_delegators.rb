require 'forwardable'

# [1]> Class to which decorator is applies
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


# [2]> Decorators
class WriterDecorator
  extend Forwardable

  def_delegators :@real_writer, :write_line, :rewind, :pos, :close

  def initialize(real_writer)
    @real_writer = real_writer
  end
end

class NumbericWriter < WriterDecorator
  def initialize(real_writer)
    super(real_writer)
    @line_number = 1
  end

  def write_line(line)
    @real_writer.write_line("#{@line_number}: #{line}")
    @line_number += 1
  end
end

class TimeStampingWriter < WriterDecorator
  def write_line(line)
    @real_writer.write_line("#{Time.new}: #{line}")
  end
end


# [3]> Run
writer_num = NumbericWriter.new( SimpleWriter.new( 'data/final_num.txt' ) )
writer_num.write_line('Hello out there!')
writer_num.write_line('This is a line 2')

writer_time = TimeStampingWriter.new(
              SimpleWriter.new( 'data/final_time_stamp.txt' ) )
writer_time.write_line('Hello out there!')
writer_time.write_line('This is a line 2')

writer_time_num = TimeStampingWriter.new(
                  NumbericWriter.new(
                  SimpleWriter.new( 'data/final_time_stamp_num.txt' ) ) )
writer_time_num.write_line('Hello out there!')
writer_time_num.write_line('This is a line 2')
