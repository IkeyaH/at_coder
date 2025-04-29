N = gets.to_i

def calc(n, h)
  return 0 if n < 2
  return h[n] if h.key?(n)
  h[n] = n + calc((n+1)/2, h) + calc(n/2, h)
end

ha = {}
puts calc(N, ha)
