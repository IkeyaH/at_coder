r = gets.to_i

# 再起処理を思い出す
# ハッシュには、その数字がいくらひつようかを保存したい
h = {}

def getv(n, hash)
  return 0 if n < 2
  return hash[n] if hash.key?(n)
  if n.odd?
    n1 = n / 2
    n2 = n / 2 + 1
    a1 = getv(n1, hash)
    a2 = getv(n2, hash)
    hash[n] = n + a1 + a2
    return hash[n]
  else
    n1 = n / 2
    a1 = getv(n1, hash)
    hash[n] = n + a1 * 2
    return hash[n]
  end
end

ans = getv(r, h)

puts ans
