require 'set'

def rand_arr(n)
    randoms = Set.new
    loop do
        randoms << rand(n+1)
        return randoms.to_a if randoms.size >= n
    end
end


file = File.open('Arrays.txt','a')
file.write('n=10
'+rand_arr(10).to_s+'

n=100
'+rand_arr(100).to_s+'

n=1000
'+rand_arr(1000).to_s)
file.close