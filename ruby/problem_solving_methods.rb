## 5.6 Mandatory Pairing: Solving Problems with Data Structures

# RELEASE 0: Implement a Simple Search

#Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. Don't use built-in array methods like .index. You are allowed to use .length and .each.

array = [42, 89, 23, 1]

def search_array(array, number)
	index = 0 
	while index < array.length 
		array.each do |item|
			temp = item
			if temp == number
			  temp = true
			  p index
			end
			index += 1
		end
	 
	end
end

search_array(array, 23)


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# RELEASE 1: Calculate Fibonacci Numbers

def fibonacci(n)
    fib_array = [0,1]
	fib = n - 2
    fib.times do |fib|
        fib_array << fib_array[-1] + fib_array[-2]
    end

	if fib_array.count < 20
    	p fib_array
    else
    	p fib_array.last 
    end	
end

#example method call

fibonacci(15)

fibonacci(100)


#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#RELEASE 2 - Sorting

#Implement the sorting method in Ruby: method that takes an array of integers and uses a sorting algorithm; return a sorted version of the array

#Use Bubble Sort algorithm
#Find the length or count of items of the array input (ie; list of numbers)
#Loop through each item and determine if it needs to be switched to a different sort position, smaller to larger numbers
#If the item does not need to be switched, then break the loop
#Display the sorted array

def bubble_sort(array)
  length = array.length
  loop do
    switch_nmbr = false
    (length-1).times do |item|
      if array[item] > array[item+1]
        array[item], array[item+1] = array[item+1], array[item]
        switch_nmbr = true
      end
    end
    
	if switch_nmbr == false
      break  
    end
  end 
  array
end

#sample method call and display

arr = [10, 6, 14, 8, 5, 11]
p bubble_sort(arr)

