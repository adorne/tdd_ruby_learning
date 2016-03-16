def translate s
multiword_str = s.split(" ")

  if multiword_str.length > 1 # проверяем кол-во слов
    multiword_str.each do |e|
      ayize_word(e)
    end
  else
    ayize_word s
  end

  s
end

def ayize_word str
  str_vowels_arr = str.scan(/[aoieu]/)
  str_arr = str.split("")

  if (str_arr.first.match(/[aoieu]/)) || (str_vowels_arr.empty?)
    str = str + "ay"
  elsif !str_arr.first.match(/[aoieu]/) # перемещение согласных в конец строки
    # puts "First is #{str_arr.first}"

    loop do
      # puts "Before push: #{str_arr}"
      str_arr.push(str_arr.shift)
      # puts "After push: #{str_arr}"
      # puts ""
      break if str_arr.first.match(/[aoieu]/)
    end

    str = str_arr.join + "ay"
  end

  str
end
