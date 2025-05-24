S = gets.chomp.split('')
len = S.length

def r(n)
  return 0 if n == 0
  return 10 - n
end

cnt = 0
S.each_with_index do |s, i|
  cnt += 1
  if i == len-1
    cnt += s.to_i
    break
  end
  sn = s.to_i
  ne = S[i+1].to_i

  if sn >= ne
    cnt += sn - ne
  else
    cnt += r(ne) + sn
  end
end

puts cnt
