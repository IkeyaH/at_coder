# https://atcoder.jp/contests/abc303/tasks/abc303_c

N, M, H, K = gets.chomp.split(' ').map(&:to_i)
S = gets.chomp.split('')

recovery_items = {}

M.times do
  item_place = gets.chomp.split(' ').map(&:to_i)
  recovery_items[item_place] = true
end


def get_next_place(nowX, nowY, dir)
  directions = {
    'R' => [1, 0],
    'L' => [-1, 0],
    'U' => [0, 1],
    'D' => [0, -1]
  }

  arr = directions[dir]
  return [nowX += arr[0], nowY += arr[1]]
end

now_x = 0
now_y = 0
hp = H
ok = true

S.each do |s|
  n_x, n_y = get_next_place(now_x, now_y, s)
  hp -= 1
  if hp < 0
    ok = false
    break
  end
  if recovery_items[[n_x, n_y]] == true && hp < K
    hp = K
    recovery_items[[n_x, n_y]] = false
  end
  now_x = n_x
  now_y = n_y
end

puts ok == true ? 'Yes' : 'No'
