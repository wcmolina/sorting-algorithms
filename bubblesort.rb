require 'set'

def rand_arr(n)
    randoms = Set.new
    loop do
        randoms << rand(n+1)
        return randoms.to_a if randoms.size >= n
    end
end

def bubblesort(list)
	n = list.size
	return list if n <= 1
	sorted = false
	while !sorted
		sorted = true
		for i in 0..n-2
			if list[i] > list[i+1]
				list[i],list[i+1] = list[i+1],list[i]
				sorted = false
			end
		end
	end
	return list
end

#=begin
A = rand_arr(1000000) #se excluye del tiempo inicial para que solamente el algoritmo de ordenamiento sea el involucrado.
T1 = Time.now
sorted = bubblesort(A)
T2 = Time.now
delta = T2-T1
puts(delta)
#=end