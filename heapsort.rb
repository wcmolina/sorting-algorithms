require 'set'

def rand_arr(n)
    randoms = Set.new
    loop do
        randoms << rand(n+1)
        return randoms.to_a if randoms.size >= n
    end
end

class Array
  def heapsort
    self.dup.heapsort!
  end
 
  def heapsort!
    ((length - 2) / 2).downto(0) {|start| siftdown(start, length - 1)}
    (length - 1).downto(1) do |end_|
      self[end_], self[0] = self[0], self[end_]
      siftdown(0, end_ - 1)
    end
    self
  end
 
  def siftdown(start, end_)
    root = start
    loop do
      child = root * 2 + 1
      break if child > end_
      if child + 1 <= end_ and self[child] < self[child + 1]
        child += 1
      end
      if self[root] < self[child]
        self[root], self[child] = self[child], self[root]
        root = child
      else
        break
      end
    end
  end
end

#=begin
A = rand_arr(1000000) #se excluye del tiempo inicial para que solamente el algoritmo de ordenamiento sea el involucrado.
T1 = Time.now
sorted = A.heapsort
T2 = Time.now
delta = T2-T1
puts(delta)
#=end