# Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:
# You will need to remember how to convert a string into a number
# Don't forget to wrap from z to a
# Don't forget to keep the same case

def caesar_cipher(string, num)

  new_string = ""
  alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  alphabet2 = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
  i = 0

  while i < string.length
    char = string[i]
    if alphabet.include?(char) == true &&
      new_char_index = alphabet.index(char) + num
      new_char = alphabet[new_char_index % 26]
      new_string << new_char
    end

    if alphabet2.include?(char) == true
      new_char_index = alphabet2.index(char) + num
      new_char = alphabet2[new_char_index % 26]
      new_string << new_char
    end

    if alphabet.include?(char) != true && alphabet2.include?(char) != true
        new_string << char
    end
    i += 1
  end
  return new_string
end

puts caesar_cipher("What a string!",5) # => "Bmfy f xywnsl!"
