s_arr = gets.chomp.split('')
len = s_arr.length
ans = 0
MOD = 998244353
now = 'start'

cnt = 0

s_arr.each_with_index do |s, i|
  if now != s
    cnt += 1
    now = s
  else
    ans = ans + (cnt * (cnt+1) / 2)
    cnt = 1
  end

  if (i+1) == len
    ans = ans + (cnt * (cnt+1) / 2)
  end
end

puts ans % MOD
