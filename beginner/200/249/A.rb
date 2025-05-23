a,b,c,d,e,f,x = gets.split.map(&:to_i)

def calc(a,b,c,x)
  tot = 0
  one_c = a+c
  tot += b*a * (x/(one_c))
  amari = x % (one_c)
  if amari >= a
    tot += a*b
  else
    tot += b*amari
  end
  tot
end

tak = calc(a,b,c,x)
aok = calc(d,e,f,x)

if tak == aok
  puts 'Draw'
elsif tak > aok
  puts 'Takahashi'
else
  puts 'Aoki'
end
