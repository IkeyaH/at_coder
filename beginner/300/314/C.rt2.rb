N, M = gets.split.map(&:to_i)
S = gets.chomp.split('')
c_arr = gets.split.map(&:to_i)

c_hash = {}
c_arr.each_with_index do |c, i|
  if c_hash.key?(c)
    c_hash[c].push(i)
  else
    c_hash[c] = [i]
  end
end

ans_arr = Array.new(N, nil)

c_hash.each do |ch|
  ch[1].each_with_index do |c, i|
    if i == ch[1].length - 1
      ind = ch[1][0]
      ans_arr[ind] = S[c]
    else
      ind = ch[1][i + 1]
      ans_arr[ind] = S[c]
    end
  end
end

puts ans_arr.join
