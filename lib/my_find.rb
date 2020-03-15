require 'pry'

def my_find(collection)
  i = 0 
  while i < collection.length
  res = yield(collection[i])
  if res 
    return collection[i]
  end
  i += 1
  
end

end