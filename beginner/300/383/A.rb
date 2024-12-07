N = gets.to_i
ts = []
vs = []

N.times do
  t, v = gets.chomp.split(' ').map(&:to_i)
  ts << t
  vs << v
end

bef_w = 0

for i in 0...N do
  if i == 0
    bef_w = vs[0]
  else
    now_t = ts[i]
    now_v = vs[i]

    # 前回からの経過時間
    time = now_t - ts[i - 1]
    # 前回から時間を加味し、残っていた水の量
    water = [(bef_w - time),0].max
    bef_w = water + now_v
  end
end

puts bef_w
