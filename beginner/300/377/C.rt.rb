# https://atcoder.jp/contests/abc377/tasks/abc377_c
# !配列のindex番号と問題文の数字の違いに注意！

N, M = gets.chomp.split(' ').map(&:to_i)

porn_map = []

M.times do
  porn_map << gets.chomp.split(' ').map(&:to_i)
end

ng_hash = {}

# nowには配列のindex番号となるように渡す
def get_ng_next(now, ng_h = {})
  next_coor = [[2,1],[-2,1],[2,-1],[-2,-1],[1,2],[1,-2],[-1,2],[-1,-2]]
  next_coor.each do |n|
    ng_next = [now[0] + n[0], now[1] + n[1]]
    if (ng_next[0] >= 0 && ng_next[0] < N) && (ng_next[1] >= 0 && ng_next[1] < N)
      ng_h[ng_next] = false
    end
  end
  return ng_h
end

def toIndex(arr)
  return [arr[0] - 1, arr[1] - 1]
end

porn_map.each do |p|
  hg_h = get_ng_next(toIndex(p))
  ng_hash.merge!(hg_h)
  ng_hash[toIndex(p)] = false
end

puts (N ** 2) - ng_hash.count
