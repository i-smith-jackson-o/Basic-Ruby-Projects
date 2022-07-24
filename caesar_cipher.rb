def caesar_cipher(string, shift=0)
  capital = ("A".."Z").to_a #65-90
  lower = ("a".."z").to_a #97-122
  split_array = string.split("")

  shift_char = split_array.map do |char|
    if capital.include?(char)
      char = capital[(capital.find_index(char) + shift) % 26] 
    elsif lower.include?(char)
      char = lower[(lower.find_index(char) + shift)  % 26] 
    else     
      char
    end 
  end 
  shift_char.join("")
end 