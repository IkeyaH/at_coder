gets.chomp.split(' ').map(&:to_i)
Hash.new { |hash, key| hash[key] = [] }
