
def map(array)
  
  new_array = []
  
  array.each do |element|
  
    new_array.push(yield)
    
  end
  
  new_array
end


map([1,2,3,4,5]) {|n| -n}