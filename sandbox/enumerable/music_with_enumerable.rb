module Music
  class Scale
    include Enumerable

    NOTES = %w{ c c# d d# e f f# g a a# b }

    def each
      NOTES.each {|note| yield note }
    end
  end
end

scale = Music::Scale.new
p scale.map {|note| note.upcase }                #=> ["C", "C#", "D", "D#", "E", "F", "F#", "G", "A", "A#", "B"]
scale.play {|note| puts "Next note is #{note}" } #=> undefined method `play' for #<Music::Scale:0x0055fac7b65540>
