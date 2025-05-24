N = gets.to_i
arr = gets.split.map(&:to_i)

d = []
(N-1).times { |i| (arr[i] < arr[i+1]) ? d << 0 : d << 1 }

Pair = Struct.new(:number, :cnt)
rle = []
d.each do |x|
  if rle.size > 0 && rle[-1].number == x
    rle[-1].cnt += 1
  else
    rle << Pair.new(x, 1)
  end
end

ans = 0

(rle.length).times do |i|
  if rle[i].number == 1
    l, r = 0, 0
    l = rle[i-1].cnt if i > 0
    r = rle[i+1].cnt if i+1 < rle.length

    ans += l * r
  end
end

puts ans
