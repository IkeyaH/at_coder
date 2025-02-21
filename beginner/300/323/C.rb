# https://atcoder.jp/contests/abc323/tasks/abc323_c

N, M = gets.split.map(&:to_i)
points = gets.split.map(&:to_i)
pwi = []
points.each_with_index do |p, i|
  pwi << [p, i]
end

sorted_pwi = pwi.sort{ |a, b| b <=> a }
max = 0
p_arr = Array.new(N, 0)
done = Array.new(N, nil)

N.times do |i|
  arr = gets.chomp.split('')
  done[i] = arr

  po = i + 1
  arr.each_with_index do |a, i|
    po += points[i] if a == 'o'
  end

  p_arr[i] = po
  max = [max, po].max
end

ans = Array.new(N, 0)

for i in 0...N do
  now = p_arr[i]
  next if now >= max
  # maxと比較し、足りない分を足していく。
  # その際、自身がすでに解いた問題は省く
  count = 0
  dones = done[i]
  sorted_pwi.each do |sr|
    num = sr[1]
    add_points = sr[0]
    if dones[num] == 'x'
      now += add_points
      count += 1
    end
    break if now >= max
  end
  ans[i] = count
end

puts ans
