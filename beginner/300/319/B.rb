N = gets.to_i
div = []
res_arr = []


for i in 1..9 do
  div << i if N % i == 0
end

for i in 0..N do
  tmp = []
  div.each do |d|
    tmp << d if i % (N / d) == 0
  end
  res_arr << tmp
end

arr = []

res_arr.each do |r|
  if r.length != 0
    arr << r.min.to_s
  else
    arr << '-'
  end
end

puts arr.join
