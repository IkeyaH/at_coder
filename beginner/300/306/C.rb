# https://atcoder.jp/contests/abc306/tasks/abc306_c

N = gets.to_i
nums = gets.chomp.split(' ').map(&:to_i)

arrival_times = Array.new(N, -1)
results = []

nums.each_with_index do |num, i|
  if arrival_times[num - 1] == -1
    arrival_times[num - 1] = 1
  elsif arrival_times[num - 1] == 1
    arrival_times[num - 1] = 2
    results << num
  end
end

puts results.join(' ')
