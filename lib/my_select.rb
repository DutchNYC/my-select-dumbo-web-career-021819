def my_select(collection)
 # your code here!
 if block_given?
    i = 0
    selected = []
    while i < collection.length
      selected.push(collection[i]) if yield(collection[i]) == true
      i += 1
    end
  else
    puts "This block should not run!"
  end
  selected
end
