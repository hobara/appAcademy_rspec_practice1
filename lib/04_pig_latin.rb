def translate(string)
  string.split.map { |word| pig_latin(word) }.join(" ")
end

def pig_latin(string)
  vowels = %w(a e i o u)
  if vowels.include?(string[0])
    return string + "ay"
  else
    consonant = string[0]
    i = 1
    while i < string.length
      if string[i-1] == "q" && string[i] == "u"
        return string[i+1..-1] + consonant + "uay"
      elsif vowels.include?(string[i])
        return string[i..-1] + consonant + "ay"
      else
        consonant += string[i]
      end
      i += 1
    end
  end
end
