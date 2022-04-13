def cipher(string, value)
  
  string = string.bytes  
  transformed_string = []
  
  transformed_string = string.map do |chr|
    if (chr >= 65 && chr + value <= 90) || (chr >= 97 && chr + value <= 122)
      chr + value
    elsif (chr >= 65 && chr + value > 90) || (chr >= 97 && chr + value > 122)
      (chr + value) - 26
    else
      chr
    end
  end

  transformed_string.pack("U*")
end

puts cipher("What a string!", 5)

