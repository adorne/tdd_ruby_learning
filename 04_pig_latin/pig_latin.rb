def translate str
  # найти способ определять в массиве гласные
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
