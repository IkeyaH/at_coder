N, M = gets.split.map(&:to_i)
black = gets.split.map(&:to_i).sort { |a, b| b <=> a }
white = gets.split.map(&:to_i).sort { |a, b| b <=> a }

bms = black.bsearch_index { |x| x < 0 }
wms = white.bsearch_index { |x| x < 0 }

bms = N if bms == nil
wms = M if wms == nil

ans = 0

if bms >= wms
  ans += black[0...bms].sum
  ans += white[0...wms].sum
else
  ans += black[0...bms].sum
  ans += white[0...bms].sum

  r = bms
  while true
    break if r == [N, M].min
    sum = black[r] + white[r]
    if sum > 0
      ans += sum
      r += 1
    else
      break
    end
  end
end

puts ans
