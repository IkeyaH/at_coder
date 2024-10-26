n = gets.to_i

arr = []

n.times do
  arr << gets.chomp
end

reverse_arr = arr.reverse

max_str = arr.max {|a, b| a.length <=> b.length }
max_len = max_str.length

result_arr = []

# 二重配列をつくり、各単語から１文字ずつ入れていく
# 繰り返す回数は max_len
# もしアクセスできなければ、条件で*か空白を入れる

reverse_arr.each_with_index do |s, i|
  for j in 0..(max_len - 1) do
    # 一度目のみ、二重配列を作成する意図で処理
    if i == 0
      s[j] == nil ? result_arr << ['*'] : result_arr << [s[j]]
    else
      s[j] == nil ? result_arr[j] << '*' : result_arr[j] << s[j]
    end
  end
end

result_arr.each_with_index do |r, i|
  r.reverse.each_with_index do |s, j|
    result_arr[i][-1 * j -1] = '' if s == '*'
    break if s != '*'
  end
end

result_arr.each do |r|
  puts r.join
end

# TODO: 文字列を一旦*で埋めてしまい、単語ごと後ろから消していく方法
# ↑も同じではあるが、より簡単に書けそう
