require_relative '../../lib/bitz.rb'

describe Bitz::ConversionOfType do
    context 'Test conversion of type' do
        it 'Test binary to decimal' do
            conversion = Bitz::ConversionOfType.new

            expect(conversion.binary_to_decimal("10")).to eql(2)
        end

        it 'Test decimal to binary' do
            conversion = Bitz::ConversionOfType.new

            expect(conversion.decimal_to_binary(2)).to eql(10)
        end

        it 'Test text to binary' do
            conversion = Bitz::ConversionOfType.new

            expect(conversion.text_to_binary("abc")).to eql("110000111000101100011")
        end
    end
end