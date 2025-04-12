N = gets.to_i

ans = 0
st = false # true = login
N.times do
  s = gets.chomp
  if s == "login"
    st = true
  elsif s == "logout"
    st = false
  elsif s == "private" && !st
    ans += 1
  end
end

puts ans
