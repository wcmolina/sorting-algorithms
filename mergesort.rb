require 'set'

def rand_arr(n)
    randoms = Set.new
    loop do
        randoms << rand(n+1)
        return randoms.to_a if randoms.size >= n
    end
end

def mergesort(m)
  return m if m.length <= 1
 
  middle = m.length / 2
  left = m[0,middle]
  right = m[middle..-1]
 
  left = mergesort(left)
  right = mergesort(right)
  merge(left, right)
end
 
def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first <= right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end

#=begin
A = rand_arr(1000000) #se excluye del tiempo inicial para que solamente el algoritmo de ordenamiento sea el involucrado.
T1 = Time.now
sorted = mergesort(A)
T2 = Time.now
delta = T2-T1
puts(delta)
#=end