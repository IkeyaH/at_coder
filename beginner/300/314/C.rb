# https://atcoder.jp/contests/abc314
# ハッシュで同じ色の文字のindex番号を保存する

N, M = gets.chomp.split(' ').map(&:to_i)
strs = gets.chomp.split('')

hash = {}
gets.chomp.split(' ').map.with_index{ |c, i| hash.key?(c.to_i) ? hash[c.to_i] = hash[c.to_i].push(i) : hash[c.to_i] = [i] }

result_arr = Array.new(N, nil)

hash.each do |ha|
  targets = ha[1]
  len = targets.length
  targets.each_with_index do |t, i|
    if i == len - 1
      result_arr[targets[0]] = strs[t]
    else
      result_arr[targets[i + 1]] = strs[t]
    end
  end
end

puts result_arr.join
