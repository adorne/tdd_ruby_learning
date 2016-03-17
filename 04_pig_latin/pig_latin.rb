def translate s # метод для анализа строки на кол-во слов
  multiword_str = s.split(" ") # делаем из строки массив, разделяя её по пробелам

  # проверяем кол-во слов
  if multiword_str.length > 1 # если в массиве больше одного значения
    s = [] # опустошаем изначальную переменную для новых значений

    multiword_str.each do |e| # каждое из слов
      result = ayize_word e # прогоняем в методе для изменения

      s << result # изменённое слово добавляем в массив
    end

    s = s.join(" ") # объединяем значения массива в строку через пробелы
  else
    s = ayize_word s # если одно слово, просто меняем его посредством метода
  end

  s # возвращаем итог
end

def ayize_word str # метод для анализа и изменения слова
  str_vowels_arr = str.scan(/[aoieu]/) # делаем массив из всех попадающихся гласных в слове
  str_arr = str.split("") # делаем ещё один массив из всех букв слова

  if (str_arr.first.match(/[aoieu]/)) || (str_vowels_arr.empty?) # если первая буква гласная или гласных нет вообще
    str = str + "ay" # добавляем кусок
  elsif !str_arr.first.match(/[aoieu]/) # если первая буква не гласная
    loop do # каждую согласную перемещаем в конец массива
      sh = str_arr.shift # вытаскиваем первую букву
      str_arr.push(sh) # ставим её в конец массива

      if sh == "q" && str_arr.first == "u" # случай буквосочетания "qu"
        str_arr.push(str_arr.shift) # "qu" идёт в конец массива
      end

      break if (/[aoieu]/).match(str_arr.first) # ломаем петлю, если добрались до гласной
    end

    str = str_arr.join + "ay" # объединяем массив в строку и добавляем кусок
  end

  str # возвращаем слово
end
