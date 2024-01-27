module FixedFunctionsBits
    def self.reverse(str)
        str.reverse
    end

    def self.padding_to_mathematical_operations!(product_bits_from_above, bits_of_product_from_below)
        if product_bits_from_above.length < bits_of_product_from_below.length
            until product_bits_from_above.length == bits_of_product_from_below.length
                queue(product_bits_from_above)
            end
        end

        if product_bits_from_above.length > bits_of_product_from_below.length
            until product_bits_from_above.length == bits_of_product_from_below.length
                queue(bits_of_product_from_below)
            end
        end
    end

    def padding(str, amount_zero)
        while amount_zero >= str.length
            queue(str)
        end

        return str
    end

    private
    def self.queue(str)
        str.insert(0, "0")
    end
end