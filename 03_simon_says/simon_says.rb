def echo str
  str.to_s
end

def shout str
  str.to_s.upcase
end

def repeat str, times = 2
  s = str.to_s
  s1 = s

  (times - 1).times do
    s = s + " " + s1
  end

  s
end

def start_of_word str, i
  str.to_s[0..(i - 1)]
end

def first_word str
  str.split(" ")[0]
end

def titleize str
  stop_words = %w{a an and the or for of nor over}
  str.split.each_with_index.map{|word, index| stop_words.include?(word) && index > 0 ? word : word.capitalize }.join(" ")
end
