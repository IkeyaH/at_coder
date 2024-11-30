# 後の人が食べられる可能性のあるもの -> それまでの人に食べれられていないもの

N, M = gets.chomp.split(' ').map(&:to_i)
a_arr = gets.chomp.split(' ').map(&:to_i)
b_arr = gets.chomp.split(' ').map(&:to_i)
max_b = b_arr.max

r = max_b

eat_person_id = Array.new(max_b + 1, -1)

N.times do |i|
  person = i + 1
  if a_arr[i] <= r
    (a_arr[i]..r).each do |j|
      eat_person_id[j] = person
    end
    r = a_arr[i] - 1
  end
end

b_arr.each do |b|
  puts eat_person_id[b]
end
