

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.


# list the numbers from one to ten

# list = 0
# 10.times do 
#   list += 1
#   p list
# end

# now find which of those numbers are multiples of 3 and 5
# let's start with multiples of 3

# list = 0
# 10.times do
#   list +=1
#   if list % 3 == 0 
#     p list
#     else
#   end
# end

# now find out which are divisible by 5, but add it to the "if" statement with an or ||

# list = 0
# 9.times do
#   list +=1
#   if list % 3 == 0 || list % 5 == 0
#     p list                    # list is 3, 5, 6, 9, 10
#   end
# end

# I took out the dangling "else" didn't need it
# Now let's sum those. Wait. We need numbers between 1-10. Gotta fix that
# K. That's fixed. Now let's sum the list
# list = 0
# counter = 0
# multiples = []
# sum = 0
# 9.times do
#   list +=1
#   if list % 3 == 0 || list % 5 == 0
#     counter +=1
#     # p "list"
#     # p list
#     multiples << list
#     # p "counter"
#     # p counter
#     # p "multiples"
#     p multiples
#   end
# multiples.length.times do
#   sum = multiples[0] + multiples[1]
#   multiples +=1
# end 
# p sum
# end

# clearly that's not working. Let's just sum an array for starters. Got too big for my britches

numbers = 0
counter = 0
multiples = []
sum = 0
999.times do
  numbers +=1
  if numbers % 3 == 0 || numbers % 5 == 0
    # counter +=1
    # p "numbers"
    # p numbers
    multiples << numbers
    # p "counter"
    # p counter
    # p "multiples"
    # p multiples
  end
end



def adding_machine(array_input)
  sum = 0 
  index = 0
  array_input.length.times do
    sum = sum + array_input[index]
    index += 1
  end
  return sum
end
p adding_machine(multiples)

