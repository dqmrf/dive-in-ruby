module Music
  class Scale
    NOTES = %w{ c c# d d# e f f# g a a# b }

    def play
      NOTES.each {|note| yield note }
    end
  end
end

scale = Music::Scale.new

enum = scale.enum_for(:play) # or scale.to_enum(:play)

p enum.map {|note| note.upcase }           #=> ["C", "C#", "D", "D#", "E", "F", "F#", "G", "A", "A#", "B"]
p enum.select {|note| note.include?('f') } #=> ["f", "f#"]
