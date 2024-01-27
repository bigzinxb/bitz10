# frozen_string_literal: true

require_relative "bitz/version"
require_relative 'fixed_functions_bits.rb'

module Bitz
  include FixedFunctionsBits

  class MathematicalOperations
    def sum_bits(product_bits_from_above, bits_of_product_from_below)
      FixedFunctionsBits.padding_to_mathematical_operations!(product_bits_from_above, bits_of_product_from_below)

      total = FixedFunctionsBits.padding("", product_bits_from_above.length)
      
      (product_bits_from_above.length - 1).downto(0) do |index_bit_from_above|
        index_bit_from_below = index_bit_from_above

        if product_bits_from_above[index_bit_from_above] == "0" && bits_of_product_from_below[index_bit_from_below] == "0"
          total[index_bit_from_above] = "0"
        elsif product_bits_from_above[index_bit_from_above] == "1" && bits_of_product_from_below[index_bit_from_below] == "0"
          total[index_bit_from_above] = "1"
        elsif product_bits_from_above[index_bit_from_above] == "0" && bits_of_product_from_below[index_bit_from_below] == "1"
          total[index_bit_from_above] = "1"
        elsif product_bits_from_above[index_bit_from_above] == "1" && bits_of_product_from_below[index_bit_from_below] == "1"
          total[index_bit_from_above + 1] = "1"
          total[index_bit_from_above] = "0"
        end
      end

        return FixedFunctionsBits.reverse(total)
      end
    end
  end
end