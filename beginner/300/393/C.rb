N, M = gets.split.map(&:to_i)

ans = 0
hash = {}

M.times do
  _a, _b = gets.split.map(&:to_i)
  big = [_a, _b].max
  sml = [_a, _b].min

  if big == sml
    ans += 1
  else
    if hash.key?([big, sml])
      ans += 1
    else
      hash[[big, sml]] = true
    end
  end
end

puts ans
