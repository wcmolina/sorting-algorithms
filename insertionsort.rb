require 'set'

def rand_arr(n)
    randoms = Set.new
    loop do
        randoms << rand(n+1)
        return randoms.to_a if randoms.size >= n
    end
end

def insertionsort(list)
	n = list.size
	return list if n <= 1
	1.upto(n-1) do |i|
		temp = list[i]
		j = i
		while (j > 0 and list[j-1] > temp)
			list[j],j = list[j-1],j-1
		end
		list[j] = temp
	end
	return list
end

#=begin
A = rand_arr(1000000) #se excluye del tiempo inicial para que solamente el algoritmo de ordenamiento sea el involucrado.
T1 = Time.now
sorted = insertionsort(A)
T2 = Time.now
delta = T2-T1
puts(delta)
#=end
