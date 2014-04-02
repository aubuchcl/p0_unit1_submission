# U1.W3: Review and Refactor: Pad an Array

# I worked on this challenge [by myself: ].



# 1. First Person's solution I liked (Seba)
#    What I learned from this solution
	# I chose this solution because of how clean the code was.  I learned
	# that through proper refactoring you can really get your code to look
	# and perform in a very clean and straightforward way. 
	# Also I would have never thought to use flatten here. 
# Copy solution here:
# class Array

# def pad! (length_new, pad_with = nil)

# (length_new - length).times {self << pad_with}

# self

# end

# def pad (length_new, pad_with = nil)

# result = [] << self
# (length_new - length).times {result << pad_with}

# result.flatten

# end

# end




# 2. Second Person's solution I liked (Hunter )
#    What I learned from this solution
# I learned that you can use a return / if statement as opposed to if then.

# Copy solution here:
# class Array
#   def pad(min_size, value = nil)
#     new_array = Array.new
#     self.each { |i| new_array.push(i)}
#     return new_array if min_size <= new_array.length
#     (min_size - new_array.length).times{new_array.push(value)}
#     return new_array
#   end
# end


#pad!

# class Array
#   def pad!(min_size, value = nil)
#     return self if min_size <= self.length
#     (min_size - self.length).times{self.push(value)}
#     return self
#   end
# end





# 3. My original solution:
# class Array
# 	def pad(num, phrase = nil)
# 		new_array = Array.new
# 		if num <= self.length
# 			new_array = new_array + self
# 			x = new_array
# 		else
# 			new_size = num - self.length
# 			new_size.times do 
# 				new_array.push(phrase)
# 			x = self + new_array
# 			end
# 		end
# 		return x
# 	end

# 	def pad!(num, phrase = nil)
# 		new_size = num - self.length
# 		new_array = self
# 		new_size.times do 
# 			new_array.push(phrase)
# 		new_array
# 		end
# 		new_array
# 	end
# end



# 4. My refactored solution:

class Array
	def pad(num, phrase = nil)
		output = [] << self
		(num - length).times{output.push(phrase)}

		output.flatten

	end

	def pad!(num, phrase = nil)
		(num - self.length).times do
			self.push(phrase)
		end
		self
	end
end



# 5. Reflection
# I learned something really important here about flatten:
# 	RDocs says flatten will : return an array that is a one dimensional 
# 	flattening or representation of self.  It worked really well and though
# 	I almost felt guilty using someone else's idea for this problem by ending
# 	with a return of output.flatten it was too good not to try and understand.
# 	When it came to refactoring the pad! I just eliminated a few uneccesary steps.