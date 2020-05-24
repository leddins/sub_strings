dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts "enter a string to check:"
user_string = gets.chomp

def find_substrings(user_string, dictionary)
  result = {}       # set an empty result hash for the results
  
  # iterate through substrings array
  dictionary.each do |substring|      

    user_string_copy = user_string
    instances_of_substring = 0

    while user_string_copy.include?(substring) do
      # increment the count
      instances_of_substring += 1

      # delete the first instance from user_string_copy
      index = user_string_copy.index(substring)
      length = substring.length
      user_string_copy.slice!(index, length)
    end

    if instances_of_substring > 0
      result[substring] = count       # define a key/value pair in the result hash
    end

  end
  result      # return the result
end

# call the function
puts find_substrings(user_string, dictionary)