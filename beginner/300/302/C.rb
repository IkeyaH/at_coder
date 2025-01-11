# https://atcoder.jp/contests/abc302/tasks/abc302_c

N, M = gets.chomp.split(' ').map(&:to_i)

strs = []

N.times do
  strs << gets.chomp
end

perm_strs = strs.permutation.to_a

ok = false

perm_strs.each do |perm_str|
  count = 0
  perm_str.each_with_index do |per, i|
    if i == N - 1 # 最後は判定しない
      next
    end

    per_arr = per.split('')
    n_per = perm_str[i + 1]
    diff_count = 0
    per_arr.each_with_index do |p, j|
      if p != n_per[j]
        diff_count += 1
      end
    end

    if diff_count == 1
      count += 1
    else
      break
    end
  end
  if count == N - 1
    ok = true
  end
end

puts ok == true ? 'Yes' : 'No'
