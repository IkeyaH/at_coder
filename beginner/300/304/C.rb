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

n, d = gets.chomp.split(' ').map(&:to_i)
points = n.times.map { gets.split(' ').map(&:to_i) }

uf = UnionFind.new(n)

for i in 0...n do
  for j in (i + 1)...n do
    dx = points[i][0] - points[j][0]
    dy = points[i][1] - points[j][1]
    distance = dx**2 + dy**2

    if distance <= d**2
      uf.unite(i, j)
    end
  end
end

n.times do |i|
  puts uf.same?(0, i) ? 'Yes' : 'No'
end
