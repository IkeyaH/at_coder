n = gets.to_i
a_arr = gets.split.map(&:to_i)

m = gets.to_i
b_arr = gets.split.map(&:to_i)

l = gets.to_i
c_arr = gets.split.map(&:to_i)

q = gets.to_i
x_arr = gets.split.map(&:to_i)

n_h = {}

for i in 0...n do
  for j in 0...m do
    for k in 0...l do
      s = a_arr[i] + b_arr[j] + c_arr[k]
      n_h[s] = true
    end
  end
end

ans = Array.new(q, 'No')

x_arr.each_with_index do |x,i|
  ans[i] = 'Yes' if n_h.key?(x)
end

puts ans
