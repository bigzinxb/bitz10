# frozen_string_literal: true

module Bitz

  class MathematicalOperations
    def sum_bits(product_bits_from_above, bits_of_product_from_below)

      sum = ""
      carry = 0
      
      index_from_above = product_bits_from_above.length - 1
      index_from_below = bits_of_product_from_below.length - 1

      while index_from_above >= 0 || index_from_below >= 0
        bit_from_above = index_from_above >= 0 ? product_bits_from_above[index_from_above].to_i : 0
        bit_from_below = index_from_below >= 0 ? bits_of_product_from_below[index_from_below].to_i : 0

        total = bit_from_above + bit_from_below + carry

        sum = (total % 2).to_s + sum

        carry = total / 2

        index_from_above -= 1
        index_from_below -= 1
      end

      if carry > 0
        sum = carry.to_s + sum
      end

      return sum
    end
  end

  class ConversionOfType
    BASE = 2

    def binary_to_decimal(binary)
      binary = binary.to_i if binary.class == String
      decimal = 0

      (0...binary.to_s.length).each do |i|
        decimal += (binary[i].to_i * BASE**i)
      end

      return decimal
    end

    def decimal_to_binary(decimal)
      binary = ""

      while decimal.to_i >= BASE - 1
        rest = decimal % BASE
        binary += rest.to_s

        decimal.to_i /= BASE
      end

      return binary.reverse.to_i
    end

    def text_to_binary(str)
      binary = ""

      str.each_byte do |byte|
        binary += (decimal_to_binary(byte)).to_s
      end

      return binary
    end
  end
end