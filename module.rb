# frozen_string_literal:true

module Tools
  def say_hi(name)
    puts "hello #{name}"
  end

  def say_bye(name)
    puts "bye #{name}"
  end
end

# we can use include to use module fucntionalities
# we can also access module into another file
# so i am going to comment the below code
# include Tools
# Tools.say_hi('Tayyab')
