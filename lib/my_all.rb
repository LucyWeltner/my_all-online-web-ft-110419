require 'pry'

def my_all?(collection)
  i = 0
  all = true 
  while i < collection.length 
    if yield(collection[i]) == true 
      i += 1 
    else 
      all = false 
      return all 
    end
  end 
  all
end

my_all?([1,2,3]) {|i| i < 2}