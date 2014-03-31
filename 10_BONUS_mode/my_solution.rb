# U1.W3: Calculate the mode!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge [with Jake Persing].

# 1. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 2. Initial Solution
def mode(array)
  count = Hash.new(0)  
    array.each do |x| count[x] += 1 end
    max_val =  count.values.max
    puts max_val
    if array == array.uniq
        return array
    else
        array1 = array.keep_if do |x| array.count(x) >= count.values.max end
        array1.uniq!
    end
    
end
   
# 3. Refactored Solution
# def mode(array)
#   count = Hash.new(0)     
#     array.each do |x| count[x] += 1 end   
#     if array == array.uniq
#         return array
#     else
#         output = array.keep_if do |x| array.count(x) >= count.values.max end
#         output.uniq!
#     end
# end


# 4. Reflection 

# This was a great challenge to work with someone on.  We both tried a somewhat
# different approaches.  I thought that a simple if else statement could work if we 
# could properly isolate the values.  Jake thought that the hash was needed regardless
# (which he was correct about).  I dont't know if it just took longer or was more
# difficult but this challenge seemed to be almost a strech of what I was capable
# of currently in Ruby.  Fun overall though.