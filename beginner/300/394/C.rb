S = gets.chomp.split('')
ans = S.dup

count = 0
start_i = nil


S.each_with_index do |s, i|
  if s == 'W'
    count += 1
    start_i = i if start_i == nil
  else
    if s == 'A'
      if start_i != nil
        tmp = Array.new(i - start_i, 'C')
        ans[(start_i + 1)..i] = tmp
        ans[start_i] = 'A'
        start_i = nil
        count = 0
      else
        start_i = nil
        count = 0
      end
    else
      start_i = nil
      count = 0
    end
  end
end

puts ans.join

