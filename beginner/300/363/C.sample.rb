# TODO回答欄から拾ってきた
$memo = {}
def mirror?(s, k)
  l = s.size - k; r = s.size - 1
  while l < r
    return false if s[l] != s[r]
    l += 1
    r -= 1
  end
  return true
end
def dfs(seq)
  return 0 if seq.size >= K && mirror?(seq, K)
  return 1 if seq.size == N
  sum = 0
  i = S.size # 文字の種類の数
  while (i -= 1) >= 0
    next if S[i] == 0
    S[i] -= 1
    sum += dfs(seq << i)
    seq.pop
    S[i] += 1
  end
  return sum
end

N, K = gets.split.map(&:to_i)
t = {}
A = gets.chomp.bytes.map{|b| t[b] ||= t.size } # ここは、同じ文字ごと同じ数字になるよう保存している + indexでアクセスできるような形。
pp A
pp t
S = Array.new(t.size, 0) # 重複しない文字数分の配列
A.each{|c| S[c] += 1 } # 文字数をカウント
pp S
puts dfs([])
