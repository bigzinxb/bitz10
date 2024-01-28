module FixedFunctionsBits
    def self.reverse(str)
        str.reverse
    end

    private
    def self.queue(str)
        str.insert(0, "0")
    end
end