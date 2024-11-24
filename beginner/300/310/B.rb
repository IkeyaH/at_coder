N, M = gets.chomp.split(' ').map(&:to_i)
goods = []
N.times do
  goods << gets.chomp.split(' ').map(&:to_i)
end

ok = false

for i in 0...N do
  base = goods[i]
  (N - 1 - i).times do |j|
    ano = goods[i + (j + 1)]
    high = nil
    low = nil
    if base[0] > ano[0]
      high = base
      low = ano
    elsif base[0] < ano[0]
      high = ano
      low = base
    end

    count = 0
    if high != nil && low[1] >= high[1]
      low_func = low.slice(2..(low.length - 1))
      high_func = high.slice(2..(high.length - 1))
      high_func.each do |h|
        count += 1 if low_func.include?(h)
      end
      ok = true if count >= high_func.length
    elsif high == nil
      if base[1] == ano[1]
        next
      elsif base[1] > ano[1]
        low_func = base.slice(2..(base.length - 1))
        high_func = ano.slice(2..(ano.length - 1))
        high_func.each do |h|
          count += 1 if low_func.include?(h)
        end
        ok = true if count >= high_func.length
      else
        low_func = ano.slice(2..(ano.length - 1))
        high_func = base.slice(2..(base.length - 1))
        high_func.each do |h|
          count += 1 if low_func.include?(h)
        end
        ok = true if count >= high_func.length
      end
    end
    break if ok == true
  end
  break if ok == true
end

puts ok ? 'Yes' : 'No'
