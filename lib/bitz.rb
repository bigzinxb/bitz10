# frozen_string_literal: true

require_relative 'fixed_functions_bits.rb'

module Bitz
  include FixedFunctionsBits

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
end