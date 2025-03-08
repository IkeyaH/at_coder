N, T = gets.split.map(&:to_i)
g = gets.split.map(&:to_i)

hh = {}
wh = {}
xcs = 0
xca = 0

ans = 0

for i in 0...T do
  ta = g[i]
  h, w = 0,0
  if ta % N == 0
    w = N
    h = ta / N
  else
    w = ta % N
    h = (ta / N) + 1
  end
  # pp [ta, h, w]

  if h == w
    xcs += 1
    if xcs == N
      ans = i + 1
      break
    end
    if N.odd? && h == (N / 2) + 1
      xca += 1
      if xca == N
        ans = i + 1
        break
      end
    end
  elsif h + w == N + 1
    xca += 1
    if xca == N
      ans = i + 1
      break
    end
  end

  if hh.key?(h)
    hh[h] << w
    if hh[h].length == N
      ans = i + 1
      break
    end
  else
    hh[h] = [w]
  end

  if wh.key?(w)
    wh[w] << h
    if wh[w].length == N
      ans = i + 1
      break
    end
  else
    wh[w] = [h]
  end
end

# pp hh
# pp wh
# pp xcs
# pp xca

puts ans != 0 ? ans : '-1'
