s1,s2 = gets.chomp.split(' ')

sick = 'sick'
fine = 'fine'

if s1 == sick && s2 == sick
  puts 1
end

if s1 == sick && s2 == fine
  puts 2
end

if s1 == fine && s2 == sick
  puts 3
end

if s1 == fine && s2 == fine
  puts 4
end
