A, B, C, D, E = gets.chomp.split(' ').map(&:to_i)

users = [
  'ABCDE','BCDE','ACDE','ABDE','ABCE','ABCD','CDE','BDE','ADE','BCE','ACE','BCD','ABE','ACD','ABD','ABC','DE','CE','BE','CD','AE','BD','AD','BC','AC','AB','E','D','C','B','A'
]

results = []

users.each do |user|
  u_a = user.split('')
  result = 0
  u_a.each do |u|
    result += A if u == 'A'
    result += B if u == 'B'
    result += C if u == 'C'
    result += D if u == 'D'
    result += E if u == 'E'
  end
  results << [user, result]
end

sorted_arr = results.sort_by do |name, score|
  [-score, name]
end

sorted_arr.each do |s|
  puts s[0]
end
