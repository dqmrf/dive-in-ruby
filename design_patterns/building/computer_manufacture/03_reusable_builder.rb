require_relative 'components/motherboard'
require_relative 'components/drive'
require_relative 'components/computer'

class LaptopComputer < Computer
  def initialize( motherboard = Motherboard.new, drives=[] )
    super(:lcd, motherboard, drives)
  end

  # Lots of interesting laptop details omitted...
end

class LaptopBuilder
  def initialize
    @computer = LaptopComputer.new
  end

  def display=(display)
    raise "Laptop display must be lcd" unless display == :lcd
  end

  def add_cd(writer=false)
    @computer.drives << LaptopDrive.new(:cd, 760, writer)
  end

  def add_dvd(writer=false)
    @computer.drives << LaptopDrive.new(:dvd, 4000, writer)
  end

  def add_hard_disk(size_in_mb)
    @computer.drives << LaptopDrive.new(:hard_disk, size_in_mb, true)
  end

  def reset
    @computer = LaptopComputer.new
  end
end
