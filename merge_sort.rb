def merge_sort(number_array)

	#Check length of array, if it is larger than 1, split the array in half
	#Once we have arrays of length 1, we start to compare arrays
	#Compare the first element of two arrays, and add the smallest to a separate array

	sorted_array = []

	if number_array.length == 1

		sorted_array = number_array
		sorted_array

	elsif number_array.length == 2

		a = number_array[0]
		b = number_array[-1]
		a < b ? sorted_array.push(a, b) : sorted_array.push(b, a)
		sorted_array

	else
		a = merge_sort(number_array.slice!(0, number_array.length/2))
		#puts "a: #{a}"
		b = merge_sort(number_array) 
		#puts "b: #{b}"
		while a.length >= 1 || b.length >= 1
			if a.length == 0
				sorted_array.push(b[0])
				b.shift
			elsif b.length == 0
				sorted_array.push(a[0])
				a.shift
			elsif [a[0],b[0]].min == a[0]
				sorted_array.push(a[0])
				a.shift
			else
				sorted_array.push(b[0])
				b.shift
			end
		end
	end

	sorted_array

end

p merge_sort([10,3,6,12,2,25,5,33])
