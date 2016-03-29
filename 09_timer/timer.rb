class Timer
  attr_writer :seconds

  def seconds seconds = 0
    @seconds = seconds # без этого никак
  end

  def time_string
    h = "00"
    m = "00"
    s = "00"

    if @seconds > 3600
      h = (@seconds / 3600).to_s.rjust(2, "0")
      m = ((@seconds % 3600) / 60).to_s.rjust(2, "0")
      s = (((@seconds % 3600) % 60)).to_s.rjust(2, "0")
    elsif @seconds > 60
      m = ((@seconds % 3600) / 60).to_s.rjust(2, "0")
      s = (((@seconds % 3600) % 60)).to_s.rjust(2, "0")
    else
      s = (@seconds).to_s.rjust(2, "0")
    end

    time = "#{h}:#{m}:#{s}"

    return time
  end
end
