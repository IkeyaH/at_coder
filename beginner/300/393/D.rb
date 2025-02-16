# TLE
N = gets.to_i
s_a = gets.chomp.split('')

ind = []

s_a.each_with_index do |s, i|
  ind << i if s == '1'
end

ans = Float::INFINITY

ind.each_with_index do |a, i|
  tmp_ans = 0
  ind.each_with_index do |b, j|
    next if i == j
    if i < j
      tmp_ans += b - a - 1 - (j - i - 1)
    else
      tmp_ans += a - b - 1 - (i - j - 1)
    end
  end
  ans = [ans, tmp_ans].min
end

puts ans
