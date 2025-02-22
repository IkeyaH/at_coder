N, Q = gets.split.map(&:to_i)
str = gets.chomp.split('')

twins_si = []

str.each_with_index do |st, i|
  next if i == 0
  now = st
  bef = str[i - 1]

  twins_si << i - 1 if now == bef
end

ans = []

Q.times do
  _start, _goal = gets.split.map(&:to_i)
  if _start == _goal
    ans.push(0)
    next
  end
  start, goal = _start - 1, _goal - 2

  si = twins_si.bsearch_index { |x| x >= start }
  gi = twins_si.bsearch_index { |x| x > goal }
  if gi == nil
    gi = twins_si.size
  end

  ans.push(gi - si)
end

ans.each do |a|
  puts a
end
