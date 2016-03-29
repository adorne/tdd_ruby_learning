class Timer
  attr_writer :seconds

  def seconds seconds = 0
    @seconds = seconds # без этого никак
  end

  def time_string
    h, m = "00" # значения по умолчанию; оказывается, и так можно объявлять
    s = @seconds

    if s > 3600
      h = s / 3600
      m = s % 3600 / 60
      s = s % 3600 % 60
    elsif s > 60
      m = s % 3600 / 60
      s = s % 3600 % 60
    elsif s < 60      
      s
    end

    time = "#{pad(h)}:#{pad(m)}:#{pad(s)}"
  end

  def pad arg # добавляем нули
    arg.to_s.rjust(2, "0") # чудесный строковый метод: первый аргумент задаёт кол-во символов в строке (но не ограничивает её), второй - чем её дополнить до этого кол-ва
  end
end
