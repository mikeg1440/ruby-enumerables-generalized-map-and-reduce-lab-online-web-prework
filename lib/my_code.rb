#require "pry"


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
  
  total = starting_point
  
  source_array.each do |element|
    
    new_array = yield(element)
    
  end
  
  new_array
end

#x = map([1,2,3,4,5]){|n| n * -1}


#test("MySTring"){|s| puts s}