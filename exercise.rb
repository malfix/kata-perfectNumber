class Exercise
  def get(nth)
    current_nth=0
    current_value = 0
    while current_nth < nth
      current_value+=1
      current_nth+=1 if sum_numbers(current_value) == 10
    end
    current_value
  end

  def sum_numbers(value)
    tot = 0
    value.to_s.split('').each do |el|
      tot += el.to_i
    end
    tot
  end
end
