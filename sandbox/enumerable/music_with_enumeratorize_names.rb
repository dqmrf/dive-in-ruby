module Music
  class Scale
    NOTES = %w{ c c# d d# e f f# g a a# b }

    def play
      NOTES.to_enum
    end
  end
end

scale = Music::Scale.new
p scale.play {|note| puts "Next note: #{note}" }
p scale.play.map {|note| "Next note: #{note}" }
=begin
["Next note: c", "Next note: c#", "Next note: d", "Next note: d#",
"Next note: e", "Next note: f", "Next note: f#", "Next note: g",
"Next note: a", "Next note: a#", "Next note: b"]
=end
