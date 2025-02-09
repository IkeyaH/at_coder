gets.chomp.split.map(&:to_i)
gets.chomp.split.map(&:to_i).tally
Hash.new { |hash, key| hash[key] = [] }
