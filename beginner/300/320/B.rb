S = gets.chomp.split('')
N = S.length

max = 1

# iは開始位置
for i in 0...N do
  for j in (i...N) do
    text = S.slice(i..j)
    if text.length.even?
      be = text[0..(text.length / 2 - 1)]
      af = text[(text.length / 2)..(text.length - 1)].reverse
      if be == af
        max = text.length if text.length > max
      end
    else
      be = []
      af = []
      if text.length != 1
        be = text[0..(text.length / 2 - 1)]
        af = text[(text.length / 2 + 1)..(text.length - 1)].reverse
        if be == af
          max = text.length if text.length > max
        end
        # length == 1は1なので不要
      end
    end
  end
end

p max
