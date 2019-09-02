  

def map(source_array)
  new_array = []
  
  source_array.each do |element|
    new_array.push(yield(element))
  end
  
  new_array
end

def reduce(source_array, starting_value = 0)
  total = starting_value
  new_array = []
 
  
  source_array.each do |element|
    if element
      #total += element
      puts "total: #{total} \nelem: #{elem}"
      total += yield(total, element)
    else
      if !element 
        return false
      end
    end
  end
  
  #yield(total, starting_value)
  #new_array
  total
end

reduce()
