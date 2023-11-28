

# Your Luhn Algorithm Here
def is_luhn_valid?(card_number)
    number = card_number.to_i
    array_number = number.digits.reverse
    puts array_number
    
    # double_eod = 
    # double_eod > 9 add digits
    # if sum_all_digits % 10
    # puts = "The number is valid."   
end

card_number="5541808923795240"


def luhn_valid?(card_number)
  cc_digits = card_number.to_s.reverse.chars.map(&:to_i)
  check_sum = 0

  cc_digits.each_slice(2) do |odd, even|
    check_sum += odd
    next unless even
    even *= 2
    even = even.divmod(10).inject(:+) if even > 9
    check_sum += even
    return check_sum.modulo(10) == 0
    if luhn_valid? == true
        p "The number #{card_number} is valid."
    else 
        p "The number #{card_number} is invalid."
  end
end
luhn_valid?("5541808923795240")
end
# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
