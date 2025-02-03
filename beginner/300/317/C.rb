# https://atcoder.jp/contests/abc317/tasks/abc317_c
# TLE!

N, M = gets.chomp.split(' ').map(&:to_i)

E = Array.new(N + 1) { Array.new(N + 1, 0) }

M.times do
  a, b, c = gets.chomp.split(' ').map(&:to_i)
  E[a][b] = c
  E[b][a] = c
end

@answer = 0
@used = Array.new(N + 1, false)

def dfs(v, s)
  @used[v] = true
  @answer = s if s > @answer

  (1..N).each do |i|
    if !@used[i] && E[v][i] != 0
      dfs(i, s + E[v][i])
    end
  end

  @used[v] = false
end

(1..N).each do |i|
  dfs(i, 0)
end

puts @answer
