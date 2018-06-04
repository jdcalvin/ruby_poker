require 'ruby_poker'
require 'spec_helper'

RSpec.describe ::RubyPoker do

  describe '#initilize' do
    # write tests checking for valid argument here
  end

  describe ':two_of_a_kind' do
    context 'true' do

      it 'when cards have 2 or more of same value' do
        # this test fails because current implementation does not normalize all values to String
        # ie 1 vs "1"
        expect(described_class.new([1,1,'A',9,4]).two_of_a_kind).to eq true
      end

    end
  end
end