N = gets.to_i
sai = []
total = []
N.times do
  s = gets.split.map(&:to_i)
  total << s[0]
  sai << s.drop(1).tally
end

ans = 0
for i in 0...N do
  for j in (i + 1)...N do
    prob = 0
    sai[i].each do |num, count_i|
      if sai[j].key?(num)
        p = (count_i.to_f / total[i]) * (sai[j][num].to_f / total[j])
        prob += p
      end
    end
    ans = [ans, prob].max
  end
end

p ans
