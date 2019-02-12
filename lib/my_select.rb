def my_select(collection)
 # your code here!
if block_given?
    i = 0
    selected = []
    while i < collection.length
      if yield(collection[i]) == true
        selected << (collection[i])
      i += 1
    end
  else
    puts "This block should not run!"
  end
  selected
end
