# 最初のループで、一つ目のカップを特定して仕舞えば良い。
N = gets.to_i
fs = 0
ff = nil

hash = {}

N.times do
  f, s = gets.split.map(&:to_i)
  if hash.key?(f)
    hash[f] << s
  else
    hash[f] = [s]
  end
  if s > fs
    fs = s
    ff = f
  end
end

ss = 0

hash.each do |ha|
  if ha[0] == ff
    if ha[1].length > 1
      m = ha[1].sort[-1]
      ss = [ss, ha[1].sort[-2] / 2].max
    end
  else
    m = ha[1].sort[-1]
    ss = [ss, m].max
  end
end

puts ss + fs
