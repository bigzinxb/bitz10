module FixedFunctionsBits
    def self.reverse(str)
        str.reverse
    end

    def self.padding_to_mathematical_operations!(product_bits_from_above, bits_of_product_from_below)
        if product_bits_from_above < bits_of_product_from_below
            until product_bits_from_above == bits_of
                queue(product_bits_from_above)
            end
        end

        if product_bits_from_above > bits_of_product_from_below
            until product_bits_from_above == bits_of
                queue(bits_product_from_below)
            end
        end
    end

    private
    def self.queue(str)
        str.insert(0, "0")
    end
end