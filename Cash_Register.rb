class TenderConverter
    def to_tender(change)
    result = ""
    @denominations.each do |denomination|
        while change >= denomination[:value]
            change -= denomination[:value]
            denomination[:number] += 1
        end
        if denomination[:number] > 0
        	result << "#{denomination[:number]} #{denomination[:name]} \n"
        end
    end
    result
    end
	
	def initialize
	    @denominations = []
	    
	    add_denomination(0, 100.00, "hundreds")
	    add_denomination(0, 50.00, "fifties")
	    add_denomination(0, 20.00, "twenties")
	    add_denomination(0, 10.00, "tens")
	    add_denomination(0, 5.00, "fives")
	    add_denomination(0, 1.00, "ones")
	    add_denomination(0, 0.25, "quarters")
	    add_denomination(0, 0.10, "dimes")
	    add_denomination(0, 0.05, "nickels")
	    add_denomination(0, 0.01, "pennies")
	end
	        
	def add_denomination(number, value, name)
		@denominations << {number: number, value: value, name: name}
	end
end