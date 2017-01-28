def fibs(num)

	fibs_array = [0,1,1]

	if num == 0
		2.times{fibs_array.pop}
	elsif num == 1
		fibs_array.pop
	end

	(num-2).times do |n|
		fibs_array.push(fibs_array[-1] + fibs_array[-2])
	end
	p fibs_array
end

#fibs(0)

def fibs_rec(num, fibs_array = [0,1,1])

	if num == 0
		2.times{fibs_array.pop}
		p fibs_array
		return
	elsif num == 1
		fibs_array.pop
		p fibs_array
		return
	elsif num == 2
		p fibs_array
		return
	end

	fibs_array.push(fibs_array[-1] + fibs_array[-2])

	fibs_rec(num-1, fibs_array)

end

fibs_rec(0)
fibs_rec(1)
fibs_rec(2)

