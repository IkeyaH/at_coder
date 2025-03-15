N = gets.to_i
la, ra = Array.new(N), Array.new(N)
sumL = 0
sumR = 0

N.times do |i|
  l, r = gets.split.map(&:to_i)
  la[i] = l
  ra[i] = r
  sumL += l
  sumR += r
end

if sumL > 0 || sumR < 0
  puts 'No'
else
  ans = la
  rem = -sumL
  N.times do |i|
    canAdd = ra[i] - la[i]

    if canAdd < rem
      rem -= canAdd
      ans[i] = ra[i]
    else
      ans[i] += rem
      puts 'Yes'
      puts ans.join(' ')
      break
    end
  end
end
