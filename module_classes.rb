module Test
  def add(a,b)
    a+b
  end
end
class Number
  include Test
  def message
    'Addin two numbers'
  end
end
puts Number.new.message
