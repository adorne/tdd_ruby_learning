class Timer
  attr_writer :seconds

  def seconds seconds = 0
    @seconds = seconds # без этого никак
  end

  def time_string
    h, m, s = "00" # значения по умолчанию; оказывается, и так можно объявлять

    if @seconds > 3600
      h = (@seconds / 3600)
      m = ((@seconds % 3600) / 60)
      s = (((@seconds % 3600) % 60))
    elsif @seconds > 60
      m = ((@seconds % 3600) / 60)
      s = (((@seconds % 3600) % 60))
    else
      s = (@seconds)
    end

    time = "#{pad(h)}:#{pad(m)}:#{pad(s)}"

    return time
  end

  def pad arg # добавляем нули
    arg.to_s.rjust(2, "0") # чудесный строковый метод: первый аргумент задаёт кол-во символов в строке (но не ограничивает её), второй - чем её дополнить до этого кол-ва
  end
end
