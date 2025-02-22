grids = Array.new(9) { gets.split.map(&:to_i) }

def include_all?(arr)
  9.times do |i|
    return false if !arr.include?(i + 1)
  end
  true
end

flag = true
for i in 0..8 do
  ta = grids[i]
  flag = false if !include_all?(ta)
end


for i in 0..8 do
  ta = []
  for j in 0..8 do
    ta << grids[j][i]
  end
  flag = false if !include_all?(ta)
end

po = [
  [2,2],[2,5],[2,8],
  [5,2],[5,5],[5,8],
  [8,2],[8,5],[8,8]
]

po.each do |p|
  ta = []
  bh = p[0] - 1
  bw = p[1] - 1
  for i in -1..1 do
    for j in -1..1 do
      ta << grids[bh + i][bw + j]
    end
  end
  flag = false if !include_all?(ta)
end

puts flag ? 'Yes' : 'No'
