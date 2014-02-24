require 'set'

def rand_arr(n)
    randoms = Set.new
    loop do
        randoms << rand(n+1)
        return randoms.to_a if randoms.size >= n
    end
end

def selectionsort(list)
	n = list.size
	return list if n <= 1
	0.upto(n-1) do |i|
		min = i
		i.upto(n-1) do |j|
			min = j if list[j] < list[min]
		end
		list[i],list[min] = list[min],list[i]
	end
	return list
end

#=begin
A = rand_arr(1000000) #se excluye del tiempo inicial para que solamente el algoritmo de ordenamiento sea el involucrado.
T1 = Time.now
sorted = selectionsort(A)
T2 = Time.now
delta = T2-T1
puts(delta)
#=end