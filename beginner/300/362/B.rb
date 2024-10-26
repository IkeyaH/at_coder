xa, ya = gets.chomp.split(' ').map(&:to_i) # A
xb, yb = gets.chomp.split(' ').map(&:to_i) # B
xc, yc = gets.chomp.split(' ').map(&:to_i) # C

A_B_2 = (xa - xb) ** 2 + (ya - yb) ** 2
A_C_2 = (xa - xc) ** 2 + (ya - yc) ** 2
B_C_2 = (xb - xc) ** 2 + (yb - yc) ** 2

arr = [A_B_2, A_C_2, B_C_2].sort

if arr[0] + arr[1] == arr[2]
  puts 'Yes'
else
  puts 'No'
end
