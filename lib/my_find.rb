require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    if yield collection[i]
      return collection[i]
    else
      i+=1
    end
  end
end

collection = (1..100).to_a
my_find(collection) {|i| i%3 ==0 && i%5 == 0}
