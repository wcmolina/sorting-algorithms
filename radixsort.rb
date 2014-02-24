require 'set'

def rand_arr(n)
    randoms = Set.new
    loop do
        randoms << rand(n+1)
        return randoms.to_a if randoms.size >= n
    end
end

def radixsort(array)
  temp = Array.new
  result = []
  array.each do |x|
    if temp[x] == nil
      temp[x] = 1
    else
      temp[x] = temp[x] + 1
    end
  end
  temp.each_with_index do |x, i|
    if (x)
      x.times do
        result << i
      end
    end
  end
  return result
end

#=begin
A = rand_arr(1000000) #se excluye del tiempo inicial para que solamente el algoritmo de ordenamiento sea el involucrado.
T1 = Time.now
sorted = radixsort(A)
T2 = Time.now
delta = T2-T1
puts(delta)
#=end