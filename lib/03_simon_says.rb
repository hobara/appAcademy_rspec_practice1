def echo(string)
  string
end

def shout(string)
  string.upcase
end

def repeat(string, count=2)
  ([string] * count).join(" ")
end

def start_of_word(string, length)
  string[0..length-1]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  exception = ["and", "the", "over"]
  res = []
  string.split.each_with_index do |el, idx|
    if idx == 0
      res << el.capitalize
    elsif exception.include?(el)
      res << el
    else
      res << el.capitalize
    end
  end
  res.join(" ")
end
