require_relative '../../lib/fixed_functions_bits.rb'

describe FixedFunctionsBits do
    context 'Test Fixed Functions of Bits' do
        it 'test padding to mathematical operations' do
            bits1 = "0001"
            bits2 = "1"

            padding_mathematical_operations = FixedFunctionsBits.padding_to_mathematical_operations!(bits1, bits2)

            expect([bits1, bits2]).to eql(["0001", "0001"])
        end
    end
end