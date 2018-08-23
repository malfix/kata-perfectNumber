class Exercise
  def get(nth)
    @current = [9,1]
    current_nth = 1
    0.upto(128).each do |_|
      @current << 0
    end
    while current_nth < nth
      decrement(0)
      if sum_numbers(@current.reverse.join.to_i) == 10
        current_nth += 1
      end
    end
    @current.reverse.join.to_i
  end

  def sum_numbers(value)
    tot = 0
    value.to_s.split('').each do |el|
      tot += el.to_i
    end
    tot
  end

  def decrement(position)
    if @current[position] != 0
      @current[position] = @current[position] - 1
      increment(position + 1)
    else
      @current[position] = 9
    end
  end


  def increment(position)
    if @current[position] != 9
      @current[position] = @current[position] + 1
    else
      @current[position] = 0
      increment(position + 1)
    end
  end
end
