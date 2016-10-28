class Timer
  attr_reader :seconds
  attr_writer :seconds

  def initialize
    @seconds = 0
  end

  def start

  end

  def seconds
    @seconds
  end

  def seconds=(time_input)
    @seconds = time_input
  end

  def time_string

    if @seconds == 0
      return "00:00:00"
    end
    
    time_string_output = ""

    left  = @seconds
    write = left/3_600
    left  = left - write * 3_600

    if write < 1
      time_string_output = "00:"
    elsif write > 9
      time_string_output = "#{write}:"
    else
      time_string_output = "0#{write}:"
    end

    write = left/60
    left  = left - write * 60

    if write < 1
      time_string_output += "00:"
    elsif write > 9
      time_string_output += "#{write}:"
    else
      time_string_output += "0#{write}:"
    end

    write = left

    if write < 1
      time_string_output += "00"
    elsif write > 9
      time_string_output += "#{write}"
    else
      time_string_output += "0#{write}"
    end

    time_string_output
  end
end
