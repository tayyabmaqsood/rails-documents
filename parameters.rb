# type of require parameters

def function(num)
  puts num
end
function(123)
# function # if args not provided throw an exception
# function (123, 1234) # calling it by more than one args also throw the error

# type of default parameters
def function_2(value = 1)
  puts value
end
function_2(5)

def function_3(*values)
  puts values
end
function_3('hello', 123, 'World')
