

# Your Luhn Algorithm Here
def is_valid_credit_card?(card_number)
  #.chars converts the striing of card_number into an array of characters, .map(&:to_i) is an enumerable method called map which iterates through each character
  # in the array and applies the to_i method to convert each character to an integer
  # The &:to_i is a shorthand syntax in Ruby for callini the to_i method on each element
  # So, in simple terms, this code takes a string of digits 
  # (like a credit card number), converts each character to an integer, and stores the resulting integers in an array called digits.
  digits = card_number.chars.map(&:to_i)

  # Double the value of every other digit, starting from the right
   doubled_digits = digits.reverse.map.with_index do |digit, index|
    if index.odd?
      doubled_value = digit * 2
      doubled_value > 9 ? doubled_value - 9 : doubled_value
    else
      digit
    end
  end

  # Sum all the digits
  total_sum = doubled_digits.sum

  # Check if the sum is divisible by 10
  if total_sum % 10 == 0
   puts "The number #{card_number} is valid!"
  else
   puts "The number #{card_number} is invalid!"

  end
end
card_number = "5541808923795240"
result = is_valid_credit_card?(card_number)

# puts "Credit Card Number: #{card_number}"
# puts "Is Valid? #{result ? 'Yes' : 'No'}"

# def is_luhn_valid?(card_number)
#   integer_number = card_number.to_i
#   #card_number_array = card_number.chars
#       #.chars is a string method that changes a string into an array
#   #card_number_integer = card_number_array.map {|char| char.to_i}
#       #.map applies the character to integer method
#   double_every_other_digit(integer_number)
#   digits = integer_number.to_s.chars.map(&:to_i)

#   doubled_digits = digits.map.with_index do |digit, index|
#     index.even? ? digit * 2 : digit
#   end

#   doubled_number = doubled_digits.join.to_i
#   return doubled_number
#   end
#   array_number = number.digits.reverse
#     puts array_number
    
#     # double_eod = 
#     # double_eod > 9 add digits
#     # if sum_all_digits % 10
#     # puts = "The number is valid."  
#   end
# end

# card_number="5541808923795240"

# def luhn_valid?(card_number)
#   cc_digits = card_number.to_s.reverse.chars.map(&:to_i)
#   check_sum = 0

#   cc_digits.each_slice(2) do |odd, even|
#     check_sum += odd
#     next unless even
#     even *= 2
#     even = even.divmod(10).inject(:+) if even > 9
#     check_sum += even
#     return check_sum.modulo(10) == 0
#     if luhn_valid? == true
#         p "The number #{card_number} is valid."
#     else 
#         p "The number #{card_number} is invalid."
#   end
# end
# luhn_valid?("5541808923795240")
# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
