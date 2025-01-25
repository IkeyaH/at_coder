# 一個WAが出るみたい
# うーん、もうちょっと問題文を充実させて欲しい感は否めない。わからなくはないけど。
# todo: テストケース追加時見直し
N, K = gets.chomp.split(' ').map(&:to_i)
med_arr = []
total = 0

N.times do
  a,b = gets.chomp.split(' ').map(&:to_i)
  total += b
  med_arr << [a, b]
end

sorted_med = med_arr.sort { |a, b| a <=> b }
dec_total = total
result = 1

count = 0
sorted_med.each do |s|
  drink_day = s[0]
  meds_count = s[1]

  if drink_day == 1 && total <= K
    result = 1
    break
  else
    dec_total -= meds_count
    if dec_total <= K
      result = drink_day + 1
      break
    end
  end
  count += 1
  if count == N
    result = sorted_med[-1][0] + 1
  end
end

puts result
