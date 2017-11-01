class PlayingCard
  SUITS = %w{ clubs diamonds hearts spades }
  RANKS = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }

  class Deck
    attr_reader :cards

    def initialize(n = 1)
      @cards = []
      SUITS.cycle(n) do |suit|
        RANKS.cycle(1) do |rank|
          @cards << "#{rank} of #{suit}"
        end
      end
    end
  end
end

# this command produces a double deck of cards containing two of each card
# for a total of 104
deck = PlayingCard::Deck.new(2)
deck.cards.each { |card| puts card }
