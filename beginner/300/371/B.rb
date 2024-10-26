kodate, children_num = gets.chomp.split(' ').map(&:to_i)

children_arr = []

children_num.times do
  children_arr << gets.chomp.split(' ')
end

children_hash = {}
result = []

children_arr.each do |ca|
  if children_hash.key?(ca[0])
    if children_hash[ca[0]] == false && ca[1] == 'M'
      result << 'Yes'
      children_hash[ca[0]] = true
    else
      result << 'No'
    end
  else
    if ca[1] == 'M'
      result << 'Yes'
      children_hash[ca[0]] = true
    else
      result << 'No'
      children_hash[ca[0]] = false
    end
  end
end

puts result
