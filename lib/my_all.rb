require 'pry'

def my_all?(collection)
  i = 0
  all = true 
  while i < collection.length 
    if yield(collection[i]) == false
      all = false 
      return all 
    else
      i += 1 
    end
  end 
  all
end