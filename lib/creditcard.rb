class CreditCard 
    attr_reader :card_number, :limit

  def initialize (card_number, limit)
        @card_number = card_number.to_s
        @limit = limit
    end

  def is_valid?
        digits = @card_number.chars.map(&:to_i).reverse

        sum = digits.each_with_index.sum do |digit, index|
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


