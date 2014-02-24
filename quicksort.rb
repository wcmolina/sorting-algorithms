require 'set'

def rand_arr(n)
    randoms = Set.new
    loop do
        randoms << rand(n+1)
        return randoms.to_a if randoms.size >= n
    end
end

def quicksort(list)
	return list if list.size <= 1
	pivot = list.shift
	left = []
	right = []
	list.each do |elem|
		if elem < pivot
			left << elem
		else
			right << elem
		end
	end
	return (quicksort(left)<<pivot)+quicksort(right)
end

#=begin
A = rand_arr(1000000) #se excluye del tiempo inicial para que solamente el algoritmo de ordenamiento sea el involucrado.
T1 = Time.now
sorted = quicksort(A)
T2 = Time.now
delta = T2-T1
puts(delta)
#=end