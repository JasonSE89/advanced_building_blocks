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
		any = true
		while(i < self.length) do
			yield(
				if self[i] == false || self[i] == nil
					any = false
				end
				 )
			i += 1
		end
		return any
	end
end
