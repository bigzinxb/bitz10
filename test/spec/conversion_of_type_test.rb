require_relative '../../lib/bitz.rb'

RSpec.describe Bitz::ConversionOfType do
    it 'Should return of binary for decimal' do
        conversion = Bitz::ConversionOfType.new()

        expect(conversion.binary_to_decimal("10")).to eql(2)
    end

    it 'Should return of decimal for binary' do
        conversion = Bitz::ConversionOfType.new()

        expect(conversion.decimal_to_binary(2)).to eql(10)
    end

    it 'Should return of text for binary' do
        conversion = Bitz::ConversionOfType.new()

        expect(conversion.text_to_binary("abc")).to eql("110000111000101100011")
    end
end