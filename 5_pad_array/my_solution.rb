# U1.W3: Pad an Array!

# I worked on this challenge [by myself, with: ].

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? 

# values to be added to the Array

# What is the output? (i.e. What should the code return?)
#class array 
# a new array that has added said values
# What are the steps needed to solve the problem?
# def the two methods
#set up a dummy array that accepts all the new values that are passed through
#combine the two arrays 
#return one array


# 2. Initial Solution
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



# 3. Refactored Solution

#did this after doing section 6

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

# 4. Reflection
# This was way harder than I thought it would be.  The initial code was pretty
# simple, but my array#pad kept destructing and I couldnt figure out why.  I
# came to find out that adding its value to an empty array that had already been
# created worked.  The rest of the assignment wasnt too bad just wierd to think
# of creating methods for soemthing that is called [array].newmethod(params),
# due to the fact that we have mostly just been working on methods that use params only.


