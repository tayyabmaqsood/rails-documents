puts Symbol.object_id
puts Symbol.object_id
puts 'string'.object_id
puts 'string'.object_id

var = :ars
puts var

def control_move
  puts '1123'
end

puts Symbol.all_symbols.find_index(:control_move)
