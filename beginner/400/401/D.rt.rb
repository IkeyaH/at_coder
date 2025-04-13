N, K = gets.split.map(&:to_i)
s = gets.chomp

N.times do |i|
  if s[i] == 'o'
    s[i-1] = '.' if i-1 >= 0
    s[i+1] = '.' if i+1 < N
  end
end

on = s.count('o') # o num
if on == K
  N.times { |i| s[i] = '.' if s[i] == '?' }
  puts s
  exit
end

# oを最大化した時の個数を求める
# こうしなくても良いが、わかりやすいかも
sdup = s.dup
N.times do |i|
  if i == 0
    sdup[i] = 'o' if sdup[i] == '?'
  else
    sdup[i] = 'o' if sdup[i-1] != 'o' && sdup[i] == '?'
  end
end
onm = sdup.count('o') # o num max

# oの最大値がKより大きい場合、確定できないのでsを出力
# 備考：?が奇数個続く場合 -> oの数が確定しない
# -> そこで大きい値を取るか、小さい値を取るか確定しない
# ?が偶数個続く場合 -> 元々確定しない
# よって、oの隣接を.に置き換えたsが答え
if onm > K
  puts s
  exit
end

# 残りは（条件から）onmとKが同数の場合となる
# 奇数個の?連続であれば?.に置き換え、偶数個は?のままにする
hc = 0 # hatena count, 連続する?の数を記録する
hca = [] # 一旦?の開始箇所と個数をまとめておき、最後に置き換えする
N.times do |i|
  if s[i] == '?'
    hc += 1
    hca << [i-hc+1,hc] if i == (N-1)
  else
    hca << [i-hc,hc] if hc > 0
    hc = 0
  end
end

hca.each do |a,b|
  next if b.even?
  b.times do |v|
    if v.even?
      s[a+v] = 'o'
    else
      s[a+v] = '.'
    end
  end
end

puts s
