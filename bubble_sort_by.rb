puts "Enter list"
user_input = gets.chomp.split(',')
user_input = user_input.collect{|element| element.to_i}
bubble_list = user_input.collect{|element| element.to_i}
def swap(cur,bubble_list)
	bubble_list[cur],bubble_list[cur+1] = bubble_list[cur+1],bubble_list[cur]
	return bubble_list
end
def bubble_sort_by(bubble_list)
	(bubble_list.length-1).times do
		cur = 0
		while cur < bubble_list.length-1
			if block_given?
				if yield(bubble_list[cur],bubble_list[cur+1]) == 1
					swap(cur,bubble_list)
			    end
			end
			cur+=1
		end
	end
	print bubble_list
	puts "\n"
end
bubble_sort_by(user_input){|left,right| left <=> right}