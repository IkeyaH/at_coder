# https://atcoder.jp/contests/abc317/tasks/abc317_c
# TLE!

N, M = gets.chomp.split(' ').map(&:to_i)
E = Array.new(N + 1) { Array.new(N + 1, 0) }
EDGES = Array.new(N + 1) { [] }

M.times do
  a, b, c = gets.chomp.split(' ').map(&:to_i)
  E[a][b] = c
  E[b][a] = c
  EDGES[a] << b
  EDGES[b] << a
end

@answer = 0
@used = Array.new(N + 1, false)

def dfs(v, s)
  @answer = s if s > @answer

  EDGES[v].each do |i|
    if !@used[i]
      @used[i] = true
      dfs(i, s + E[v][i])
      @used[i] = false
    end
  end
end

(1..N).each do |i|
  @used[i] = true
  dfs(i, 0)
  @used[i] = false
end

puts @answer
