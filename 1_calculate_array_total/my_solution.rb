# U1.W3: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [by myself, with: ].

# 1. Pseudocode

# What is the input? an array of numbers
# What is the output? (i.e. What should the code return?) a sum of said array as a single number
# What are the steps needed to solve the problem?
# define the method with a single parameter
# define a var sum
# iterate through the array and add those numbers to sum
# 


# 2. Initial Solution
def total(array)
	sum = 0
	array.each do |i|
		sum += i
	end
	return sum
end

def sentence_maker(array)
	sentence = ""
	sentence = sentence + array[0]
	array.shift
	array.each do |i|
		sentence += " " + i.to_s
	end
	sentence = sentence.capitalize
	sentence = sentence + "."
	return sentence
end

# 3. Refactored Solution
# def total(x)
	# y = 0
	# x.each do |i|
		# y += i
	# end
	# return y
# end


# 4. Reflection 