require_relative '../../lib/bitz.rb'

RSpec.describe Bitz::MathematicalOperations do
    it 'Should return the sum of bits' do
        sum = Bitz::MathematicalOperations.new

        bits1  = "10"
        bits2  = "10"

        expect(sum.sum_bits(bits1, bits2)).to eql("100")
    end
end
