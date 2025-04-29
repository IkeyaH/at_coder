N = gets.to_i

def calc(h, n)
  return 0 if n < 2
  return h[n] if h.key?(n)
  h[n] = n + calc(h, (n+1)/2) + calc(h, n/2)
end

ha = {}
puts calc(ha, N)
