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
	def my_select
		i = 0
		result = []
		while(i < self.length) do
		  if yield(self[i]) == true
		  	result.push(self[i])
		  end
		  i += 1 
		end
		return result
	end
	def my_all?
		i = 0
		any = true
		while(i < self.length) do
			if yield(self[i]) == false
				any = false
				end
			i += 1
		end
		return any
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
	def my_none?
		i = 0
		result = []
		while(i < self.length) do
			if yield(self[i]) == true
				result.push(true)
			else
				result.push(false)
			end
			i += 1
		end
		if result.include? == true
		  return false
		else
		  return true
		end
     end
end
