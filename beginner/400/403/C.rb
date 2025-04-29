N, M, Q = gets.split.map(&:to_i)
ALL = 'all'
auth = Array.new(N+1) { Hash.new }

ans = []
Q.times do
  q = gets.chomp.split(' ')
  user = q[1].to_i
  case q[0]
  when '1'
    page = q[2].to_i
    if auth[user] != ALL
      auth[user][page] = true
    end
  when '2'
    auth[user] = ALL
  when '3'
    page = q[2].to_i
    if auth[user] == ALL || auth[user].key?(page)
      ans << 'Yes'
    else
      ans << 'No'
    end
  end
end

puts ans
