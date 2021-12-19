# frozen_string_literal:true

def hello
  a = 'World'
  puts a.object_id
end
puts hello
puts hello

name = 'laptop'
name << 'desktop'
puts name
