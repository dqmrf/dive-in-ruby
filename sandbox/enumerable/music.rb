module Music
  class Scale
    NOTES = %w{ c c# d d# e f f# g a a# b }

    def play
      NOTES.each {|note| yield note }
    end
  end
end

scale = Music::Scale.new
scale.play {|note| puts "Next note is #{note}" }
=begin
Next note is c
Next note is c#
...
=end

# But the scale isn’t technically an enumerable. The standard methods from Enumerable
# won’t work because the class Music::Scale doesn’t mix in Enumerable and doesn’t define each:
scale.map {|note| note.upcase } #=> undefined method `map' for #<Music::Scale:0x0055c1850e5668>
