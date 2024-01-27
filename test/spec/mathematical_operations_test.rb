require_relative '../../lib/bitz.rb'

describe Bitz::MathematicalOperations do
    context 'Test mathematical operations with bits' do
        it 'Test sum bits' do
            sum = Bitz::MathematicalOperations.new

            bits1  = "1"
            bits2  = "0001"

            expect(sum.sum_bits(bits1, bits2)).to eql("0010")
        end
    end
end
