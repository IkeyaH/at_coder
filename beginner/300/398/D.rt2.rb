N, R, C = gets.split.map(&:to_i)
S = gets.chomp

smokes = Set.new
smokes.add([0,0])
r = 0
c = 0

ans = []
N.times do |i|
  dir = S[i]
  case dir
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
  smokes.include?([r+R, c+C]) ? ans << 1 : ans << 0
end

puts ans.join
