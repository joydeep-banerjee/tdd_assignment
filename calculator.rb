class Calculator
	def add(str)
		arr = str.gsub(/[^0-9-]/,",").split(",").map(&:to_i)
		get_negative_val = arr.select{|n| n<0 }

		if get_negative_val.empty?
			arr.sum
		else
			raise "negative numbers not allowed #{get_negative_val[0]}"
		end
	rescue => e
		e
	end
end

cal = Calculator.new.add("//;\n1;2,3,10;\n11")
puts cal