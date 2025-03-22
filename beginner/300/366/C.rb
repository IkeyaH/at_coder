Q = gets.to_i

h = {}
kinds = 0

Q.times do
  q = gets.chomp.split(' ').map(&:to_i)
  if q[0] == 3
    puts kinds
  elsif q[0] == 1
    if h.key?(q[1])
      h[q[1]] += 1
    else
      h[q[1]] = 1
      kinds += 1
    end
  else
    if h[q[1]] == 1
      h.delete(q[1])
      kinds -= 1
    else
      h[q[1]] -= 1
    end
  end
end
