# frozen_string_literal: true

require_relative "bitz/version"
require_relative 'fixed_functions_bits.rb'

module Bitz
  include FixedFunctionsBits

  class MathematicalOperations
    def sum_bits bits_production1, bits_production2
      result = bits_production1_reverse = FixedFunctionsBits.reverse(bits_production1)
      bits_production2_reverse = FixedFunctionsBits.reverse(bits_production2)

      (0...bits_production1_reverse.length).each do |bit1|
        bit2 = bit1

        if bits_production1_reverse[bit1] == "1" && bits_production2_reverse[bit2] == "1"
          result[bit1 + 1] = "1"
          result[bit1] = "0"
        elsif bits_production1_reverse[bit1] == "1" && bits_production2_reverse[bit2] == "0"
          result[bit1] = "1"
        elsif bits_production1_reverse[bit1] == "0" && bits_production2_reverse[bit2] == "1"
          result[bit1] = "1"
        end

        return reverse!(result)
      end
    end
  end
end