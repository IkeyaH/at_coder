# bit苦手！
# popcount（2新数にした際、1がいつくあるかカウントする）
def popcount_kernighan(num)
  count = 0
  while num > 0
    num &= (num - 1)
    count += 1
  end
  count
end

N, M = gets.split.map(&:to_i)
shop = []
N.times { shop << gets.chomp }

ans = N
(0...(1 << N)).each do |bit|
  ok = true
  M.times do |i| # 味ごと、買えるかループ
    can = false # その味を買えたか？を表す
    N.times do |j| # 店ごと見る
      if (bit>>j&1 == 1)
        can = true if shop[j][i] == 'o'
      end
    end
    ok = false if !can # どれか一つでも買えない味があれば、その店の組み合わせはfalse
  end
  ans = [ans, popcount_kernighan(bit)].min if ok
end

puts ans

# a = 1 << 10
# b = 123
# c = 123 << 10
# d = 123 >> 4

# pp a.to_s(2)
# pp b.to_s(2)
# pp c.to_s(2)
# pp d.to_s(2)
