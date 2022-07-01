def ceasar_cypher(string, num)
  dict = {}
  ("a".."z").each_with_index do |char, index|
    dict[char] = index+1
  end
  array = string.split("")
  array.reduce("") do |result, char|
    char.upcase == char ? up = true : up = false
    value = dict[char.downcase]
    new_value = value + num
    if new_value < 1
      new_value +=  26
    elsif new_value > 26
      new_value -= 26
    else
    end
    if up == true
      result = result+"#{dict.key(new_value).upcase}"
    else 
      result = result+"#{dict.key(new_value)}"
    end
  end
end
