N, M, Q = gets.split.map(&:to_i)

can_view = Array.new(N+1) { Set.new }
all_ok_user = Set.new

ans = []
Q.times do
  q = gets.split.map(&:to_i)
  k = q[0]
  user = q[1]

  case k
  when 1
    page = q[2]
    can_view[user] << page
  when 2
    all_ok_user << user
  when 3
    if all_ok_user.include?(user) || can_view[user].include?(q[2])
      ans << 'Yes'
    else
      ans << 'No'
    end
  end
end

puts ans
