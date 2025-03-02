# TLE。TLEになるのはわかるけど、どうすれば良いかわからない問題。

N, Q = gets.split.map(&:to_i)
ind = Array.new(N+1) {|i| i}
hash = {}
for i in 1..N do
  hash[i] = [i]
end

ans = []
Q.times do
  q = gets.split.map(&:to_i)
  if q[0] == 3
    ans << ind[q[1]]
  elsif q[0] == 1
    a, b = q[1], q[2]
    now_su = ind[a]
    hash[now_su].delete(a)
    hash[b].push(a)
    ind[a] = b
  else
    a, b = q[1], q[2]
    now_a_ind = hash[a]
    now_b_ind = hash[b]
    now_a_ind.each do |ai|
      ind[ai] = b
    end
    now_b_ind.each do |bi|
      ind[bi] = a
    end

    hash[a] = now_b_ind
    hash[b] = now_a_ind
  end
end

puts ans
