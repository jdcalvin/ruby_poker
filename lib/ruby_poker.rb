class RubyPoker
  # cards should only accept a 5 value array with a mixture of the following:
  # 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A
  attr_reader :cards

  def initialize(cards)
    # demonstrate error handling for any inputs that do not meet the criteria
    @cards = cards
  end

  # implement the hands given definition here: 
  # https://www.cardplayer.com/rules-of-poker/hand-rankings
  # Do not implement Royal Flush or Straight Flush since input does not consider suit
  
  # each method should return true or false if #cards meets the criteria

  def two_of_a_kind
    h = {}
    cards.each do |card|
      h[card] ||= 0
      h[card] += 1
    end

    found = h.keys.detect {|card| h[card] >= 2}
    found ? true : false
  end
end