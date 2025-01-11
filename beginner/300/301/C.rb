S = gets.chomp
T = gets.chomp

s_hash = Hash.new(0)
t_hash = Hash.new(0)

S.each_char { |s| s_hash[s] += 1 }
T.each_char { |t| t_hash[t] += 1 }

ATCODER = ['a','t','c','o','d','e','r']

ok = true

ATCODER.each do |c|
  m = [s_hash[c], t_hash[c]].max
  if s_hash['@'] < m - s_hash[c] || t_hash['@'] < m - t_hash[c]
    ok = false
    break
  end

  s_hash['@'] = s_hash['@'] - (m - s_hash[c])
  s_hash[c] = m

  t_hash['@'] = t_hash['@'] - (m - t_hash[c])
  t_hash[c] = m
end

if ok == false || s_hash != t_hash
  puts 'No'
else
  puts 'Yes'
end
