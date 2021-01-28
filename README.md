# Caesar_Cipher

>Fully functional caesar cipher program, this program takes in a string and a number and shifts the letters in the string by the number specified and returns a new string that is encrypted.

### Code Example
```Ruby
if alphabet.include?(char) == true &&
  new_char_index = alphabet.index(char) + num
  new_char = alphabet[new_char_index % 26]
  new_string << new_char
end
```

### Technologies used:
- _Ruby: 3.0_
