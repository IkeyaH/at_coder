place = {
  "A" => 0,
  "B" => 1,
  "C" => 2,
  "D" => 3,
  "E" => 4,
  "F" => 5,
  "G" => 6,
}

dis = [3,1,4,1,5,9]

input = gets.chomp.split(' ')
input.sort!

arr = dis.slice((place[input[0]])...place[input[1]])
puts arr.sum
