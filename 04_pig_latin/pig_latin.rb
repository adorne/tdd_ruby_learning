def translate s
  multiword_str = s.split(" ")

  # проверяем кол-во слов
  if multiword_str.length > 1
    # puts "#{multiword_str.length} is > 1"

    s = []
    multiword_str.each do |e|
      # puts "Inside each e is #{e}."

      result = ayize_word e
      s << result

      # puts "In each s is #{s}"
    end

    s = s.join(" ")

    puts "After each s is #{s}"
  else
    puts "#{multiword_str.length} is = 1"
    s = ayize_word s
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

  puts "Inside ayize_word str is #{str}."
  str
end
