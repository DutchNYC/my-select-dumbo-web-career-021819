def my_select(collection)
 # your code here!
 if block_given?
    i = 0
    selected = []
    while i < collection.length
      if yield(collection[i]) == true
      new_array << (collection[i])
      i += 1
    end
  else
    puts "This block should not run!"
  end
  selected
end
