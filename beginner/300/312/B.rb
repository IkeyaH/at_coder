N, M = gets.chomp.split(' ').map(&:to_i)
grid = []
N.times do
  grid << gets.chomp.split('')
end

ALL_DOT = '....'
OVER = '###.'
UNDER = '.###'

result = []

for i in (0..(N - 9)) do
  for j in (0..(M - 9)) do
    o_1 = grid[i].slice(j, 4).join
    o_2 = grid[i + 1].slice(j, 4).join
    o_3 = grid[i + 2].slice(j, 4).join
    o_4 = grid[i + 3].slice(j, 4).join

    u_1 = grid[i + 5].slice(j + 5, 4).join
    u_2 = grid[i + 6].slice(j + 5, 4).join
    u_3 = grid[i + 7].slice(j + 5, 4).join
    u_4 = grid[i + 8].slice(j + 5, 4).join

    if o_4 == ALL_DOT && u_1 == ALL_DOT
      if o_1 == OVER && o_2 == OVER && o_3 == OVER
        if u_2 == UNDER && u_3 == UNDER && u_4 == UNDER
          result << [i + 1 ,j + 1]
        end
      end
    end
  end
end

result.each do |r|
  puts r.join(' ')
end
