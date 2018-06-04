require 'ruby_poker'
require 'spec_helper'

RSpec.describe ::RubyPoker do

  describe '#initilize' do
    # write tests checking for valid argument here
  end

  describe ':two_of_a_kind' do
    context 'true' do

      it 'when cards have 2 or more of same value' do
        expect(described_class.new([1,1,'A',9,4]).two_of_a_kind).to eq true
      end

    end

    context 'false' do
      it 'when cards do not have 2 or more of same value' do
        expect(described_class.new([1,2,'A',9,4]).two_of_a_kind).to eq false
      end
    end
  end
end