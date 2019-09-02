require "pry"


def map(array)
  
  new_array = []
  
  
  array.each do |element|
    binding.pry
    new_array.push(yield)
    binding.pry
  end
  
  new_array
end


def test(string)
  yield(string)
end

#map([1,2,3,4,5]){|n| n * -1}

test("MySTring"){|s| puts s}