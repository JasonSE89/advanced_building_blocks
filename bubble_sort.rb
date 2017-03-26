puts "Enter list"
user_input = gets.chomp.split(',')
user_input = user_input.collect{|element| element.to_i}
bubble_list = user_input.collect{|element| element.to_i}
def swap(cur,bubble_list)
	temp = bubble_list[cur]
	bubble_list[cur]=bubble_list[cur+1]
	bubble_list[cur+1] = temp
end
def bubblesort(bubble_list)
	total_passes = 0
	cur = 0
	while total_passes < bubble_list.length 
		while cur < bubble_list.length-1
			if bubble_list[cur] > bubble_list[cur+1]  
				swap(cur,bubble_list)
			end
			cur+=1
		end
		total_passes += 1
	end 
	print bubble_list
	puts "\n"
end
bubblesort(user_input)