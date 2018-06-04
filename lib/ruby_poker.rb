class RubyPoker
  
  # cards should only accept a 5 value array with a mixture of the following:
  # 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K, A
  attr_reader :cards

  def initialize(cards)
    @cards = validate_and_sanitize_input(cards)
  end

  # Implement the hands as methods given definition here (ignore Flush hands): 
  # https://www.cardplayer.com/rules-of-poker/hand-rankings
  # Each method should return true or false if #cards meets the criteria

  # Key points when implementing this interface:
  # - Do not implement any "Flush" hand since input does not consider suit  
  # - Consider the DRY principle to reduce duplication
  # - Demonstrate understanding of public vs private methods for code shared between methods

  def two_of_a_kind
    # two_of_a_kind is implemented for you, refactor as needed for code reusablity
    h = {}
    cards.each do |card|
      h[card] ||= 0
      h[card] += 1
    end

    found = h.keys.detect {|card| h[card] >= 2}
    found ? true : false
  end

  private

  def validate_and_sanitize_input(cards)
    # Demonstrate error handling for any inputs that do not meet the criteria
    # If valid, also consider normalizing data set (hint: handling input of 1 vs '1')
  end
end