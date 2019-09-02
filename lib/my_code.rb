
def map(array)
  
  array.each do |element|
  
    yield
    
  end
  
end


map([1,2,3,4,5])