N, M = gets.split.map(&:to_i)
arr = Array.new(N) { Set.new }

M.times do
  _a, _b = gets.split.map(&:to_i)
  a, b = _a-1, _b-1
  arr[a].add(b)
  arr[b].add(a)
end

N.times do |i|
  if arr[i].length != 2
    puts 'No'
    exit
  end
end

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

uf = UnionFind.new(N)

N.times do |i|
  x, y = arr[i].to_a
  uf.unite(i,x)
  uf.unite(i,y)
end

if uf.size(0) == N
  puts 'Yes'
else
  puts 'No'
end
