N = gets.to_i
arr = gets.split.map(&:to_i)

la = []
sm = []

1.upto(N-2) do |i|
  la << i if arr[i-1] < arr[i] && arr[i] > arr[i+1]
  sm << i if arr[i-1] > arr[i] && arr[i] < arr[i+1]
end


N.times do |i|
  
end