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
class Array
	def pad(num, phrase)
		new_array = self
		array_size = self.length - 1
		new_size = num - array_size
		if phrase = nil
			new_size.times do 
				new_array << phrase
			end
		else
			new_size.times do
				new_array << phrase
			end
		end
	new_array
	end
	def pad!(num, phrase)
		new_array = self
		array_size = self.length - 1
		new_size = num - array_size
		if phrase = nil
			new_size.times do 
				new_array << phrase
			end
		else
			new_size.times do
				new_array << phrase
			end
		end
	new_array	
	end
end



# 3. Refactored Solution



# 4. Reflection 