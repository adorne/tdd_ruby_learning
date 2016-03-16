def translate str
  str = str.split("")

  # найти способ определять в массиве гласные

  if (str.first == ("a" || "e" || "i" || "o" || "u")) || (!str.include?("a" || "e" || "i" || "o" || "u"))
    str = str.join
    str = str + "ay"
  elsif str.first != ("a" || "e" || "i" || "o" || "u") # перемещение согласных в конец строки
    puts "First is #{str.first}"

    loop do
      puts "Before push: #{str}"
      str.push(str.shift)
      puts "After push: #{str}"
      puts ""
      break if str.first == ("a" || "e" || "i" || "o" || "u")
    end

    str = str.join
    str = str + "ay"
  end

  puts str
end

translate("thr")
