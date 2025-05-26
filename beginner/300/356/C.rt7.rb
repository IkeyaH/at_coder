N, M, K = gets.split.map(&:to_i)
r = []
Result = Struct.new(:key_bit, :pass)

def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

M.times do
  tmp = gets.chomp.split
  n = tmp[0].to_i
  keys = tmp[1..n].map(&:to_i)
  is_pass = tmp[-1] == 'o'
  key_bit = 0
  keys.each do |k|
    key_bit |= 1<<(k-1)
  end
  r << Result.new(key_bit, is_pass)
end

cnt = 0

(1<<N).times do |bit|
  ok = true
  r.each do |re|
    ok = false if (popcount_kernighan(bit&re.key_bit) >= K) != re.pass
  end
  cnt += 1 if ok
end

puts cnt 
# 矛盾しない
# 本物の鍵がK本以上 かつ 開く
# 本物の鍵がK本未満 かつ かつ開かない
# 両方の結果が同じであれば良い