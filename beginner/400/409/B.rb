N = gets.to_i
A = gets.split.map(&:to_i).sort

ans = 0

(N+1).times do |i|
  bi = A.bsearch_index { |x| x >= i }
  break if bi == nil
  if N - bi >= i
    ans = i
  else
    break
  end
end

puts ans
