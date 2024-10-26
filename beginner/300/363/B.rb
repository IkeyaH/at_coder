
person_num, target_hair_length, min_person = gets.chomp.split(' ').map(&:to_i)
hair_length_arr = gets.chomp.split(' ').map(&:to_i)

now = hair_length_arr.count { |h| h >= target_hair_length }

if now >= min_person
  puts 0
else
  hair_length_arr.sort!.reverse!
  result = target_hair_length - hair_length_arr[min_person - 1]
  puts result
end
