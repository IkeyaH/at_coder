# Union-Find
class UnionFind
  attr_reader :par, :siz

  # 初期化
  def initialize(n)
    # 各要素の親ノードを保持する
    @par = Array.new(n, -1)
    # グループのサイズを保持する
    @siz = Array.new(n, 1)
  end

  # 根を求める
  def root(x)
    if par[x] == -1
      return x
    else
      # 経路圧縮のため、rootを再起的に呼び出し、-1になるまで行う
      return par[x] = root(par[x])
    end
  end

  # x, y が同じグループに属するかどうか（根が一致するかどうか）
  def same?(x, y)
    return root(x) == root(y)
  end

  # x を含むグループと y を含むグループとを併合
  def unite(x, y)
    # それぞれの根を取得
    x = root(x)
    y = root(y)

    # 同じグループであれば早期リターン
    return false if x == y

    # y 側のサイズが小さくなるようにする
    x, y = y, x if siz[x] < siz[y]

    # y を x　の子とする
    par[y] = x
    siz[x] += siz[y]
    return true
  end

  # グループのサイズを返す
  def size(x)
    return siz[root(x)]
  end
end

H, W = gets.split.map(&:to_i)
grids = Array.new(H) { gets.chomp.split('') }

# それぞれのマス目を一つの数字で持ちたい -> i * w + j
n = H*W
uf = UnionFind.new(n)

ans = 0
for i in 0...H do
  for j in 0...W do
    next if grids[i][j] != '#'
    ans += 1
    for di in -1..1 do
      for dj in -1..1 do
        ni, nj = i + di, j + dj
        next if ni < 0 || ni >= H || nj < 0 || nj >= W
        next if grids[ni][nj] != '#'
        next if i == ni && j == nj

        v = i*W+j
        u = ni*W+nj
        next if uf.same?(v, u)
        uf.unite(v, u)
        ans -= 1
      end
    end
  end
end


# for i in 0...H do
#   for j in 0...W do
#     next if grids[i][j] != '#'
#     v = i*W+j
#     ans += 1  if uf.root(v) == v
#   end
# end

puts ans
