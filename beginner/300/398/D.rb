N, R, C = gets.split.map(&:to_i)
strs = gets.chomp


smokes = Set.new
smokes.add([0,0])
r, c = 0, 0
ans = []

strs.each_char do |s|
  case s
  when 'N'
    r += 1
  when 'S'
    r -= 1
  when 'W'
    c += 1
  when 'E'
    c -= 1
  end

  smokes.add([r, c])
  tr = r + R
  tc = c + C
  if smokes.include?([tr, tc])
    ans << 1
  else
    ans << 0
  end
end

puts ans.join
