module Sudoku

  class Puzzle
    ASCII = ".123456789"
    BIN = "\000\001\002\003\004\005\006\007\010\011"

    def initialize(lines)
      if (lines.respond_to? :join)
        s = lines.join
      else
        s = lines.dup
      end

      s.gsub!(/\s/, "")

      raise (Invalid, "Wrong size!") unless s.size == 81

      if i = s.index(/[^123456789\.]/)
        raise (Invalid, "Invalid character #{s[i,1]} in puzzle!")
      end

      s.tr!(ASCII, BIN)
      @grid = s.unpack('c*')

      raise (Invalid, "Initial puzzle has duplicates!") if has_duplicates?
    end
  end

  def to_s
    (0..8).collect{ |r| @grid[r*9,9].pack('c9') }.join("\n").tr(BIN, ASCII)
  end

  def dup
    copy = super
    @grid = @grid.dup
    copy
  end

  def [](row, col)
    @grid[row*9 + col]
  end

  def []=(row, col, newvalue)
    unless (0..9).include? newvalue
      raise (Invalid, "Invalid cell value")
    end

    @grid[row*9 + col] = newvalue
  end

  BoxOfIndex = [
    0,0,0,1,1,1,2,2,2,0,0,0,1,1,1,2,2,2,0,0,0,1,1,1,2,2,2,
    3,3,3,4,4,4,5,5,5,3,3,3,4,4,4,5,5,5,3,3,3,4,4,4,5,5,5,
    6,6,6,7,7,7,8,8,8,6,6,6,7,7,7,8,8,8,6,6,6,7,7,7,8,8,8
  ].freeze

  def each_unknown
    0.upto 8 do |row|
      0.upto 8 do |col|
        index = row*9+col
        next if @grid[index] != 0
        box = BoxOfIndex[index]
        yield row, col, box
      end
    end
  end

end
