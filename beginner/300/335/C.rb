N, Q = gets.split.map(&:to_i)
dire = {
  'R' => [1, 0],
  'L' => [-1, 0],
  'U' => [0, 1],
  'D' => [0, -1]
}

mo = [[1,0]]

ans = []
move_count = 0

(0...Q).each do |i|
  k_s, m_s = gets.chomp.split(' ')
  if k_s == '1'
    next_x = mo[0][0] + dire[m_s][0]
    next_y = mo[0][1] + dire[m_s][1]
    mo.unshift([next_x, next_y])
    move_count += 1
  else
    m_i = m_s.to_i
    pos = m_i - 1 # 出す点
    if mo[pos] != nil
      ans << mo[pos]
    else
      ans << [m_i - move_count, 0]
    end
  end
end

ans.each do |a|
  puts a.join(' ')
end
