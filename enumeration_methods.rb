module Enumerable
    def my_each
      i = 0
      while(i < self.length) do
      	yield(self[i])
      	i+=1
      end
	end
	def my_each_with_index
		i = 0
		while(i < self.length) do
		  yield(self.keys[i], self[self.keys[i]])
		  i+=1
		end
	end
	def my_any?
		i = 0
		any = false
		while(i < self.length) do
			if yield(self[i]) == true
				any = true
				end
			i += 1
		end
		return any
	end
end
