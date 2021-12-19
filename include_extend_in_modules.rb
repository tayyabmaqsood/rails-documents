module Foo
  def module_method
    puts "Module Method invoked"
  end

  def another_method
    p 'Another method'
  end

  def self.table()
    p 'class method----------'
  end
end

class Bar
  include Foo
end

# include methode
Bar.new.module_method

# extending the objects
bar=Bar.new
bar.extend Foo
#bar.table
bar.another_method
bar.module_method


#-------------------------------------------
module Foo
  module ClassMethods
    def guitar
      "gently weeps"
    end
  end
end

class Bar
  include Foo
  self.extend ClassMethods
end

puts Bar.guitar

#--------------------------------------------------
module Foo
  
  module ClassMethods
    def guitar
      "gently weeps"
    end
  end

  def self.included(base)
    base.extend ClassMethods
  end

end

class Bar
  include Foo
end

puts Bar.guitar
