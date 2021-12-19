# put comments by using #
print 'Enter your name: '
username = gets.chomp
puts username

number = [1, 2, 3, 4, 5]
number.each do |num|
  print num
end

for index in 0..5
  puts index
end

6.times do |num|
  p num
end

# Reading files
File.open('test.txt', 'r') do |file|
  # puts file.read.include? 'Hello'
  # puts file.readline
  # puts file.readchar # this is selecting charater form 2nd line because 1st line already read by above statment
end

# Writing in file
File.open('test.txt', 'a') do |file|
  file.write('This append from file')
end

# exception handling
begin
  # num = 10 / 0
  number['afd']
rescue ZeroDivisionError
  puts 'Div by 0'
rescue
  puts 'Exception caught'
end
