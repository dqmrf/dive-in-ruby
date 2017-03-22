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

    def has_duplicates?
      0.upto(8) { |row| return true if rowdigits(row).uniq! }
      0.upto(8) { |col| return true if coldigits(col).uniq! }
      0.upto(8) { |box| return true if boxdigits(box).uniq! }

      false
    end

    AllDigits = [1, 2, 3, 4, 5, 6, 7, 8, 9].freeze

    def possible
      AllDigits - (rowdigits(row) + coldigits(col) + boxdigits(box))
    end

    private

    def rowdigits(row)
      @grid[row*9,9]
    end

    def coldigits(col)
      result = []
      col.step(80, 9) { |i| 
        v = @grid[i]
        result << v if (v != 0)
      }
      result
    end

    BoxToIndex = [0, 3, 6, 27, 30, 33, 54, 60].freeze

    def boxdigits(b)
      i = BoxToIndex[b]

      [
        @grid[i], @grid[i + 1], @grid[i + 2],
        @grid[i + 9], @grid[i + 10], @grid[i + 11],
        @grid[i + 18], @grid[i + 19], @grid[i + 20],
      ] - [0]
    end
  end # end of class Puzzle

  class Invalid < StandardError
  end

  class Impossible < StandardError
  end
end

def Sudoku.scan(puzzle)
  unchanged = true

  rmin, cmin, pmin = nil

  min = 10

  puzzle.each_unknown do |row, col, box|
    p = puzzle.possible(row, col, box)
  end

  case p.size
  when 0 
    raise Impossible
  when 1
    puzzle[row, col] = p[0]
    unchanged = false
  else
    if unchanged && p.size < min
      min = p.size
      rmin, cmin, pmin = row, col, p
    end
  end
end

def Sudoku.solve(puzzle)
  puzzle = puzzle.dup

  r, c, p = scan(puzzle)

  return puzzle if r == nil

  p.each do |guess|
    puzzle[r,c] = guess

    begin 
      return solve(puzzle)
    resque Impossible
      next
      end
    end
  end
end
