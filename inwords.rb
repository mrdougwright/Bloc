module InWords
	def in_words
		single = {1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 0 => nil}
		teens = {10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
		tens = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety", 0 => nil}

		num = self.to_s
		new_number = []
		if num.length == 4
			return num
		elsif num.length == 3
			new_number << single[num[0].to_i] + " hundred"
			if num[1].to_i == 1
				new_number << teens[num[1..2].to_i]
			else
				new_number << tens[num[1].to_i]
				new_number << single[num[2].to_i]
			end
		elsif num.length == 2
			if num[0].to_i == 1
				new_number << teens[num[0..1].to_i]
			else
				new_number << tens[num[0].to_i]
				new_number << single[num[1].to_i]
			end
		else
			new_number << single[num[0].to_i]
		end
		new_number.join(' ').squeeze(' ')
	end
end

class Fixnum
	include InWords
end