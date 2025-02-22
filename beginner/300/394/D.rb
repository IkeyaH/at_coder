S = gets.chomp.split('')

lefts = []

ok = true
S.each do |s|
  if s == '(' || s == '[' || s == '<'
    lefts << s
  else
    if lefts[-1] == '(' && s == ')' || lefts[-1] == '[' && s == ']' || lefts[-1] == '<' && s == '>'
      lefts.pop
    else
      ok = false
      break
    end
  end
end

if !ok || lefts.size > 0
  puts 'No'
else
  puts 'Yes'
end
