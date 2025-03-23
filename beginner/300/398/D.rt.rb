# 焚き火を動かす、という発想

N, R, C = gets.split.map(&:to_i)
S = gets.chomp

r, c = 0, 0 # 焚き火の位置を保存する
smokes = Set.new
smokes.add([r, c])
ans = []

S.each_char do |s|
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

  smokes.add([r,c])
  tr = r + R
  tc = c + C

  smokes.include?([tr, tc]) ?
    ans << 1 :
    ans << 0
end

puts ans.join
