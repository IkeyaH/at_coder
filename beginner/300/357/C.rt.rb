# 25分！うーん。もう一回。
# 最初よりよくはなってきている

c = Array.new(7) { Array.new }
c[0] = ["#"]

N = gets.to_i

1.upto(6).each do |i|
  l = 3**i
  bl = 3**(i-1)

  l.times do |n|
    tr = ''
    l.times do |m|
      if (n >= bl && n < 2*bl) && (m >= bl && m < 2*bl)
        tr += "."
      else
        bn = n % bl
        bm = m % bl
        tr += c[i-1][bn][bm]
      end
    end
    c[i] << tr
  end
end

c[N].each do |t|
  puts t
end
