# https://atcoder.jp/contests/abc377/tasks/abc377_c

N, M = gets.chomp.split(' ').map(&:to_i)

stay_map = []
M.times do
  stay_map << gets.chomp.split(' ').map(&:to_i)
end

false_area = {}

def get_can_next(now, false_ar = {})
  ne_area = []
  (-2..2).each do |i|
    (-2..2).each do |j|
      if i.abs + j.abs == 3
        ne = [now[0] + i, now[1] + j]
        if (ne[0] >= 0 && ne[0] < N) && (ne[1] >= 0 && ne[1] < N)
          false_ar[ne] = false
        end
      end
    end
  end
  return false_ar
end

stay_map.each do |s|
  f_area = get_can_next([s[0] - 1, s[1] - 1])
  false_area.merge!(f_area)
  false_area[[s[0] - 1, s[1] - 1]] = false
end

puts N * N - (false_area.count)
