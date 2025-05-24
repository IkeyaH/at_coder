N, K = gets.split.map(&:to_i)
Medicine = Struct.new(:days, :cnt)
medicines = []
N.times do
  days, cnt = gets.split.map(&:to_i)
  medicines << Medicine.new(days, cnt)
end

sum = 0
medicines.each { |m| sum += m.cnt }
if sum <= K
  puts 1
  exit
end

meds_per_day = Hash.new(0)
medicines.each { |m| meds_per_day[m.days] += m.cnt }

sorted_meds = meds_per_day.sort

ans = 1
sorted_meds.each do |m|
  sum -= m[1]
  if sum <= K
    ans = m[0] + 1
    break
  end
end

puts ans
