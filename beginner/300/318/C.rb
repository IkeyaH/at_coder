# https://atcoder.jp/contests/abc318/tasks/abc318_c

N, D, P = gets.split.map(&:to_i)
f_arr = gets.split.map(&:to_i).sort

count = 0
tmp_sum = 0
discount = 0
remain = 0
tickets = 0

for i in 1..N do
  count += 1
  if remain > 0
    discount += f_arr[-i]
    remain -= 1
    tmp_sum = 0
    count = 0
    next
  end

  tmp_sum += f_arr[-i]

  if count < D && tmp_sum >= P
    remain = D - count
    discount += tmp_sum
    tickets += 1
    next
  end

  if count == D
    if tmp_sum > P
      discount += tmp_sum
      tmp_sum = 0
      count = 0
      tickets += 1
    else
      break
    end
  end
end
puts f_arr.sum - discount +  P * tickets
