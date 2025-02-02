# https://atcoder.jp/contests/abc315/tasks/abc315_c

N = gets.to_i
hash = {}
keys = []

N.times do
  f, s = gets.chomp.split(' ').map(&:to_i)
  if hash.key?(f)
    hash[f].push(s)
  else
    hash[f] = [s]
    keys.push(f)
  end
end

hash.length.times do |i|
  hash[keys[i]] = hash[keys[i]].sort
end

first = 0
first_key = nil
second = 0

2.times do |i|
  keys.each do |k|
    if i == 0
      m = hash[k][-1]
      if [first, m].max == m
        first_key = k
        first = [first, m].max
      end
    else
      if k == first_key
        if hash[k].length >= 2
          m = hash[k][-2] / 2
          second = [second, m].max
        end
      else
        m = hash[k][-1]
        second = [second, m].max
      end
    end
  end
end

puts first + second
