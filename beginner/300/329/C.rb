N = gets.to_i
s = gets.chomp

hash = {}
now = ''
count = 0

s.each_char do |char|
  if char == now
    count += 1
  else
    now = char
    count = 1
  end

  if hash.key?(char)
    hash[char] = [hash[char], count].max
  else
    hash[char] = count
  end
end

ans = 0
hash.each_value { |v| ans += v }
puts ans
