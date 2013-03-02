class CreditCard

  attr_reader :number

  def initialize(number)
    @number = number.gsub(/\s+/, '')
  end

  def valid?
    
    checksum = @number.reverse.  # Reverse the credit card number provided
      split('').                 # Split string into an array of characters
      each_with_index.           # Iterate over resulting array
        map {|n, i| i % 2 == 0 ? n : n.to_i * 2}. # Double every second digit
        join.                    # Join resulting array of numbers into a single string
        split('').               # Split the resulting long string into an array of individual characters
        map {|n| n.to_i }.       # Convert each number in array represented as a string to an integer
        inject {|sum, n| sum+n } # Calculate the sum of all the elements of the resulting array
      
    checksum % 10 == 0
  end 

  def card_issuer
    if @number.match /3[4|7]\d{13}/
      'AMEX'
    elsif @number.match /6011\d{9}/
      'Discover'
    elsif @number.match /4(\d{12}|\d{15})/
      'VISA'
    elsif @number.match /5[1|2|3|4|5]\d{14}/
      'Mastercard'
    else
      'Unknown'
    end
  end
end