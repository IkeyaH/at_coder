N, M, Q = gets.split.map(&:to_i)

all = Array.new(N+1, false)
uwp = {}
ans = []
Q.times do |i|
  query = gets.split.map(&:to_i)
  k = query[0]
  if k == 1
    x, y = query[1], query[2]
    if uwp.key?(x)
      uwp[x].add(y)
    else
      uwp[x] = Set.new([y])
    end
  elsif k == 2
    x = query[1]
    all[x] = true
  else
    x, y = query[1], query[2]
    if all[x]
      ans << 'Yes'
    elsif uwp.key?(x) && uwp[x].include?(y)
      ans << 'Yes'
    else
      ans << 'No'
    end
  end
end

puts ans

