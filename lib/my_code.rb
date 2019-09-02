#require "pry"
require "pry"

def map(array)
  
  new_array = []
  
  
  array.each do |element|
    #binding.pry
    new_array.push(yield(element))
    #binding.pry
  end
  
  new_array
end

def reduce(source_array, starting_point=0)
  
  x = 0
  total = 0
  
  while x < source_array.size 
    
    if !source_array[x]
      return false
    else
      if source_array.is_a? Integer
        total += source_array[x]
        x = x + 1
        
      end
    end
  
  end
  
  yield(total, starting_point)
end

#x = map([1,2,3,4,5]){|n| n * -1}

#puts reduce([1,2,3], 100){|n,m| n + m}

#test("MySTring"){|s| puts s}